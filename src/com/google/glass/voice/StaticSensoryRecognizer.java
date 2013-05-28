package com.google.glass.voice;

import android.content.Context;
import android.util.Log;
import com.google.glass.util.LogHelper;
import java.util.Iterator;
import java.util.List;

public class StaticSensoryRecognizer extends Sensory
{
  private static final String TAG = StaticSensoryRecognizer.class.getSimpleName();

  StaticSensoryRecognizer(String paramString1, String paramString2)
  {
    this.sensoryContext = nativeInitPhrasespot(paramString1, paramString2);
  }

  public static Sensory newStaticSensoryRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    return new StaticSensoryRecognizer(getPath(paramContext, paramVoiceConfig.recogFile), getPath(paramContext, paramVoiceConfig.searchFile));
  }

  VoiceCommand stringToCommand(String paramString)
  {
    if (paramString == null)
      return null;
    Iterator localIterator = VoiceCommand.staticCommands.iterator();
    while (localIterator.hasNext())
    {
      VoiceCommand localVoiceCommand = (VoiceCommand)localIterator.next();
      if (paramString.equals(localVoiceCommand.getLiteral()))
        return localVoiceCommand;
    }
    Log.e(TAG, "Unknown literal recognized by Sensory");
    LogHelper.logPii(6, TAG, "Unknown literal: " + paramString);
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.StaticSensoryRecognizer
 * JD-Core Version:    0.6.2
 */