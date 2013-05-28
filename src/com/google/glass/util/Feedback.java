package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Set;

public class Feedback
{
  private static final String ACTIVITY_NAME = "com.google.glass.logging.FeedbackActivity";
  public static final String EXTRA_ADDITIONAL_FILES = "additional_files";
  public static final String EXTRA_BUGREPORT = "bugreport";
  public static final String EXTRA_NAME = "name";
  public static final String EXTRA_RECOVERY_ACTION = "recovery_action";
  public static final String EXTRA_SCREENSHOT = "screenshot";
  private static final String PACKAGE_NAME = "com.google.glass.logging";
  private static final String TAG = Feedback.class.getSimpleName();

  private static Intent createFeedbackIntent(String paramString, RecoveryAction paramRecoveryAction, boolean paramBoolean, ScreenshotUtil.Screenshot paramScreenshot, String[] paramArrayOfString)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.FeedbackActivity");
    localIntent.addFlags(268435456);
    localIntent.putExtra("name", paramString);
    localIntent.putExtra("recovery_action", paramRecoveryAction);
    localIntent.putExtra("bugreport", paramBoolean);
    localIntent.putExtra("screenshot", paramScreenshot);
    localIntent.putExtra("additional_files", paramArrayOfString);
    return localIntent;
  }

  public static void handleRecoveryAction(Context paramContext, RecoveryAction paramRecoveryAction)
  {
    if (paramRecoveryAction == null)
    {
      Log.e(TAG, "RecoveryAction was null, taking no action.");
      return;
    }
    Intent localIntent = new Intent();
    BuildHelper.Type localType = BuildHelper.getType();
    if (paramRecoveryAction.buildTypes.contains(localType))
    {
      switch (1.$SwitchMap$com$google$glass$util$Feedback$RecoveryAction[paramRecoveryAction.ordinal()])
      {
      case 3:
      default:
      case 1:
      case 2:
      }
      while (true)
      {
        String str = HiddenApiHelper.getIntentExtraKeyConfirm();
        if (str != null)
          localIntent.putExtra(str, false);
        localIntent.addFlags(268435456);
        paramContext.startActivity(localIntent);
        return;
        localIntent.setAction("android.intent.action.ACTION_REQUEST_SHUTDOWN");
        continue;
        localIntent.setAction("android.intent.action.REBOOT");
      }
    }
    Log.d(TAG, "recoveryAction " + paramRecoveryAction + " overridden, does not apply " + "to build type " + localType);
  }

  public static void show(Context paramContext, String paramString, RecoveryAction paramRecoveryAction, boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString)
  {
    if (BuildHelper.isUser())
    {
      Log.d(TAG, "This is a user build, not showing feedback, handling " + paramRecoveryAction + "triggered by " + paramString);
      handleRecoveryAction(paramContext, paramRecoveryAction);
      return;
    }
    GlassApplication.from(paramContext).getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
    if (paramBoolean2);
    for (ScreenshotUtil.Screenshot localScreenshot = ScreenshotUtil.captureCompressedScreenshotForIntent(paramContext); ; localScreenshot = null)
    {
      paramContext.startActivity(createFeedbackIntent(paramString, paramRecoveryAction, paramBoolean1, localScreenshot, paramArrayOfString));
      return;
    }
  }

  public static enum RecoveryAction
  {
    public final Set<BuildHelper.Type> buildTypes;

    static
    {
      BuildHelper.Type[] arrayOfType1 = new BuildHelper.Type[2];
      arrayOfType1[0] = BuildHelper.Type.USER;
      arrayOfType1[1] = BuildHelper.Type.USERDEBUG;
      SHOULD_SHUTDOWN = new RecoveryAction("SHOULD_SHUTDOWN", 0, arrayOfType1);
      BuildHelper.Type[] arrayOfType2 = new BuildHelper.Type[2];
      arrayOfType2[0] = BuildHelper.Type.USER;
      arrayOfType2[1] = BuildHelper.Type.USERDEBUG;
      SHOULD_REBOOT = new RecoveryAction("SHOULD_REBOOT", 1, arrayOfType2);
      BuildHelper.Type[] arrayOfType3 = new BuildHelper.Type[1];
      arrayOfType3[0] = BuildHelper.Type.ENG;
      SHOULD_CONTINUE = new RecoveryAction("SHOULD_CONTINUE", 2, arrayOfType3);
      RecoveryAction[] arrayOfRecoveryAction = new RecoveryAction[3];
      arrayOfRecoveryAction[0] = SHOULD_SHUTDOWN;
      arrayOfRecoveryAction[1] = SHOULD_REBOOT;
      arrayOfRecoveryAction[2] = SHOULD_CONTINUE;
    }

    private RecoveryAction(BuildHelper.Type[] paramArrayOfType)
    {
      this.buildTypes = EnumSet.copyOf(Arrays.asList(paramArrayOfType));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Feedback
 * JD-Core Version:    0.6.2
 */