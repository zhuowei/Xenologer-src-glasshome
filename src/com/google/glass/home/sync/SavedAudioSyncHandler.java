package com.google.glass.home.sync;

import android.content.Context;
import android.util.Log;
import com.google.glass.logging.audio.S3SavedAudioSyncer;
import com.google.glass.logging.audio.SavedAudioStorage;
import com.google.glass.logging.audio.SyncFailedException;
import com.google.glass.net.AndroidHttpRequestDispatcher;
import com.google.glass.util.RetryStrategy;
import java.util.concurrent.TimeUnit;

public class SavedAudioSyncHandler extends BackOffSyncHandler
{
  private static final double BACKOFF_MULTIPLIER = 2.0D;
  private static final int FIRST_RETRY_DELAY_MS = (int)TimeUnit.SECONDS.toMillis(10L);
  private static final String TAG = SavedAudioSyncHandler.class.getSimpleName();
  private Context context;
  private SavedAudioStorage savedAudioStorage;

  public SavedAudioSyncHandler(Context paramContext)
  {
    super(RetryStrategy.exponentialBackoff(FIRST_RETRY_DELAY_MS, 2.0D, -1));
    this.context = paramContext;
    this.savedAudioStorage = new SavedAudioStorage(S3SavedAudioSyncer.createS3SavedAudioSyncer(paramContext, new AndroidHttpRequestDispatcher()));
  }

  public void deleteOldAudio()
  {
    this.savedAudioStorage.deleteOldAudio(this.context);
  }

  protected String getTag()
  {
    return TAG;
  }

  public void syncSavedAudio()
  {
    try
    {
      this.savedAudioStorage.uploadStoredAudio(this.context, SavedAudioStorage.getEnabledStorageLabs());
      handleSuccess();
      return;
    }
    catch (SyncFailedException localSyncFailedException)
    {
      Log.e(TAG, "Syncing saved audio to S3 failed", localSyncFailedException);
      handleFail();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.SavedAudioSyncHandler
 * JD-Core Version:    0.6.2
 */