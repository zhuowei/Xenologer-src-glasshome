package com.google.glass.home.voice.menu;

import android.content.Context;
import com.google.glass.voice.VoiceCommand;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class VoiceMenuItem
{
  private boolean hasTriggered;
  protected final List<Requirement> requirements;

  public VoiceMenuItem()
  {
    this(Collections.emptyList());
  }

  public VoiceMenuItem(List<Requirement> paramList)
  {
    this.requirements = paramList;
    this.hasTriggered = false;
  }

  public int getContextIconId()
  {
    return 0;
  }

  public String getContextLabel(Context paramContext)
  {
    return null;
  }

  public abstract String getLabel(Context paramContext);

  public boolean isEnabled(VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    Iterator localIterator = this.requirements.iterator();
    while (localIterator.hasNext())
      if (!((Requirement)localIterator.next()).isSatisfied(paramVoiceMenuEnvironment))
        return false;
    return true;
  }

  public abstract boolean matches(VoiceCommand paramVoiceCommand);

  public abstract void onTrigger(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean);

  public abstract String toString();

  public void trigger(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
  {
    if (this.hasTriggered)
      return;
    Iterator localIterator = this.requirements.iterator();
    while (localIterator.hasNext())
    {
      Requirement localRequirement = (Requirement)localIterator.next();
      if (!localRequirement.isSatisfied(paramVoiceMenuEnvironment))
      {
        paramVoiceMenuEnvironment.showError(localRequirement.getError(paramVoiceMenuEnvironment));
        return;
      }
    }
    this.hasTriggered = true;
    onTrigger(paramVoiceMenuEnvironment, paramBoolean);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.menu.VoiceMenuItem
 * JD-Core Version:    0.6.2
 */