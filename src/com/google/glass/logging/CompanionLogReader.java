package com.google.glass.logging;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.Proto.CompanionInfo;
import com.google.glass.companion.Proto.CompanionInfo.Builder;
import com.google.glass.companion.Proto.Envelope;
import com.google.glass.companion.Proto.Envelope.Builder;
import com.google.glass.util.RemoteMessenger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class CompanionLogReader
{
  private static final long READ_TIMEOUT_MS = 1000L;
  private static final String TAG = CompanionLogReader.class.getSimpleName();
  private volatile String companionLog = "no companion log found.";
  private final CountDownLatch countDownLatch = new CountDownLatch(1);
  private final Messenger incoming = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      Log.v(CompanionLogReader.TAG, "Handling response for " + CompanionLogReader.this.replyableId);
      Proto.Envelope localEnvelope = CompanionMessagingUtil.parseResponseMessage(paramAnonymousMessage);
      Proto.CompanionInfo localCompanionInfo;
      if ((localEnvelope != null) && (localEnvelope.hasCompanionInfo()))
      {
        localCompanionInfo = localEnvelope.getCompanionInfo();
        if (localCompanionInfo.getId() == CompanionLogReader.this.replyableId)
        {
          CompanionLogReader.access$202(CompanionLogReader.this, localCompanionInfo.getResponseLog());
          Log.v(CompanionLogReader.TAG, "get the companion log");
        }
      }
      while (true)
      {
        CompanionLogReader.this.countDownLatch.countDown();
        return;
        Log.w(CompanionLogReader.TAG, "Got different replyable id: expect " + CompanionLogReader.this.replyableId + ", but received " + localCompanionInfo.getId());
        continue;
        Log.v(CompanionLogReader.TAG, "failed to handle message " + CompanionLogReader.this.replyableId);
      }
    }
  });
  private final long replyableId = CompanionMessagingUtil.getNextUniqueReplyableId();

  public CompanionLogReader(Context paramContext)
  {
    Log.v(TAG, "Requesting companion log with " + this.replyableId);
    Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelopeBuilder().setCompanionInfo(Proto.CompanionInfo.newBuilder().setId(this.replyableId).setRequestNetwork(false).setRequestLog(true).build()).build();
    Message localMessage = CompanionMessagingUtil.createRequestMessage(this.replyableId, localEnvelope);
    localMessage.replyTo = this.incoming;
    LoggingApplication.from(paramContext).getCompanionMessenger().sendMessage(localMessage);
  }

  public String read()
  {
    try
    {
      String str = TAG;
      StringBuilder localStringBuilder = new StringBuilder().append("timeout in reading companion log? ");
      if (!this.countDownLatch.await(1000L, TimeUnit.MILLISECONDS));
      for (boolean bool = true; ; bool = false)
      {
        Log.v(str, bool);
        return this.companionLog;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Log.w(TAG, "InterruptedException in getCompanionLog", localInterruptedException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.CompanionLogReader
 * JD-Core Version:    0.6.2
 */