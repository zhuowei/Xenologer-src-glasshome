package com.google.glass.home.timeline;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.speech.tts.UtteranceProgressListener;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.home.HomeApplication;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;

public class ReadTimelineItemAloud extends AsyncTask<TimelineItemId, Void, Void>
{
  private static final String TAG = ReadTimelineItemAloud.class.getSimpleName();
  public static final long WAKE_LOCK_TIMEOUT_MS = 10000L;
  private HomeApplication appContext;
  private UtteranceProgressListener listener;
  private final TimelineHelper timelineHelper = new TimelineHelper();
  private PowerManager.WakeLock wakeLock;

  public ReadTimelineItemAloud(Context paramContext, UtteranceProgressListener paramUtteranceProgressListener)
  {
    this.appContext = HomeApplication.from(paramContext);
    this.listener = paramUtteranceProgressListener;
    this.wakeLock = ((PowerManager)this.appContext.getSystemService("power")).newWakeLock(1, TAG);
  }

  private void releaseWakeLock()
  {
    if (this.wakeLock.isHeld())
    {
      Log.d(TAG, "Releasing wake lock from Task.");
      this.wakeLock.release();
    }
  }

  protected Void doInBackground(TimelineItemId[] paramArrayOfTimelineItemId)
  {
    TimelineItemId localTimelineItemId = paramArrayOfTimelineItemId[0];
    String str = TimelineHelper.formatSpeakableText(this.timelineHelper.queryTimelineItem(this.appContext.getContentResolver(), localTimelineItemId.getItemId()));
    if (TextUtils.isEmpty(str))
      Log.d(TAG, "Speakable text was empty, not sending to TTS.");
    while (true)
    {
      return null;
      this.appContext.speakText(str, this.listener);
    }
  }

  protected void onCancelled(Void paramVoid)
  {
    this.appContext.stopSpeaking();
    releaseWakeLock();
  }

  protected void onPostExecute(Void paramVoid)
  {
    releaseWakeLock();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    this.wakeLock.acquire(10000L);
    Log.d(TAG, "Read aloud wake lock acquired: " + this.wakeLock.isHeld());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.ReadTimelineItemAloud
 * JD-Core Version:    0.6.2
 */