package com.google.android.speech;

import android.util.Pair;
import com.google.android.speech.engine.RecognitionEngine;
import java.util.List;

public abstract interface RecognitionEngineStore
{
  public abstract List<Pair<Integer, RecognitionEngine>> getEngines(List<Integer> paramList);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.RecognitionEngineStore
 * JD-Core Version:    0.6.2
 */