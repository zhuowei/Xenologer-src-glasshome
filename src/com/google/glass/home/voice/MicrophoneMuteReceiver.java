package com.google.glass.home.voice;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.util.MicrophoneHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public final class MicrophoneMuteReceiver extends SafeBroadcastReceiver
{
  private static final String TAG = MicrophoneMuteReceiver.class.getSimpleName();

  protected String getTag()
  {
    return TAG;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.google.glass.action.TOGGLE_MICROPHONE_MUTE".equals(str))
    {
      Log.d(getTag(), "Action " + str + " received.");
      Log.d(getTag(), "Toggling Mute. Microphone currently muted? " + MicrophoneHelper.isMuted(paramContext));
      MicrophoneHelper.toggleMute(paramContext);
      Log.d(getTag(), "Mute toggled. Microphone is now muted? " + MicrophoneHelper.isMuted(paramContext));
      return;
    }
    Log.w(getTag(), "Unknown action received: " + str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.MicrophoneMuteReceiver
 * JD-Core Version:    0.6.2
 */