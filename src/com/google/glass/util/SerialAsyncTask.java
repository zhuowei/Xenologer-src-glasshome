package com.google.glass.util;

import android.os.AsyncTask;
import java.util.concurrent.CountDownLatch;

public abstract class SerialAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result>
{
  private static final String TAG = SerialAsyncTask.class.getSimpleName();

  // ERROR //
  protected final Result doInBackground(Params[] paramArrayOfParams)
  {
    // Byte code:
    //   0: new 26	java/util/concurrent/CountDownLatch
    //   3: dup
    //   4: iconst_1
    //   5: invokespecial 29	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   8: astore_2
    //   9: invokestatic 35	com/google/glass/util/MainThreadExecutorManager:getMainThreadExecutor	()Ljava/util/concurrent/Executor;
    //   12: new 37	com/google/glass/util/SerialAsyncTask$1
    //   15: dup
    //   16: aload_0
    //   17: aload_2
    //   18: invokespecial 40	com/google/glass/util/SerialAsyncTask$1:<init>	(Lcom/google/glass/util/SerialAsyncTask;Ljava/util/concurrent/CountDownLatch;)V
    //   21: invokeinterface 46 2 0
    //   26: aload_2
    //   27: invokevirtual 49	java/util/concurrent/CountDownLatch:await	()V
    //   30: aload_0
    //   31: aload_1
    //   32: invokevirtual 52	com/google/glass/util/SerialAsyncTask:serialDoInBackground	([Ljava/lang/Object;)Ljava/lang/Object;
    //   35: astore 5
    //   37: new 26	java/util/concurrent/CountDownLatch
    //   40: dup
    //   41: iconst_1
    //   42: invokespecial 29	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   45: astore 6
    //   47: invokestatic 35	com/google/glass/util/MainThreadExecutorManager:getMainThreadExecutor	()Ljava/util/concurrent/Executor;
    //   50: new 54	com/google/glass/util/SerialAsyncTask$2
    //   53: dup
    //   54: aload_0
    //   55: aload 5
    //   57: aload 6
    //   59: invokespecial 57	com/google/glass/util/SerialAsyncTask$2:<init>	(Lcom/google/glass/util/SerialAsyncTask;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    //   62: invokeinterface 46 2 0
    //   67: aload 6
    //   69: invokevirtual 49	java/util/concurrent/CountDownLatch:await	()V
    //   72: aload 5
    //   74: areturn
    //   75: astore_3
    //   76: getstatic 17	com/google/glass/util/SerialAsyncTask:TAG	Ljava/lang/String;
    //   79: ldc 59
    //   81: invokestatic 65	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: aconst_null
    //   86: areturn
    //   87: astore 7
    //   89: getstatic 17	com/google/glass/util/SerialAsyncTask:TAG	Ljava/lang/String;
    //   92: ldc 67
    //   94: invokestatic 65	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   97: pop
    //   98: aconst_null
    //   99: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   26	30	75	java/lang/InterruptedException
    //   67	72	87	java/lang/InterruptedException
  }

  protected abstract Result serialDoInBackground(Params[] paramArrayOfParams);

  protected void serialOnPostExecute(Result paramResult)
  {
  }

  protected void serialOnPreExecute()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SerialAsyncTask
 * JD-Core Version:    0.6.2
 */