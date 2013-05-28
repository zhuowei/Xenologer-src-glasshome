package com.google.glass.camera;

import android.content.Context;
import android.content.Intent;

public class CameraHelper
{
  public static final String ACTION_RECORD_CLIPLET = "com.google.glass.action.RECORD_CLIPLET";
  public static final String ACTION_RECORD_VIDEO = "com.google.glass.action.RECORD_VIDEO";
  public static final String ACTION_TAKE_PICTURE = "com.google.glass.action.TAKE_PICTURE";
  public static final String ACTION_TAKE_PICTURE_FROM_SCREEN_OFF = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF";
  public static final String EXTRA_SHOULD_PLAY_INITIAL_SOUND = "should_play_initial_sound";
  private static final String TAG = CameraHelper.class.getSimpleName();
  private final Context context;

  public CameraHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private void startActivity(Intent paramIntent)
  {
    paramIntent.addFlags(268435456).addFlags(134217728);
    this.context.startActivity(paramIntent);
  }

  public void recordCliplet(boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = new Intent("com.google.glass.action.RECORD_CLIPLET");
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean1);
    localIntent.putExtra("should_play_initial_sound", paramBoolean2);
    startActivity(localIntent);
  }

  public void recordVideo(boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = new Intent("com.google.glass.action.RECORD_VIDEO");
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean1);
    localIntent.putExtra("should_play_initial_sound", paramBoolean2);
    startActivity(localIntent);
  }

  public void takePicture(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    SharedCameraService.prepareCamera(this.context);
    String str;
    Intent localIntent;
    if (paramBoolean1)
    {
      str = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF";
      localIntent = new Intent(str);
      localIntent.putExtra("should_finish_turn_screen_off", paramBoolean2);
      if (paramBoolean3)
        break label66;
    }
    label66: for (boolean bool = true; ; bool = false)
    {
      localIntent.putExtra("should_play_initial_sound", bool);
      startActivity(localIntent);
      return;
      str = "com.google.glass.action.TAKE_PICTURE";
      break;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.CameraHelper
 * JD-Core Version:    0.6.2
 */