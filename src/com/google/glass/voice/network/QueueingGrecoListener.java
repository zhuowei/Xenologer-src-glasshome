package com.google.glass.voice.network;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.listeners.RecognitionEventListenerAdapter;
import com.google.glass.util.Assert;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import java.util.concurrent.LinkedBlockingQueue;

public class QueueingGrecoListener extends RecognitionEventListenerAdapter
{
  private static final int ON_BEGINNING_OF_SPEECH = 1;
  private static final int ON_DONE = 9;
  private static final int ON_END_OF_SPEECH = 2;
  private static final int ON_ERROR = 10;
  private static final int ON_MAJEL_RESULT = 6;
  private static final int ON_MEDIA_DATA_RESULT = 7;
  private static final int ON_NO_SPEECH_DETECTED = 3;
  private static final int ON_READY_FOR_SPEECH = 0;
  private static final int ON_RECOGNITION_CANCELLED = 4;
  private static final int ON_RECOGNITION_RESULT = 8;
  private static final int ON_SPEECH_RECOGNITION_STARTED = 5;
  private static final int QUEUE_PROCESSED = 11;
  private static final String TAG = QueueingGrecoListener.class.getSimpleName();
  private QueueHandler handler;
  private HandlerThread handlerThread;
  private boolean isCanceled = false;
  private RecognitionEventListenerAdapter listener;
  private LinkedBlockingQueue<Message> queue = new LinkedBlockingQueue();

  // ERROR //
  private void addToQueue(int paramInt, Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 127	android/os/Message:obtain	()Landroid/os/Message;
    //   5: astore 5
    //   7: aload 5
    //   9: iload_1
    //   10: putfield 130	android/os/Message:what	I
    //   13: aload_2
    //   14: ifnull +9 -> 23
    //   17: aload 5
    //   19: aload_2
    //   20: putfield 134	android/os/Message:obj	Ljava/lang/Object;
    //   23: getstatic 52	com/google/glass/voice/network/QueueingGrecoListener:TAG	Ljava/lang/String;
    //   26: new 136	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 137	java/lang/StringBuilder:<init>	()V
    //   33: ldc 139
    //   35: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: iload_1
    //   39: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   42: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: aload_0
    //   50: getfield 60	com/google/glass/voice/network/QueueingGrecoListener:queue	Ljava/util/concurrent/LinkedBlockingQueue;
    //   53: aload 5
    //   55: invokevirtual 159	java/util/concurrent/LinkedBlockingQueue:put	(Ljava/lang/Object;)V
    //   58: aload_0
    //   59: monitorexit
    //   60: return
    //   61: astore 4
    //   63: aload_0
    //   64: monitorexit
    //   65: aload 4
    //   67: athrow
    //   68: astore_3
    //   69: goto -11 -> 58
    //
    // Exception table:
    //   from	to	target	type
    //   2	13	61	finally
    //   17	23	61	finally
    //   23	58	61	finally
    //   2	13	68	java/lang/InterruptedException
    //   17	23	68	java/lang/InterruptedException
    //   23	58	68	java/lang/InterruptedException
  }

  private void dispatchOnBeginningOfSpeech()
  {
    this.listener.onBeginningOfSpeech();
  }

  private void dispatchOnDone()
  {
    this.listener.onDone();
    this.isCanceled = true;
  }

  private void dispatchOnEndOfSpeech()
  {
    this.listener.onEndOfSpeech();
  }

  private void dispatchOnError(RecognizeException paramRecognizeException)
  {
    this.listener.onError(paramRecognizeException);
    this.isCanceled = true;
  }

  private void dispatchOnMajelResult(MajelProtos.MajelResponse paramMajelResponse)
  {
    this.listener.onMajelResult(paramMajelResponse);
  }

  private void dispatchOnMediaDataResult(byte[] paramArrayOfByte)
  {
    this.listener.onMediaDataResult(paramArrayOfByte);
  }

  private void dispatchOnNoSpeechDetected()
  {
    this.listener.onNoSpeechDetected();
    this.isCanceled = true;
  }

  private void dispatchOnReadyForSpeech(float paramFloat1, float paramFloat2)
  {
    this.listener.onReadyForSpeech(paramFloat1, paramFloat2);
  }

  private void dispatchOnRecognitionCancelled()
  {
    this.listener.onRecognitionCancelled();
  }

  private void dispatchOnRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    this.listener.onRecognitionResult(paramRecognitionEvent);
  }

  LinkedBlockingQueue<Message> getQueueForTest()
  {
    Assert.isTest();
    return this.queue;
  }

  boolean handlerHasMessagesForTest()
  {
    Assert.isTest();
    boolean bool1;
    if ((!this.handler.hasMessages(1)) && (!this.handler.hasMessages(9)) && (!this.handler.hasMessages(2)) && (!this.handler.hasMessages(10)) && (!this.handler.hasMessages(6)) && (!this.handler.hasMessages(7)) && (!this.handler.hasMessages(3)) && (!this.handler.hasMessages(0)) && (!this.handler.hasMessages(4)) && (!this.handler.hasMessages(8)) && (!this.handler.hasMessages(5)))
    {
      boolean bool2 = this.handler.hasMessages(11);
      bool1 = false;
      if (!bool2);
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }

  public void onBeginningOfSpeech()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(1, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnBeginningOfSpeech();
      }
    }
    finally
    {
    }
  }

  public void onDone()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(9, null);
      }
      while (true)
      {
        return;
        label26: dispatchOnDone();
      }
    }
    finally
    {
    }
  }

  public void onEndOfSpeech()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(2, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnEndOfSpeech();
      }
    }
    finally
    {
    }
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(10, paramRecognizeException);
      }
      while (true)
      {
        return;
        label26: dispatchOnError(paramRecognizeException);
      }
    }
    finally
    {
    }
  }

  public void onMajelResult(MajelProtos.MajelResponse paramMajelResponse)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(6, paramMajelResponse);
      }
      while (true)
      {
        return;
        label26: dispatchOnMajelResult(paramMajelResponse);
      }
    }
    finally
    {
    }
  }

  public void onMediaDataResult(byte[] paramArrayOfByte)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(7, paramArrayOfByte);
      }
      while (true)
      {
        return;
        label26: dispatchOnMediaDataResult(paramArrayOfByte);
      }
    }
    finally
    {
    }
  }

  public void onNoSpeechDetected()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(3, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnNoSpeechDetected();
      }
    }
    finally
    {
    }
  }

  public void onReadyForSpeech(float paramFloat1, float paramFloat2)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label35;
        addToQueue(0, new float[] { paramFloat1, paramFloat2 });
      }
      while (true)
      {
        return;
        label35: dispatchOnReadyForSpeech(paramFloat1, paramFloat2);
      }
    }
    finally
    {
    }
  }

  public void onRecognitionCancelled()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(4, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnRecognitionCancelled();
      }
    }
    finally
    {
    }
  }

  public void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(8, paramRecognitionEvent);
      }
      while (true)
      {
        return;
        label26: dispatchOnRecognitionResult(paramRecognitionEvent);
      }
    }
    finally
    {
    }
  }

  public void resetCanceledForTest()
  {
    try
    {
      Assert.isTest();
      this.isCanceled = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setCanceled()
  {
    try
    {
      this.isCanceled = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setListener(RecognitionEventListenerAdapter paramRecognitionEventListenerAdapter)
  {
    try
    {
      if (this.listener != null)
        throw new IllegalStateException("Listener was already set");
    }
    finally
    {
    }
    this.listener = paramRecognitionEventListenerAdapter;
    this.handlerThread = new HandlerThread("QueueingGrecoListener");
    this.handlerThread.start();
    this.handler = new QueueHandler(this.handlerThread.getLooper(), null);
    synchronized (this.queue)
    {
      if (!this.queue.isEmpty())
      {
        Message localMessage2 = (Message)this.queue.poll();
        Log.d(TAG, "Removing message from queue: " + localMessage2.what);
        this.handler.sendMessage(localMessage2);
      }
    }
    Message localMessage1 = Message.obtain();
    localMessage1.what = 11;
    this.handler.sendMessage(localMessage1);
    this.queue = null;
  }

  private class QueueHandler extends Handler
  {
    private QueueHandler(Looper arg2)
    {
      super();
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 5:
      default:
      case 1:
      case 9:
      case 2:
      case 10:
      case 6:
      case 7:
      case 3:
      case 0:
      case 4:
      case 8:
      case 11:
      }
      do
      {
        return;
        QueueingGrecoListener.this.dispatchOnBeginningOfSpeech();
        return;
        QueueingGrecoListener.this.dispatchOnDone();
        return;
        QueueingGrecoListener.this.dispatchOnEndOfSpeech();
        return;
        QueueingGrecoListener.this.dispatchOnError((RecognizeException)paramMessage.obj);
        return;
        QueueingGrecoListener.this.dispatchOnMajelResult((MajelProtos.MajelResponse)paramMessage.obj);
        return;
        QueueingGrecoListener.this.dispatchOnMediaDataResult((byte[])paramMessage.obj);
        return;
        QueueingGrecoListener.this.dispatchOnNoSpeechDetected();
        return;
        float[] arrayOfFloat = (float[])paramMessage.obj;
        QueueingGrecoListener.this.dispatchOnReadyForSpeech(arrayOfFloat[0], arrayOfFloat[1]);
        return;
        QueueingGrecoListener.this.dispatchOnRecognitionCancelled();
        return;
        QueueingGrecoListener.this.dispatchOnRecognitionResult((RecognizerProtos.RecognitionEvent)paramMessage.obj);
        return;
      }
      while (QueueingGrecoListener.this.handlerThread == null);
      QueueingGrecoListener.this.handlerThread.quit();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.QueueingGrecoListener
 * JD-Core Version:    0.6.2
 */