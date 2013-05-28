package com.google.glass.logging;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;
import com.google.glass.util.ScreenshotUtil.Screenshot;

public class FeedbackActivity extends GlassActivity
{
  private final TimelineHelper timelineHelper = new TimelineHelper();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.d(getTag(), "onCreate");
    getSoundManager().playSound(SoundManager.SoundId.ERROR);
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      Log.w(getTag(), "No intent.");
      return;
    }
    final String str = localIntent.getStringExtra("name");
    final ScreenshotUtil.Screenshot localScreenshot = (ScreenshotUtil.Screenshot)localIntent.getParcelableExtra("screenshot");
    final Feedback.RecoveryAction localRecoveryAction = (Feedback.RecoveryAction)localIntent.getSerializableExtra("recovery_action");
    final boolean bool = localIntent.getBooleanExtra("bugreport", true);
    final String[] arrayOfString = localIntent.getStringArrayExtra("additional_files");
    Log.d(getTag(), "name: " + str + ", screenshot: " + localScreenshot + ", recoveryAction: " + localRecoveryAction + ", shouldBugreport: " + bool);
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        try
        {
          FeedbackBuilder.build(FeedbackActivity.this, FeedbackActivity.this.timelineHelper, str, localScreenshot, bool, this.val$companionLogReader, arrayOfString);
          return;
        }
        finally
        {
          Feedback.handleRecoveryAction(FeedbackActivity.this, localRecoveryAction);
          FeedbackActivity.this.finish();
        }
      }
    });
  }

  protected int provideContentView()
  {
    return R.layout.feedback;
  }

  protected boolean shouldAllowVoiceInput()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.FeedbackActivity
 * JD-Core Version:    0.6.2
 */