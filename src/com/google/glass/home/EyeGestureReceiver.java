package com.google.glass.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.camera.CameraHelper;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public final class EyeGestureReceiver extends BroadcastReceiver
{
  public static final String ACTION_EYE_GESTURE = "com.google.glass.action.EYE_GESTURE";
  public static final String EXTRA_EYE_GESTURE = "gesture";
  private static final String TAG = EyeGestureReceiver.class.getSimpleName();
  private static boolean canTakePicture = true;

  private void capturePicture(Context paramContext, boolean paramBoolean)
  {
    new CameraHelper(paramContext).takePicture(paramBoolean, paramBoolean, false);
    UserEventHelper localUserEventHelper = GlassApplication.from(paramContext).getUserEventHelper();
    localUserEventHelper.log(UserEventAction.EYE_GESTURES_WINK_TAKE_PHOTO);
    if (paramBoolean)
    {
      localUserEventHelper.log(UserEventAction.HOME_ACTIVATED, "8");
      localUserEventHelper.log(UserEventAction.USER_INITIATED_SCREEN_ON, "8");
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.google.glass.action.HANGOUT_STATUS".equals(paramIntent.getAction()))
    {
      bool2 = paramIntent.getBooleanExtra("participating", false);
      bool3 = false;
      if (!bool2)
        bool3 = true;
      canTakePicture = bool3;
    }
    while ((!paramIntent.getAction().equals("com.google.glass.action.EYE_GESTURE")) || (!paramIntent.hasExtra("gesture")))
    {
      boolean bool2;
      boolean bool3;
      return;
    }
    EyeGesture localEyeGesture = EyeGesture.valueOf(paramIntent.getStringExtra("gesture"));
    switch (1.$SwitchMap$com$google$glass$home$EyeGestureReceiver$EyeGesture[localEyeGesture.ordinal()])
    {
    default:
      Log.i(TAG, "Got EyeGesture: " + localEyeGesture + " but not performing any action.");
      return;
    case 1:
      if (!Labs.isEnabled(Labs.Feature.WINK))
      {
        Log.w(TAG, "Wink received even though Lab is off!  Turning off the feature...");
        HiddenApiHelper.enableWinkDetector(paramContext, false);
        return;
      }
      if (!canTakePicture)
      {
        Log.i(TAG, "Wink action, but in a hangout; ignoring.");
        return;
      }
      boolean bool1 = paramIntent.getBooleanExtra("screen_off", false);
      Log.i(TAG, "Wink action: isScreenOff=" + bool1 + "  Taking a picture...");
      capturePicture(paramContext, bool1);
      return;
    case 2:
    }
    Log.i(TAG, "DOUBLE_WINK received!");
  }

  public static enum EyeGesture
  {
    static
    {
      DOUBLE_WINK = new EyeGesture("DOUBLE_WINK", 2);
      BLINK = new EyeGesture("BLINK", 3);
      DOUBLE_BLINK = new EyeGesture("DOUBLE_BLINK", 4);
      DON = new EyeGesture("DON", 5);
      DOFF = new EyeGesture("DOFF", 6);
      EyeGesture[] arrayOfEyeGesture = new EyeGesture[7];
      arrayOfEyeGesture[0] = NO_GESTURE;
      arrayOfEyeGesture[1] = WINK;
      arrayOfEyeGesture[2] = DOUBLE_WINK;
      arrayOfEyeGesture[3] = BLINK;
      arrayOfEyeGesture[4] = DOUBLE_BLINK;
      arrayOfEyeGesture[5] = DON;
      arrayOfEyeGesture[6] = DOFF;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.EyeGestureReceiver
 * JD-Core Version:    0.6.2
 */