package com.google.glass.home.voice;

import android.content.Context;
import com.google.android.glass.app.VoiceTriggerManager;
import com.google.android.glass.app.VoiceTriggerManager.Trigger;
import com.google.common.collect.Lists;
import com.google.glass.voice.VoiceConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NativeAppVoiceMenuHelper
{
  private static final NativeAppVoiceMenuHelper instance = new NativeAppVoiceMenuHelper();
  private List<String> currentCommands;
  private VoiceConfig mainMenuConfig;

  public static NativeAppVoiceMenuHelper getInstance()
  {
    return instance;
  }

  protected void createMainMenuConfig(Context paramContext)
  {
    this.currentCommands = getNativeAppCommands(paramContext);
    VoiceConfig[] arrayOfVoiceConfig = new VoiceConfig[2];
    arrayOfVoiceConfig[0] = VoiceConfig.getMainMenuConfig();
    arrayOfVoiceConfig[1] = VoiceConfig.newCustomVoiceConfig(paramContext, "NATIVE_APP_COMMANDS", (String[])this.currentCommands.toArray(new String[0]), null);
    this.mainMenuConfig = VoiceConfig.newHybridVoiceConfig(arrayOfVoiceConfig);
  }

  public VoiceConfig getMainMenuConfig(Context paramContext)
  {
    if ((this.mainMenuConfig == null) || (!this.currentCommands.equals(getNativeAppCommands(paramContext))))
      createMainMenuConfig(paramContext);
    return this.mainMenuConfig;
  }

  public List<String> getNativeAppCommands(Context paramContext)
  {
    List localList = getTriggers(paramContext);
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((VoiceTriggerManager.Trigger)localIterator.next()).getKeyword());
    return localArrayList;
  }

  public List<VoiceTriggerManager.Trigger> getTriggers(Context paramContext)
  {
    return new VoiceTriggerManager(paramContext).load();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.NativeAppVoiceMenuHelper
 * JD-Core Version:    0.6.2
 */