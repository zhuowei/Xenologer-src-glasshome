package com.google.glass.maps;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import android.util.LruCache;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.glass.proto.MapRenderRequest;
import com.google.glass.proto.MapRenderRequest.Builder;
import com.google.glass.proto.MapRenderRequest.Type;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

public class MapHelper
{
  private static final String AUTHORITY = "map";
  public static final String KEY_PAYLOAD = "payload";
  private static final int MAP_CACHE_MAX_BYTES = 4194304;
  private static final ComponentName MAP_RENDERING_SERVICE = new ComponentName("com.google.glass.maps", "com.google.glass.maps.service.MapRenderingService");
  private static final String SCHEME = "glass";
  private static final String TAG = MapHelper.class.getSimpleName();
  private static MapHelper instance;
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      MapHelper.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      MapHelper.this.handleDisconnection();
    }
  };
  private final Object connectionLock = new Object();
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Map<String, MapRendererFuture> futures = Maps.newHashMap();
  private final Messenger incoming = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      MapHelper.this.handleIncomingMessage(paramAnonymousMessage);
    }
  });
  private final LruCache<MapRenderRequest, byte[]> mapCache = new LruCache(4194304)
  {
    protected int sizeOf(MapRenderRequest paramAnonymousMapRenderRequest, byte[] paramAnonymousArrayOfByte)
    {
      return paramAnonymousArrayOfByte.length;
    }
  };
  private Messenger outgoing = null;
  private final Map<String, MapRenderRequest> outstandingRequests = Maps.newHashMap();
  private final Queue<MapRenderRequest> queue = Lists.newLinkedList();
  private final Object requestStateLock = new Object();
  private final AtomicInteger serialNumber = new AtomicInteger(1);

  private MapHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private void cancelMapRequest(String paramString)
  {
    Log.d(TAG, "Cancelling request: " + paramString);
    MapRenderRequest localMapRenderRequest = MapRenderRequest.newBuilder().setId(paramString).setType(MapRenderRequest.Type.CANCEL).build();
    synchronized (this.requestStateLock)
    {
      this.queue.add(localMapRenderRequest);
      this.futures.remove(paramString);
      this.outstandingRequests.remove(paramString);
      return;
    }
  }

  private void connectIfNecessary()
  {
    synchronized (this.connectionLock)
    {
      if (this.connectionState == ConnectionState.DISCONNECTED)
      {
        Log.i(TAG, "Opening connection to MapRenderingService from: " + this.context.getPackageName());
        Intent localIntent = new Intent();
        localIntent.setComponent(MAP_RENDERING_SERVICE);
        if (this.context.bindService(localIntent, this.connection, 1))
          this.connectionState = ConnectionState.CONNECTING;
      }
      else
      {
        return;
      }
      Log.w(TAG, "bindService() failed.");
    }
  }

  private void flushQueue()
  {
    while (true)
    {
      Message localMessage;
      synchronized (this.connectionLock)
      {
        if (this.outgoing == null)
          break label186;
        synchronized (this.requestStateLock)
        {
          Log.d(TAG, "Sending " + this.queue.size() + " requests");
          if (this.queue.isEmpty())
            break;
          MapRenderRequest localMapRenderRequest = (MapRenderRequest)this.queue.peek();
          localMessage = Message.obtain();
          localMessage.getData().putByteArray("payload", localMapRenderRequest.toByteArray());
          localMessage.replyTo = this.incoming;
        }
      }
      try
      {
        this.outgoing.send(localMessage);
        this.queue.remove();
        continue;
        localObject4 = finally;
        throw localObject4;
        localObject2 = finally;
        throw localObject2;
      }
      catch (RemoteException localRemoteException)
      {
        handleDisconnection();
        Log.e(TAG, "RemoteException: " + localRemoteException);
      }
    }
    label186:
  }

  public static MapHelper getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new MapHelper(paramContext.getApplicationContext());
      instance.connectIfNecessary();
      return instance;
    }
    finally
    {
    }
  }

  private String getNextId()
  {
    return this.context.getPackageName() + ":" + Process.myPid() + ":" + this.serialNumber.getAndIncrement();
  }

  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Assert.assertUiThread();
    Log.i(TAG, "Connected to " + paramComponentName.getClassName());
    synchronized (this.connectionLock)
    {
      this.outgoing = new Messenger(paramIBinder);
      this.connectionState = ConnectionState.CONNECTED;
      flushQueue();
      return;
    }
  }

  private void handleDisconnection()
  {
    Assert.assertUiThread();
    synchronized (this.connectionLock)
    {
      this.connectionState = ConnectionState.DISCONNECTED;
      this.outgoing = null;
      synchronized (this.requestStateLock)
      {
        this.queue.clear();
        Iterator localIterator = this.futures.values().iterator();
        if (localIterator.hasNext())
          ((MapRendererFuture)localIterator.next()).setException(new MapRendererException());
      }
    }
    this.futures.clear();
    this.outstandingRequests.clear();
    Log.i(TAG, "Disconnected from MapRenderingService!");
  }

  // ERROR //
  private void handleIncomingMessage(Message paramMessage)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 277	android/os/Message:getData	()Landroid/os/Bundle;
    //   4: ldc 11
    //   6: invokevirtual 383	android/os/Bundle:getByteArray	(Ljava/lang/String;)[B
    //   9: invokestatic 389	com/google/glass/proto/MapRenderResponse:parseFrom	([B)Lcom/google/glass/proto/MapRenderResponse;
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 90	com/google/glass/maps/MapHelper:requestStateLock	Ljava/lang/Object;
    //   18: astore 5
    //   20: aload 5
    //   22: monitorenter
    //   23: aload_0
    //   24: getfield 106	com/google/glass/maps/MapHelper:futures	Ljava/util/Map;
    //   27: aload 4
    //   29: invokevirtual 392	com/google/glass/proto/MapRenderResponse:getId	()Ljava/lang/String;
    //   32: invokeinterface 215 2 0
    //   37: checkcast 367	com/google/glass/maps/MapHelper$MapRendererFuture
    //   40: astore 7
    //   42: aload_0
    //   43: getfield 108	com/google/glass/maps/MapHelper:outstandingRequests	Ljava/util/Map;
    //   46: aload 4
    //   48: invokevirtual 392	com/google/glass/proto/MapRenderResponse:getId	()Ljava/lang/String;
    //   51: invokeinterface 215 2 0
    //   56: checkcast 179	com/google/glass/proto/MapRenderRequest
    //   59: astore 8
    //   61: aload 5
    //   63: monitorexit
    //   64: aload 7
    //   66: ifnull +107 -> 173
    //   69: aload 4
    //   71: invokevirtual 395	com/google/glass/proto/MapRenderResponse:hasImage	()Z
    //   74: ifeq +142 -> 216
    //   77: aload 4
    //   79: invokevirtual 399	com/google/glass/proto/MapRenderResponse:getImage	()Lcom/google/protobuf/ByteString;
    //   82: invokevirtual 402	com/google/protobuf/ByteString:toByteArray	()[B
    //   85: astore 11
    //   87: getstatic 57	com/google/glass/maps/MapHelper:TAG	Ljava/lang/String;
    //   90: new 161	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   97: ldc_w 404
    //   100: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload 4
    //   105: invokevirtual 392	com/google/glass/proto/MapRenderResponse:getId	()Ljava/lang/String;
    //   108: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc_w 406
    //   114: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload 11
    //   119: arraylength
    //   120: invokevirtual 257	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   123: ldc_w 408
    //   126: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokestatic 177	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   135: pop
    //   136: aload 8
    //   138: ifnull +65 -> 203
    //   141: aload_0
    //   142: getfield 134	com/google/glass/maps/MapHelper:mapCache	Landroid/util/LruCache;
    //   145: astore 15
    //   147: aload 15
    //   149: monitorenter
    //   150: aload_0
    //   151: getfield 134	com/google/glass/maps/MapHelper:mapCache	Landroid/util/LruCache;
    //   154: aload 8
    //   156: aload 11
    //   158: invokevirtual 414	android/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   161: pop
    //   162: aload 15
    //   164: monitorexit
    //   165: aload 7
    //   167: aload 11
    //   169: invokevirtual 418	com/google/glass/maps/MapHelper$MapRendererFuture:set	([B)Z
    //   172: pop
    //   173: return
    //   174: astore_2
    //   175: getstatic 57	com/google/glass/maps/MapHelper:TAG	Ljava/lang/String;
    //   178: ldc_w 420
    //   181: aload_2
    //   182: invokestatic 423	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   185: pop
    //   186: return
    //   187: astore 6
    //   189: aload 5
    //   191: monitorexit
    //   192: aload 6
    //   194: athrow
    //   195: astore 16
    //   197: aload 15
    //   199: monitorexit
    //   200: aload 16
    //   202: athrow
    //   203: getstatic 57	com/google/glass/maps/MapHelper:TAG	Ljava/lang/String;
    //   206: ldc_w 425
    //   209: invokestatic 245	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   212: pop
    //   213: goto -48 -> 165
    //   216: getstatic 57	com/google/glass/maps/MapHelper:TAG	Ljava/lang/String;
    //   219: new 161	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   226: ldc_w 427
    //   229: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: aload 4
    //   234: invokevirtual 392	com/google/glass/proto/MapRenderResponse:getId	()Ljava/lang/String;
    //   237: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 177	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   246: pop
    //   247: aload 7
    //   249: new 369	com/google/glass/maps/MapHelper$MapRendererException
    //   252: dup
    //   253: invokespecial 370	com/google/glass/maps/MapHelper$MapRendererException:<init>	()V
    //   256: invokevirtual 374	com/google/glass/maps/MapHelper$MapRendererFuture:setException	(Ljava/lang/Throwable;)Z
    //   259: pop
    //   260: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	174	com/google/protobuf/InvalidProtocolBufferException
    //   23	64	187	finally
    //   189	192	187	finally
    //   150	165	195	finally
    //   197	200	195	finally
  }

  public static boolean isGlassMapUri(Uri paramUri)
  {
    return (paramUri.isHierarchical()) && ("glass".equals(paramUri.getScheme())) && ("map".equals(paramUri.getAuthority()));
  }

  public byte[] getCachedMapPng(MapRenderRequest paramMapRenderRequest)
  {
    synchronized (this.mapCache)
    {
      byte[] arrayOfByte = (byte[])this.mapCache.get(paramMapRenderRequest);
      return arrayOfByte;
    }
  }

  public ListenableFuture<Bitmap> renderMap(MapRenderRequest paramMapRenderRequest)
  {
    return Futures.transform(renderMapToPng(paramMapRenderRequest), new AsyncFunction()
    {
      public ListenableFuture<Bitmap> apply(final byte[] paramAnonymousArrayOfByte)
      {
        final SettableFuture localSettableFuture = SettableFuture.create();
        new AsyncTask()
        {
          protected Bitmap doInBackground(Void[] paramAnonymous2ArrayOfVoid)
          {
            return BitmapFactory.decodeByteArray(paramAnonymousArrayOfByte, 0, paramAnonymousArrayOfByte.length);
          }

          protected void onPostExecute(Bitmap paramAnonymous2Bitmap)
          {
            localSettableFuture.set(paramAnonymous2Bitmap);
          }
        }
        .executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
        return localSettableFuture;
      }
    });
  }

  public ListenableFuture<Bitmap> renderMap(MapRenderRequest paramMapRenderRequest, final OnMapRenderedListener paramOnMapRenderedListener)
  {
    final ListenableFuture localListenableFuture = renderMap(paramMapRenderRequest);
    localListenableFuture.addListener(new Runnable()
    {
      public void run()
      {
        try
        {
          paramOnMapRenderedListener.onMapRendered((Bitmap)localListenableFuture.get());
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          Log.e(MapHelper.TAG, "Interrupted");
          Thread.currentThread().interrupt();
          paramOnMapRenderedListener.onMapFailed();
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          Log.e(MapHelper.TAG, "ExecutionException", localExecutionException.getCause());
          paramOnMapRenderedListener.onMapFailed();
        }
      }
    }
    , MoreExecutors.sameThreadExecutor());
    return localListenableFuture;
  }

  public ListenableFuture<byte[]> renderMapToPng(MapRenderRequest paramMapRenderRequest)
  {
    byte[] arrayOfByte = getCachedMapPng(paramMapRenderRequest);
    if (arrayOfByte != null)
    {
      Log.d(TAG, "Returning map from cache");
      return Futures.immediateFuture(arrayOfByte);
    }
    String str = getNextId();
    Log.d(TAG, "Adding RENDER_MAP request: " + str);
    MapRenderRequest localMapRenderRequest = paramMapRenderRequest.toBuilder().setId(str).setType(MapRenderRequest.Type.RENDER_MAP).build();
    MapRendererFuture localMapRendererFuture = new MapRendererFuture(str);
    synchronized (this.requestStateLock)
    {
      this.queue.add(localMapRenderRequest);
      this.futures.put(str, localMapRendererFuture);
      this.outstandingRequests.put(str, paramMapRenderRequest);
      flushQueue();
      return localMapRendererFuture;
    }
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[3];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
    }
  }

  public static class MapRendererException extends Exception
  {
  }

  private class MapRendererFuture extends AbstractFuture<byte[]>
  {
    private final String id;

    MapRendererFuture(String arg2)
    {
      Object localObject;
      this.id = localObject;
    }

    public void interruptTask()
    {
      MapHelper.this.cancelMapRequest(this.id);
    }

    protected boolean set(byte[] paramArrayOfByte)
    {
      return super.set(paramArrayOfByte);
    }

    protected boolean setException(Throwable paramThrowable)
    {
      return super.setException(paramThrowable);
    }
  }

  public static abstract interface OnMapRenderedListener
  {
    public abstract void onMapFailed();

    public abstract void onMapRendered(Bitmap paramBitmap);
  }

  public static abstract class SimpleOnMapRenderedListener
    implements MapHelper.OnMapRenderedListener
  {
    public void onMapFailed()
    {
    }

    public void onMapRendered(Bitmap paramBitmap)
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.MapHelper
 * JD-Core Version:    0.6.2
 */