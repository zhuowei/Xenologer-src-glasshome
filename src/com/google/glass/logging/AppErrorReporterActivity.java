package com.google.glass.logging;

import android.app.ApplicationErrorReport;
import android.app.ApplicationErrorReport.AnrInfo;
import android.app.ApplicationErrorReport.CrashInfo;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.userfeedback.android.api.UserFeedback;
import com.google.userfeedback.android.api.UserFeedbackCrashBuilder;
import com.google.userfeedback.android.api.UserFeedbackCrashData;
import com.google.userfeedback.android.api.UserFeedbackSpec;

public final class AppErrorReporterActivity extends GlassActivity
{
  private static final String ANR_CATEGORY_TAG = "com.google.glass.logging.ANR_REPORT";
  private static final int AUTO_FINISH_MS = 3000;
  private static final String CRASH_CATEGORY_TAG = "com.google.glass.logging.CRASH_REPORT";
  private static final String TAG = AppErrorReporterActivity.class.getSimpleName();

  private static UserFeedbackCrashData getCrashData(ApplicationErrorReport.AnrInfo paramAnrInfo)
  {
    return UserFeedbackCrashBuilder.newInstance().setExceptionClassName(paramAnrInfo.cause).setExceptionMessage(paramAnrInfo.info).setStackTrace("").setThrowClassName(paramAnrInfo.activity).setThrowFileName("").setThrowLineNumber(0).setThrowMethodName("").build();
  }

  private static UserFeedbackCrashData getCrashData(ApplicationErrorReport.CrashInfo paramCrashInfo)
  {
    return UserFeedbackCrashBuilder.newInstance().setExceptionClassName(paramCrashInfo.exceptionClassName).setExceptionMessage(paramCrashInfo.exceptionMessage).setStackTrace(paramCrashInfo.stackTrace).setThrowClassName(paramCrashInfo.throwClassName).setThrowFileName(paramCrashInfo.throwFileName).setThrowLineNumber(paramCrashInfo.throwLineNumber).setThrowMethodName(paramCrashInfo.throwMethodName).build();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.d(TAG, "Received Crash or ANR report");
    ApplicationErrorReport localApplicationErrorReport = (ApplicationErrorReport)getIntent().getParcelableExtra("android.intent.extra.BUG_REPORT");
    switch (localApplicationErrorReport.type)
    {
    default:
      Log.d(TAG, "Unhandled ApplicationError type: " + localApplicationErrorReport.type);
      return;
    case 1:
      UserFeedbackSpec localUserFeedbackSpec2 = new UserFeedbackSpec(this, null, "com.google.glass.logging.CRASH_REPORT");
      localUserFeedbackSpec2.setCrashData(getCrashData(localApplicationErrorReport.crashInfo));
      new UserFeedback().silentSubmitFeedback(localUserFeedbackSpec2, localApplicationErrorReport.crashInfo.exceptionMessage);
      return;
    case 2:
    }
    UserFeedbackSpec localUserFeedbackSpec1 = new UserFeedbackSpec(this, null, "com.google.glass.logging.ANR_REPORT");
    localUserFeedbackSpec1.setCrashData(getCrashData(localApplicationErrorReport.anrInfo));
    new UserFeedback().silentSubmitFeedback(localUserFeedbackSpec1, localApplicationErrorReport.anrInfo.cause);
  }

  protected void onResume()
  {
    super.onResume();
    GlassApplication.from(this).getSoundManager().playSound(SoundManager.SoundId.ERROR);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        AppErrorReporterActivity.this.finish();
      }
    }
    , 3000L);
  }

  protected int provideContentView()
  {
    return R.layout.feedback;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.AppErrorReporterActivity
 * JD-Core Version:    0.6.2
 */