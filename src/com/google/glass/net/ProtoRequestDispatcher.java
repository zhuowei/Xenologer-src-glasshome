package com.google.glass.net;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.AuthUtils;
import com.google.googlex.glass.common.proto.AuthToken;
import com.google.googlex.glass.common.proto.BatchHeader;
import com.google.googlex.glass.common.proto.BatchHeader.Builder;
import com.google.googlex.glass.common.proto.BatchRequest;
import com.google.googlex.glass.common.proto.BatchRequest.Builder;
import com.google.googlex.glass.common.proto.BatchResponse;
import com.google.googlex.glass.common.proto.RequestWrapper;
import com.google.googlex.glass.common.proto.RequestWrapper.Builder;
import com.google.googlex.glass.common.proto.ResponseWrapper;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class ProtoRequestDispatcher
  implements Runnable
{
  private static final String DISPATCHER_PREFS = "prd_prefs";
  static final int MAX_BATCH_DATA_SIZE_BYTES = 131072;
  static final int MAX_PENDING_DATA_SIZE_BYTES = 524288;
  private static final String PREF_DISPATCHER_ID = "id";
  private static final String TAG = ProtoRequestDispatcher.class.getSimpleName();
  private final boolean closeHttpOnExit;
  private final Context context;
  private final Executor defaultResponseThread;
  private long dispatcherId;
  private boolean explicitFlush;
  private final HttpRequestDispatcher httpDispatcher;
  private final List<Request<?>> queue = new ArrayList();
  private final Condition queueCondition = this.queueLock.newCondition();
  private final ReentrantLock queueLock = new ReentrantLock();
  private Comparator<Request<?>> requestPriorityComparator = new Comparator()
  {
    public int compare(ProtoRequestDispatcher.Request<?> paramAnonymousRequest1, ProtoRequestDispatcher.Request<?> paramAnonymousRequest2)
    {
      if ((paramAnonymousRequest1.isImmediate) && (!paramAnonymousRequest2.isImmediate))
        return -1;
      if ((!paramAnonymousRequest1.isImmediate) && (paramAnonymousRequest2.isImmediate))
        return 1;
      return 0;
    }
  };
  private boolean shouldExit;
  private int totalQueuedDataSize;
  private final UserEventHelper userEventHelper;

  public ProtoRequestDispatcher(Context paramContext, HttpRequestDispatcher paramHttpRequestDispatcher, boolean paramBoolean, Executor paramExecutor)
  {
    Assert.assertNotNull(paramHttpRequestDispatcher);
    Assert.assertNotNull(paramExecutor);
    this.context = paramContext;
    this.httpDispatcher = paramHttpRequestDispatcher;
    this.closeHttpOnExit = paramBoolean;
    this.defaultResponseThread = paramExecutor;
    this.userEventHelper = new UserEventHelper(paramContext);
  }

  private void clearQueue()
  {
    this.queue.clear();
    this.explicitFlush = false;
  }

  private <T> boolean dispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, boolean paramBoolean1, Parser<T> paramParser, ProtoResponseHandler<T> paramProtoResponseHandler, Executor paramExecutor, boolean paramBoolean2)
  {
    String str = paramAction.path;
    ByteString localByteString = paramAbstractMessage.toByteString();
    this.queueLock.lock();
    try
    {
      boolean bool1 = this.shouldExit;
      if (bool1)
        return false;
      this.queue.add(new Request(str, localByteString, paramBoolean1, paramParser, paramProtoResponseHandler, paramExecutor, paramBoolean2));
      this.explicitFlush = (paramBoolean1 | this.explicitFlush);
      if (this.totalQueuedDataSize >= 0);
      for (boolean bool2 = true; ; bool2 = false)
      {
        Assert.assertTrue(bool2);
        this.totalQueuedDataSize += localByteString.size();
        if (isFlushConditionMet())
          this.queueCondition.signal();
        return true;
      }
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  private void ensureDispatcherId()
  {
    if ((this.dispatcherId == 0L) && (this.context != null))
    {
      SharedPreferences localSharedPreferences = this.context.getSharedPreferences("prd_prefs", 0);
      if (localSharedPreferences != null)
      {
        this.dispatcherId = localSharedPreferences.getLong("id", 0L);
        if (this.dispatcherId == 0L)
        {
          SecureRandom localSecureRandom = new SecureRandom();
          do
            this.dispatcherId = localSecureRandom.nextLong();
          while (this.dispatcherId == 0L);
        }
        localSharedPreferences.edit().putLong("id", this.dispatcherId).commit();
      }
    }
  }

  private boolean parseResponses(List<Request<?>> paramList, BatchResponse paramBatchResponse)
  {
    boolean bool = false;
    int i = 0;
    if (i < paramBatchResponse.getResponseCount())
    {
      ResponseWrapper localResponseWrapper = paramBatchResponse.getResponse(i);
      Request localRequest = (Request)paramList.get(i);
      if (localResponseWrapper.hasErrorCode())
      {
        bool = true;
        localRequest.onError(localResponseWrapper.getErrorCode());
      }
      while (true)
      {
        i++;
        break;
        localRequest.onSuccess(localResponseWrapper.getData());
        if (localRequest.logMetrics)
          logRequestMetrics(localRequest.path, localRequest.requestData.size(), localResponseWrapper.getData().size());
      }
    }
    return bool;
  }

  public <T extends AbstractMessage> ProtoResponse<T> blockingDispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, Parser<T> paramParser)
  {
    return blockingDispatch(paramAction, paramAbstractMessage, paramParser, true);
  }

  public <T extends AbstractMessage> ProtoResponse<T> blockingDispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, Parser<T> paramParser, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    final AtomicReference localAtomicReference1 = new AtomicReference();
    final AtomicReference localAtomicReference2 = new AtomicReference();
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    if (!dispatch(paramAction, paramAbstractMessage, true, paramParser, new ProtoResponseHandler()
    {
      public void onCancel()
      {
        localCountDownLatch.countDown();
      }

      public void onError(ResponseWrapper.ErrorCode paramAnonymousErrorCode)
      {
        localAtomicReference1.set(paramAnonymousErrorCode);
        localCountDownLatch.countDown();
      }

      public void onSuccess(T paramAnonymousT)
      {
        localAtomicReference2.set(paramAnonymousT);
        localCountDownLatch.countDown();
      }
    }
    , new Executor()
    {
      public void execute(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable.run();
      }
    }
    , paramBoolean))
      return null;
    try
    {
      localCountDownLatch.await();
      if ((localAtomicReference1.get() == null) && (localAtomicReference2.get() == null))
        return ProtoResponse.cancel();
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.w(TAG, "Interrupted while waiting for blocking request.");
      return null;
    }
    if (localAtomicReference1.get() != null)
      return ProtoResponse.error((ResponseWrapper.ErrorCode)localAtomicReference1.get());
    if (localAtomicReference2.get() != null)
      return ProtoResponse.success(localAtomicReference2.get());
    throw new IllegalStateException("Illegal proto response state.");
  }

  public <T extends AbstractMessage> boolean blockingDispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, Parser<T> paramParser, ProtoResponseHandler<T> paramProtoResponseHandler)
  {
    return blockingDispatch(paramAction, paramAbstractMessage, paramParser, paramProtoResponseHandler, true);
  }

  public <T extends AbstractMessage> boolean blockingDispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, Parser<T> paramParser, ProtoResponseHandler<T> paramProtoResponseHandler, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    ProtoResponse localProtoResponse = blockingDispatch(paramAction, paramAbstractMessage, paramParser, paramBoolean);
    if (localProtoResponse == null)
      return false;
    if (localProtoResponse.isCancelled())
      paramProtoResponseHandler.onCancel();
    while (true)
    {
      return true;
      if (localProtoResponse.isError())
        paramProtoResponseHandler.onError(localProtoResponse.getErrorCode());
      else if (localProtoResponse.isSuccess())
        paramProtoResponseHandler.onSuccess(localProtoResponse.getResponseProto());
    }
  }

  @VisibleForTesting
  String composeBatchLogEventString(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    Integer localInteger = Integer.valueOf(paramInt1);
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = "breq";
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = "bres";
    arrayOfObject[3] = Integer.valueOf(paramInt3);
    arrayOfObject[4] = "l";
    arrayOfObject[5] = Long.valueOf(paramLong2 - paramLong1);
    arrayOfObject[6] = "e";
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      arrayOfObject[7] = Integer.valueOf(i);
      return UserEventHelper.createEventTuple("r", localInteger, arrayOfObject);
    }
  }

  @VisibleForTesting
  String composeRequestSizeLogEventString(String paramString, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "breq";
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = "bres";
    arrayOfObject[3] = Integer.valueOf(paramInt2);
    return UserEventHelper.createEventTuple("p", paramString, arrayOfObject);
  }

  public <T> boolean dispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, boolean paramBoolean, Parser<T> paramParser, ProtoResponseHandler<T> paramProtoResponseHandler)
  {
    return dispatch(paramAction, paramAbstractMessage, paramBoolean, paramParser, paramProtoResponseHandler, this.defaultResponseThread, true);
  }

  public <T> boolean dispatch(ServerConstants.Action paramAction, AbstractMessage paramAbstractMessage, boolean paramBoolean1, Parser<T> paramParser, ProtoResponseHandler<T> paramProtoResponseHandler, boolean paramBoolean2)
  {
    return dispatch(paramAction, paramAbstractMessage, paramBoolean1, paramParser, paramProtoResponseHandler, this.defaultResponseThread, paramBoolean2);
  }

  public void exit()
  {
    this.queueLock.lock();
    try
    {
      this.shouldExit = true;
      this.queueCondition.signal();
      return;
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  public void flush()
  {
    this.queueLock.lock();
    try
    {
      if (!this.queue.isEmpty())
      {
        this.explicitFlush = true;
        this.queueCondition.signal();
      }
      return;
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  boolean isFlushConditionMet()
  {
    Assert.assertTrue(this.queueLock.isHeldByCurrentThread());
    if (this.queue.isEmpty());
    while ((this.totalQueuedDataSize <= 524288) && (!this.explicitFlush))
      return false;
    return true;
  }

  boolean lockQueueForTest()
    throws InterruptedException
  {
    return this.queueLock.tryLock(10L, TimeUnit.SECONDS);
  }

  @VisibleForTesting
  void logBatchMetrics(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    this.userEventHelper.log(UserEventAction.PROTO_REQUEST_DISPATCHER_BATCH, composeBatchLogEventString(paramInt1, paramInt2, paramInt3, paramLong1, paramLong2, paramBoolean));
  }

  @VisibleForTesting
  void logRequestMetrics(String paramString, int paramInt1, int paramInt2)
  {
    this.userEventHelper.log(UserEventAction.PROTO_REQUEST_DISPATCHER_REQUEST_SIZE, composeRequestSizeLogEventString(paramString, paramInt1, paramInt2));
  }

  public void run()
  {
    Assert.assertNotUiThread();
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      localArrayList.clear();
      this.queueLock.lock();
      try
      {
        while (!this.shouldExit)
        {
          boolean bool = isFlushConditionMet();
          if (bool)
            break;
          try
          {
            this.queueCondition.await();
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.w(TAG, "Interrupted while waiting for queue condition.", localInterruptedException);
          }
        }
      }
      finally
      {
        this.queueLock.unlock();
      }
      if (this.shouldExit)
      {
        Iterator localIterator = this.queue.iterator();
        while (localIterator.hasNext())
          ((Request)localIterator.next()).onCancel();
        clearQueue();
        if (this.closeHttpOnExit)
          this.httpDispatcher.close();
        this.queueLock.unlock();
        return;
      }
      if (isFlushConditionMet())
      {
        localArrayList.addAll(this.queue);
        clearQueue();
      }
      this.queueLock.unlock();
      if (!localArrayList.isEmpty())
        service(localArrayList);
    }
  }

  void service(List<Request<?>> paramList)
  {
    ensureDispatcherId();
    Collections.sort(paramList, this.requestPriorityComparator);
    int i = 0;
    while (true)
    {
      int j = paramList.size();
      if (i < j)
        this.queueLock.lock();
      int m;
      int n;
      ArrayList localArrayList;
      long l1;
      Pair localPair;
      long l2;
      boolean bool1;
      try
      {
        if (this.shouldExit)
        {
          while (true)
          {
            int k = paramList.size();
            if (i >= k)
              break;
            ((Request)paramList.get(i)).onCancel();
            i++;
          }
          return;
        }
        this.queueLock.unlock();
        m = 0;
        n = 0;
        BatchRequest.Builder localBuilder = BatchRequest.newBuilder();
        localArrayList = new ArrayList();
        int i1 = 0;
        int i2;
        do
        {
          Request localRequest1 = (Request)paramList.get(i);
          i++;
          if (localRequest1.logMetrics)
          {
            m++;
            n += localRequest1.requestData.size();
          }
          localArrayList.add(localRequest1);
          localBuilder.addRequest(RequestWrapper.newBuilder().setPath(localRequest1.path).setData(localRequest1.requestData).build());
          i1 += localRequest1.requestData.size();
          i2 = paramList.size();
        }
        while ((i < i2) && (i1 + ((Request)paramList.get(i)).requestData.size() < 131072));
        BatchHeader.Builder localBuilder1 = BatchHeader.newBuilder();
        localBuilder1.setDispatcherId(this.dispatcherId);
        if (this.context != null)
        {
          AuthToken localAuthToken = new AuthUtils(this.context).createBatchAuthToken();
          if (localAuthToken != null)
            localBuilder1.addAuthToken(localAuthToken);
        }
        localBuilder.setHeader(localBuilder1);
        l1 = SystemClock.uptimeMillis();
        localPair = this.httpDispatcher.post(ServerConstants.getBatchUrl(), null, localBuilder.build().toByteArray());
        l2 = SystemClock.uptimeMillis();
        bool1 = false;
        if ((localPair == null) || (localPair.first == null))
        {
          Log.i(TAG, "Batch request failed due to network error.");
          Iterator localIterator1 = localArrayList.iterator();
          while (localIterator1.hasNext())
          {
            Request localRequest2 = (Request)localIterator1.next();
            bool1 = true;
            localRequest2.onError(ResponseWrapper.ErrorCode.NETWORK_ERROR);
          }
        }
      }
      finally
      {
        this.queueLock.unlock();
      }
      if (((Integer)localPair.first).intValue() != 200)
      {
        Log.i(TAG, "Batch request failed due to internal server error.");
        Iterator localIterator4 = localArrayList.iterator();
        while (localIterator4.hasNext())
        {
          Request localRequest5 = (Request)localIterator4.next();
          bool1 = true;
          localRequest5.onError(ResponseWrapper.ErrorCode.INTERNAL_ERROR);
        }
      }
      try
      {
        localBatchResponse = BatchResponse.parseFrom((byte[])localPair.second);
        int i4 = localBatchResponse.getResponseCount();
        int i5 = localArrayList.size();
        bool1 = false;
        if (i4 != i5)
        {
          Log.i(TAG, "Batch request failed due to batch size mismatch.");
          Iterator localIterator3 = localArrayList.iterator();
          while (localIterator3.hasNext())
          {
            Request localRequest4 = (Request)localIterator3.next();
            bool1 = true;
            localRequest4.onError(ResponseWrapper.ErrorCode.INTERNAL_ERROR);
          }
        }
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        BatchResponse localBatchResponse;
        Log.i(TAG, "Batch request failed due to batch protocol fault.");
        Iterator localIterator2 = localArrayList.iterator();
        while (localIterator2.hasNext())
        {
          Request localRequest3 = (Request)localIterator2.next();
          bool1 = true;
          localRequest3.onError(ResponseWrapper.ErrorCode.INVALID_PROTO);
          continue;
          boolean bool2 = parseResponses(localArrayList, localBatchResponse);
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
      }
      if (m > 0)
      {
        int i3 = 0;
        if (localPair != null)
        {
          Object localObject2 = localPair.second;
          i3 = 0;
          if (localObject2 != null)
            i3 = ((byte[])localPair.second).length;
        }
        logBatchMetrics(m, n, i3, l1, l2, bool1);
      }
    }
  }

  void unlockQueueForTest()
  {
    this.queueLock.unlock();
  }

  private class Request<T>
  {
    final boolean isImmediate;
    final boolean logMetrics;
    final String path;
    final ByteString requestData;
    final ProtoResponseHandler<T> responseHandler;
    final Parser<T> responseParser;
    final Executor responseThread;

    Request(ByteString paramBoolean1, boolean paramParser, Parser<T> paramProtoResponseHandler, ProtoResponseHandler<T> paramExecutor, Executor paramBoolean2, boolean arg7)
    {
      this.path = paramBoolean1;
      this.requestData = paramParser;
      this.responseParser = paramExecutor;
      this.isImmediate = paramProtoResponseHandler;
      this.responseHandler = paramBoolean2;
      Object localObject;
      this.responseThread = localObject;
      boolean bool;
      this.logMetrics = bool;
    }

    void onCancel()
    {
      try
      {
        this.responseThread.execute(new Runnable()
        {
          public void run()
          {
            ProtoRequestDispatcher.Request.this.responseHandler.onCancel();
          }
        });
        return;
      }
      catch (Exception localException)
      {
        Log.w(ProtoRequestDispatcher.TAG, "Exception while dispatching cancel response.", localException);
      }
    }

    void onError(final ResponseWrapper.ErrorCode paramErrorCode)
    {
      if ((ResponseWrapper.ErrorCode.NOT_AUTHORIZED.equals(paramErrorCode)) && (ProtoRequestDispatcher.this.context != null))
        new AuthUtils(ProtoRequestDispatcher.this.context).invalidateAuthToken();
      if (ResponseWrapper.ErrorCode.NETWORK_ERROR.equals(paramErrorCode));
      try
      {
        NetworkUtil.checkNetwork();
        NetworkUtil.reportNetworkError();
      }
      catch (Throwable localThrowable)
      {
        try
        {
          while (true)
          {
            this.responseThread.execute(new Runnable()
            {
              public void run()
              {
                ProtoRequestDispatcher.Request.this.responseHandler.onError(paramErrorCode);
              }
            });
            return;
            localThrowable = localThrowable;
            Log.e(ProtoRequestDispatcher.TAG, "Unexpected error logging network error", localThrowable);
          }
        }
        catch (Exception localException)
        {
          Log.w(ProtoRequestDispatcher.TAG, "Exception while dispatching error response.", localException);
        }
      }
    }

    void onSuccess(ByteString paramByteString)
    {
      try
      {
        NetworkUtil.reportNetworkOK();
        final Object localObject = this.responseParser.parseFrom(paramByteString);
        this.responseThread.execute(new Runnable()
        {
          public void run()
          {
            ProtoRequestDispatcher.Request.this.responseHandler.onSuccess(localObject);
          }
        });
        return;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        onError(ResponseWrapper.ErrorCode.INVALID_PROTO);
        return;
      }
      catch (Exception localException)
      {
        Log.w(ProtoRequestDispatcher.TAG, "Exception while dispatching success response.", localException);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoRequestDispatcher
 * JD-Core Version:    0.6.2
 */