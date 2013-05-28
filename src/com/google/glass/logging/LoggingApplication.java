package com.google.glass.logging;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import com.google.glass.app.GlassApplication;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.RemoteMessenger;
import java.io.File;

public class LoggingApplication extends GlassApplication
{
  private static final String CACHED_FILES_DIRECTORY = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "glass_bugreports";
  private static final int MAX_NUM_SDCARD_ATTACHMENTS = 10000;
  private static final long MAX_SIZE_SDCARD_FILES = 1073741824L;
  private RemoteMessenger companionMessenger;

  public static LoggingApplication from(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if ((localContext instanceof LoggingApplication))
      return (LoggingApplication)localContext;
    throw new IllegalArgumentException("The context must be a child of the LoggingApplication context.");
  }

  public RemoteMessenger getCompanionMessenger()
  {
    return this.companionMessenger;
  }

  public void onCreate()
  {
    super.onCreate();
    this.companionMessenger = new RemoteMessenger(this, new Intent("com.google.glass.companion.MESSENGER"));
  }

  protected void setupCachedFilesManager()
  {
    CachedFilesManager.setSharedInstance(new CachedFilesManager(CACHED_FILES_DIRECTORY, 1073741824L, 10000));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.LoggingApplication
 * JD-Core Version:    0.6.2
 */