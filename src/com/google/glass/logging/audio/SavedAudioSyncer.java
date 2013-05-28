package com.google.glass.logging.audio;

import android.content.Context;

public abstract interface SavedAudioSyncer
{
  public abstract void sync(Context paramContext, SavedAudioRecord paramSavedAudioRecord)
    throws SyncFailedException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.SavedAudioSyncer
 * JD-Core Version:    0.6.2
 */