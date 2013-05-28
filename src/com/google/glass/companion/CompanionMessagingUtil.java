package com.google.glass.companion;

import android.os.Bundle;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

public class CompanionMessagingUtil
{
  public static final long NO_REPLYABLE_ID;
  private static final String TAG = CompanionMessagingUtil.class.getSimpleName();
  private static final AtomicInteger UNIQUE_REPLYABLE_ID_GENERATOR = new AtomicInteger(1);

  public static Message createRequestMessage(long paramLong, Proto.Envelope paramEnvelope)
  {
    Message localMessage = Message.obtain();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    try
    {
      paramEnvelope.writeDelimitedTo(localDataOutputStream);
      localDataOutputStream.flush();
      localMessage.getData().putByteArray("Payload", localByteArrayOutputStream.toByteArray());
      localMessage.getData().putLong("ReplyableId", paramLong);
      return localMessage;
    }
    catch (IOException localIOException)
    {
      Log.i(TAG, "IO exception while writing data", localIOException);
    }
    return localMessage;
  }

  public static Message createResponseMessage(Proto.Envelope paramEnvelope)
  {
    Message localMessage = Message.obtain();
    if (paramEnvelope == null)
      return localMessage;
    localMessage.getData().putByteArray("Payload", paramEnvelope.toByteArray());
    return localMessage;
  }

  public static long getNextUniqueReplyableId()
  {
    return UNIQUE_REPLYABLE_ID_GENERATOR.incrementAndGet() + (Process.myPid() << 31);
  }

  public static Proto.Envelope.Builder newEnvelopeBuilder()
  {
    return Proto.Envelope.newBuilder().setVersion(6).setTimeMillis(System.currentTimeMillis()).setUptimeMillis(SystemClock.uptimeMillis());
  }

  public static Pair<Long, byte[]> parseRequestMessage(Message paramMessage)
  {
    long l = 0L;
    if (paramMessage.getData().containsKey("ReplyableId"))
      l = paramMessage.getData().getLong("ReplyableId");
    return Pair.create(Long.valueOf(l), paramMessage.getData().getByteArray("Payload"));
  }

  public static Proto.Envelope parseResponseMessage(Message paramMessage)
  {
    if (paramMessage == null);
    while (true)
    {
      return null;
      try
      {
        byte[] arrayOfByte = paramMessage.getData().getByteArray("Payload");
        if (arrayOfByte != null)
        {
          Proto.Envelope localEnvelope = Proto.Envelope.parseFrom(arrayOfByte);
          return localEnvelope;
        }
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
      }
    }
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionMessagingUtil
 * JD-Core Version:    0.6.2
 */