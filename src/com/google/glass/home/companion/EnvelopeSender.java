package com.google.glass.home.companion;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.glass.companion.Proto.Envelope;
import java.io.IOException;
import java.io.OutputStream;

public class EnvelopeSender
{
  private static final String TAG = EnvelopeSender.class.getSimpleName();
  private static final int TYPE_GENERIC = 0;
  public static final int TYPE_SCREENCAST = 1;
  private final Handler handler;
  private volatile boolean isRunning;
  private final OutputStream outStream;

  public EnvelopeSender(OutputStream paramOutputStream)
  {
    this.outStream = paramOutputStream;
    this.isRunning = true;
    HandlerThread localHandlerThread = new HandlerThread("EnvelopeSender");
    localHandlerThread.start();
    this.handler = new Handler(localHandlerThread.getLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        EnvelopeSender.this.sendEnvelope((Proto.Envelope)paramAnonymousMessage.obj);
      }
    };
  }

  public void close()
  {
    try
    {
      this.isRunning = false;
      this.handler.removeMessages(0);
      this.handler.removeMessages(1);
      this.handler.getLooper().quit();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean sendEnvelope(Proto.Envelope paramEnvelope)
  {
    if (!this.isRunning)
    {
      Log.i(TAG, "Dropping envelope since companion is not running.");
      return false;
    }
    try
    {
      synchronized (this.outStream)
      {
        paramEnvelope.writeDelimitedTo(this.outStream);
        this.outStream.flush();
        Log.i(TAG, "Envelope was sent.");
        return true;
      }
    }
    catch (IOException localIOException)
    {
      Log.w(TAG, "error happens when sending envelope to companion.");
    }
    return false;
  }

  public boolean sendEnvelope(byte[] paramArrayOfByte)
  {
    if (!this.isRunning)
    {
      Log.i(TAG, "Dropping envelope data since companion is not running.");
      return false;
    }
    try
    {
      synchronized (this.outStream)
      {
        this.outStream.write(paramArrayOfByte);
        this.outStream.flush();
        Log.i(TAG, "Envelope data was sent.");
        return true;
      }
    }
    catch (IOException localIOException)
    {
      Log.w(TAG, "error happens when sending envelope data to companion.");
    }
    return false;
  }

  public void sendEnvelopeAsync(Proto.Envelope paramEnvelope)
  {
    try
    {
      if (!this.isRunning)
        Log.i(TAG, "Envelope Sender was closed. Drop the envelope.");
      while (true)
      {
        return;
        Message.obtain(this.handler, 0, paramEnvelope).sendToTarget();
      }
    }
    finally
    {
    }
  }

  public void sendOrUpdateEnvelopeAsync(int paramInt, Proto.Envelope paramEnvelope)
  {
    while (true)
    {
      try
      {
        if (!this.isRunning)
        {
          Log.i(TAG, "Envelope Sender was closed. Drop the envelope.");
          return;
        }
        if (paramInt == 1)
        {
          this.handler.removeMessages(paramInt);
          Message.obtain(this.handler, paramInt, paramEnvelope).sendToTarget();
          continue;
        }
      }
      finally
      {
      }
      Log.w(TAG, "Skip!. Type" + paramInt + " is not supported.");
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.EnvelopeSender
 * JD-Core Version:    0.6.2
 */