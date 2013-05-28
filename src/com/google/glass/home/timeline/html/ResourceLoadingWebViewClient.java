package com.google.glass.home.timeline.html;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.glass.maps.MapHelper;
import com.google.glass.proto.MapRenderRequest;
import com.google.glass.proto.MapRenderRequest.Builder;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.ImageProxyDownloadTask;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class ResourceLoadingWebViewClient extends WebViewClient
{
  private static final String ATTACHMENT_SCHEME = "attachment";
  private static final String CID_SCHEME = "cid";
  private static final String DATA_SCHEME = "data";
  private static final String FILE_SCHEME = "file";
  private static final Map<String, String> FILE_WHITELIST = ImmutableMap.builder().put("/system/glass_fonts/Roboto-Light.ttf", "application/octet-stream").put("/system/glass_fonts/Roboto-Thin.ttf", "application/octet-stream").put("/data/data/com.google.glass.home/files/stylesheets/base_style.css", "text/css").build();
  private static final String GLASS_SCHEME = "glass";
  private static final String HTTPS_SCHEME = "https";
  private static final String HTTP_SCHEME = "http";
  private static final String TAG = ResourceLoadingWebViewClient.class.getSimpleName();
  private final CachedBitmapFactory bitmapFactory;
  private final Context context;
  private final TimelineItem item;
  private final boolean loadUncachedResources;
  private final MapHelper mapHelper;
  private final List<AsyncTask<Void, Void, Void>> resourceLoadTasks;
  private final ResourceLoadedCallback resourceLoadedCallback;
  private final Thumbnailer thumbnailer;

  public ResourceLoadingWebViewClient(Context paramContext, TimelineItem paramTimelineItem, CachedBitmapFactory paramCachedBitmapFactory, MapHelper paramMapHelper, boolean paramBoolean, List<AsyncTask<Void, Void, Void>> paramList, ResourceLoadedCallback paramResourceLoadedCallback)
  {
    this.context = paramContext;
    this.item = paramTimelineItem;
    this.bitmapFactory = paramCachedBitmapFactory;
    this.mapHelper = paramMapHelper;
    this.loadUncachedResources = paramBoolean;
    this.resourceLoadTasks = paramList;
    this.resourceLoadedCallback = paramResourceLoadedCallback;
    this.thumbnailer = new Thumbnailer();
  }

  private Attachment findAttachmentForAttachmentUri(Uri paramUri)
  {
    String str = paramUri.getSchemeSpecificPart();
    if (TextUtils.isEmpty(str))
    {
      Log.w(TAG, "URL is empty: " + paramUri + "/" + this.item.getId());
      return null;
    }
    int i;
    try
    {
      i = Integer.parseInt(str);
      if ((i < 0) || (i >= this.item.getAttachmentCount()))
      {
        Log.w(TAG, "Index out of bounds: " + paramUri + "/" + this.item.getId());
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.w(TAG, "Unable to parse attachment index: " + paramUri + "/" + this.item.getId());
      return null;
    }
    return this.item.getAttachment(i);
  }

  private Attachment findAttachmentForCidUri(Uri paramUri)
  {
    String str = paramUri.getSchemeSpecificPart();
    if (TextUtils.isEmpty(str))
    {
      Log.w(TAG, "URL is empty: " + paramUri + "/" + this.item.getId());
      return null;
    }
    Iterator localIterator = this.item.getAttachmentList().iterator();
    while (localIterator.hasNext())
    {
      Attachment localAttachment = (Attachment)localIterator.next();
      if (str.equals(localAttachment.getId()))
        return localAttachment;
    }
    return null;
  }

  private static int getMaxScreenDimension(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    return Math.max(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
  }

  private String loadAttachment(final Attachment paramAttachment, List<Runnable> paramList)
  {
    String str;
    if (this.bitmapFactory.cacheContainsAttachment(paramAttachment))
    {
      str = this.bitmapFactory.getCachedAttachmentPath(paramAttachment, true);
      if (str == null);
    }
    switch (5.$SwitchMap$com$google$glass$home$timeline$html$Thumbnailer$ThumbnailerResult[this.thumbnailer.createThumbnail(paramAttachment, str, true).ordinal()])
    {
    default:
      paramList.add(new Runnable()
      {
        public void run()
        {
          String str = ResourceLoadingWebViewClient.this.bitmapFactory.getCachedAttachmentPath(paramAttachment, false);
          ResourceLoadingWebViewClient.this.thumbnailer.createThumbnail(paramAttachment, str, false);
        }
      });
      str = null;
    case 1:
      return str;
    case 2:
      return this.thumbnailer.getThumbnailFile(paramAttachment).getAbsolutePath();
    case 3:
    }
    return null;
  }

  private String loadHttpResource(final BlockingDownloadTask paramBlockingDownloadTask, List<Runnable> paramList)
  {
    String str = paramBlockingDownloadTask.checkCache();
    if (str == null)
      paramList.add(new Runnable()
      {
        public void run()
        {
          paramBlockingDownloadTask.getPath();
        }
      });
    return str;
  }

  private byte[] loadMap(final String paramString, List<Runnable> paramList)
  {
    final MapRenderRequest localMapRenderRequest = MapRenderRequest.newBuilder().setUri(paramString).build();
    byte[] arrayOfByte = this.mapHelper.getCachedMapPng(localMapRenderRequest);
    if (arrayOfByte != null)
      return arrayOfByte;
    paramList.add(new Runnable()
    {
      public void run()
      {
        ListenableFuture localListenableFuture = ResourceLoadingWebViewClient.this.mapHelper.renderMapToPng(localMapRenderRequest);
        try
        {
          localListenableFuture.get();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
          localListenableFuture.cancel(true);
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          Log.e(ResourceLoadingWebViewClient.TAG, "Map rendering error, uri:" + paramString + ", exception:" + localExecutionException.getCause());
        }
      }
    });
    return null;
  }

  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    Assert.assertNotUiThread();
    Timer localTimer = new Timer();
    ArrayList localArrayList = new ArrayList();
    boolean bool1 = TextUtils.isEmpty(paramString);
    byte[] arrayOfByte = null;
    String str1 = null;
    String str2 = null;
    Uri localUri;
    String str3;
    if (!bool1)
    {
      localUri = Uri.parse(paramString);
      str3 = localUri.getScheme();
      if ("data".equals(str3))
        return null;
      if (!"file".equals(str3))
        break label336;
      boolean bool4 = FILE_WHITELIST.containsKey(localUri.getPath());
      arrayOfByte = null;
      str1 = null;
      str2 = null;
      if (bool4)
      {
        str2 = localUri.getPath();
        str1 = (String)FILE_WHITELIST.get(localUri.getPath());
      }
    }
    while (true)
    {
      Object localObject = null;
      if (arrayOfByte != null)
        try
        {
          localObject = new ByteArrayInputStream(arrayOfByte);
          label148: if (localObject != null)
          {
            if (str1 == null)
              str1 = ContentTypes.sniff((InputStream)localObject);
            localTimer.log(TAG, "Loaded: " + paramString + " (" + str1 + ")");
            WebResourceResponse localWebResourceResponse = new WebResourceResponse(str1, "", (InputStream)localObject);
            return localWebResourceResponse;
          }
        }
        catch (IOException localIOException1)
        {
          Log.e(TAG, "Error reading: " + str2, localIOException1);
          if (localObject == null);
        }
      try
      {
        ((InputStream)localObject).close();
        label270: if (this.loadUncachedResources)
        {
          Iterator localIterator = localArrayList.iterator();
          while (true)
            if (localIterator.hasNext())
            {
              final Runnable localRunnable = (Runnable)localIterator.next();
              AsyncTask local1 = new AsyncTask()
              {
                protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
                {
                  if (!isCancelled())
                    localRunnable.run();
                  return null;
                }

                protected void onPostExecute(Void paramAnonymousVoid)
                {
                  if (!isCancelled())
                    ResourceLoadingWebViewClient.this.resourceLoadedCallback.onResourceLoaded();
                }

                protected void onPreExecute()
                {
                  ResourceLoadingWebViewClient.this.resourceLoadTasks.add(this);
                }
              };
              local1.executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
              continue;
              label336: if ("attachment".equals(str3))
              {
                Attachment localAttachment2 = findAttachmentForAttachmentUri(localUri);
                arrayOfByte = null;
                str1 = null;
                str2 = null;
                if (localAttachment2 == null)
                  break;
                str2 = loadAttachment(localAttachment2, localArrayList);
                str1 = localAttachment2.getContentType();
                arrayOfByte = null;
                break;
              }
              if ("cid".equals(str3))
              {
                Attachment localAttachment1 = findAttachmentForCidUri(localUri);
                arrayOfByte = null;
                str1 = null;
                str2 = null;
                if (localAttachment1 == null)
                  break;
                str2 = loadAttachment(localAttachment1, localArrayList);
                str1 = localAttachment1.getContentType();
                arrayOfByte = null;
                break;
              }
              if (("http".equals(str3)) || ("https".equals(str3)))
              {
                str2 = loadHttpResource(new BlockingDownloadTask(localUri), localArrayList);
                arrayOfByte = null;
                str1 = null;
                break;
              }
              boolean bool2 = "glass".equals(str3);
              arrayOfByte = null;
              str1 = null;
              str2 = null;
              if (!bool2)
                break;
              boolean bool3 = MapHelper.isGlassMapUri(localUri);
              arrayOfByte = null;
              str1 = null;
              str2 = null;
              if (!bool3)
                break;
              arrayOfByte = loadMap(paramString, localArrayList);
              str1 = "image/png";
              str2 = null;
              break;
              localObject = null;
              if (str2 == null)
                break label148;
              FileInputStream localFileInputStream = new FileInputStream(str2);
              BufferedInputStream localBufferedInputStream = new BufferedInputStream(localFileInputStream);
              localObject = localBufferedInputStream;
              break label148;
            }
        }
        Log.w(TAG, "Returning empty resource for: " + paramString);
        return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
      }
      catch (IOException localIOException2)
      {
        break label270;
      }
    }
  }

  private class BlockingDownloadTask extends ImageProxyDownloadTask
  {
    BlockingDownloadTask(Uri arg2)
    {
      super(localObject.toString(), ResourceLoadingWebViewClient.getMaxScreenDimension(ResourceLoadingWebViewClient.this.context), ResourceLoadingWebViewClient.getMaxScreenDimension(ResourceLoadingWebViewClient.this.context), ImageDownloadRequest.CropType.NO_CROP);
    }

    protected void bindContent(String paramString)
    {
    }

    public String getPath()
    {
      return loadContent();
    }

    protected void prepareContent()
    {
    }
  }

  public static abstract interface ResourceLoadedCallback
  {
    public abstract void onResourceLoaded();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.html.ResourceLoadingWebViewClient
 * JD-Core Version:    0.6.2
 */