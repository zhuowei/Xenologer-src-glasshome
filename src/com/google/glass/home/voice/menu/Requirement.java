package com.google.glass.home.voice.menu;

import com.google.glass.app.GlassError;

public abstract interface Requirement
{
  public abstract GlassError getError(VoiceMenuEnvironment paramVoiceMenuEnvironment);

  public abstract boolean isSatisfied(VoiceMenuEnvironment paramVoiceMenuEnvironment);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.menu.Requirement
 * JD-Core Version:    0.6.2
 */