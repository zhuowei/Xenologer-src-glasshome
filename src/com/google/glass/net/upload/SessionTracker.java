package com.google.glass.net.upload;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;

public class SessionTracker
{
  private static final String TAG;
  private static final String TRACKING_PREFS_FILENAME = "resumable_upload_tracking_prefs";
  private SharedPreferences prefs;

  static
  {
    if (!SessionTracker.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      TAG = SessionTracker.class.getSimpleName();
      return;
    }
  }

  public SessionTracker(Context paramContext)
  {
    this.prefs = paramContext.getSharedPreferences("resumable_upload_tracking_prefs", 0);
  }

  public boolean clearSessionUri(File paramFile)
  {
    return this.prefs.edit().remove(paramFile.getAbsolutePath()).commit();
  }

  public URI getSessionUri(File paramFile)
  {
    String str1 = paramFile.getAbsolutePath();
    String str2;
    try
    {
      str2 = this.prefs.getString(str1, null);
      if (str2 == null)
      {
        Log.v(TAG, "No URI was previously stored for " + str1 + " -- returning null.");
        return null;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      Log.w(TAG, "Ran into a non-string pref for " + str1 + " -- removing and returning null.");
      this.prefs.edit().remove(str1).commit();
      return null;
    }
    try
    {
      URI localURI = new URI(str2);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      Log.w(TAG, "URI stored in tracking prefs wasn't valid -- returning null!");
    }
    return null;
  }

  public boolean setSessionUri(File paramFile, URI paramURI)
  {
    assert (paramURI != null);
    return this.prefs.edit().putString(paramFile.getAbsolutePath(), paramURI.toString()).commit();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.SessionTracker
 * JD-Core Version:    0.6.2
 */