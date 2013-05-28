package com.google.glass.home.voice;

import android.text.TextUtils;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.voice.menu.MainMenuCommandItem;
import com.google.glass.home.voice.menu.VoiceMenuEnvironment;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.OnSoundDoneListener;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.InetConnectionState;
import java.util.List;

public abstract class MainMenuActivity extends GlassActivity
  implements VoiceMenuEnvironment
{
  public GlassActivity getContext()
  {
    return this;
  }

  public List<? extends VoiceMenuItem> getMainMenuItems()
  {
    return MainMenuCommandItem.getMainMenuItems(this);
  }

  public boolean isConnected()
  {
    return getGlassApplication().getConnectionState().isConnected();
  }

  public void logUserEvent(UserEventAction paramUserEventAction, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      super.logUserEvent(paramUserEventAction);
    super.logUserEvent(paramUserEventAction, paramString);
  }

  public void playSound(SoundManager.SoundId paramSoundId)
  {
    getSoundManager().playSound(paramSoundId);
  }

  public void playSoundForPendingOpenEndedInput(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      getSoundManager().playSound(SoundManager.SoundId.TAP, new SoundManager.OnSoundDoneListener()
      {
        public void onSoundDone(SoundManager.SoundId paramAnonymousSoundId)
        {
          MainMenuActivity.this.getSoundManager().playSound(SoundManager.SoundId.VOICE_PENDING);
        }
      });
      return;
    }
    getSoundManager().playSound(SoundManager.SoundId.VOICE_PENDING);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.MainMenuActivity
 * JD-Core Version:    0.6.2
 */