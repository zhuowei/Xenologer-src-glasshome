package com.google.glass.home.voice.menu;

import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.voice.VoiceConfig;
import java.util.List;

public abstract interface VoiceMenuEnvironment
{
  public abstract GlassActivity getContext();

  public abstract VoiceConfig getVoiceConfig();

  public abstract boolean isConnected();

  public abstract void logUserEvent(UserEventAction paramUserEventAction, String paramString);

  public abstract void playSound(SoundManager.SoundId paramSoundId);

  public abstract void playSoundForPendingOpenEndedInput(boolean paramBoolean);

  public abstract void preloadVoiceConfig(VoiceConfig paramVoiceConfig);

  public abstract void refeedLastVoiceCommand();

  public abstract void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  public abstract void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, List<? extends VoiceMenuItem> paramList);

  public abstract void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  public abstract void setAnimateOnNextPause(boolean paramBoolean);

  public abstract void setVoiceConfig(VoiceConfig paramVoiceConfig);

  public abstract void showError(GlassError paramGlassError);

  public abstract void showProgressBar();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.menu.VoiceMenuEnvironment
 * JD-Core Version:    0.6.2
 */