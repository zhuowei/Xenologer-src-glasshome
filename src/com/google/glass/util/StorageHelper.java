package com.google.glass.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.common.R.integer;
import com.google.glass.common.R.string;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import java.io.File;

public class StorageHelper
{
  private static final IntentFilter FULL_FILTER = new IntentFilter("android.intent.action.DEVICE_STORAGE_FULL");
  private static final IntentFilter LOW_FILTER = new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW");

  @VisibleForTesting
  protected static final float MEDIUM_THRESHOLD = 0.3F;
  private static final String TAG = StorageHelper.class.getSimpleName();
  private final Context context;
  private final long mediumThreshold;

  public StorageHelper(Context paramContext)
  {
    this.context = paramContext;
    this.mediumThreshold = calculateMediumThreshold();
  }

  public static void initializeThresholds(Context paramContext)
  {
    try
    {
      Resources localResources = paramContext.getResources();
      ContentResolver localContentResolver = paramContext.getContentResolver();
      int i = localResources.getInteger(R.integer.sys_storage_threshold_percentage);
      int j = localResources.getInteger(R.integer.sys_storage_threshold_bytes);
      Settings.Secure.putInt(localContentResolver, "sys_storage_threshold_percentage", i);
      Settings.Secure.putInt(localContentResolver, "sys_storage_full_threshold_bytes", j);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      Log.e(TAG, localSecurityException.getMessage(), localSecurityException);
    }
  }

  private boolean isExternalStorageMedium()
  {
    return getAvailableBytesInExternalStorage() <= this.mediumThreshold;
  }

  @VisibleForTesting
  protected long calculateMediumThreshold()
  {
    String str = Environment.getExternalStorageDirectory().getPath();
    try
    {
      StatFs localStatFs = new StatFs(str);
      long l = localStatFs.getBlockCount();
      int i = localStatFs.getBlockSize();
      return ()(0.3F * (float)(l * i));
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.w(TAG, "Failed to get stats for path: " + str);
      throw localIllegalArgumentException;
    }
  }

  public long getAvailableBytesInExternalStorage()
  {
    String str = Environment.getExternalStorageDirectory().getPath();
    try
    {
      StatFs localStatFs = new StatFs(str);
      long l = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
      Log.v(TAG, "Total size in bytes available: " + l);
      return l;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.w(TAG, "Failed to get stats for path: " + str);
      throw localIllegalArgumentException;
    }
  }

  public State getExternalStorageState()
  {
    if (isExternalStorageFull(this.context))
      return State.FULL;
    if (isExternalStorageLow(this.context))
      return State.LOW;
    if (isExternalStorageMedium())
      return State.MEDIUM;
    return State.GOOD;
  }

  public String getHumanReadableByteCount()
  {
    long l = getAvailableBytesInExternalStorage();
    if (l < 1024)
      return l + " B";
    int i = (int)(Math.log(l) / Math.log(1024));
    String str = String.valueOf("KMGTPE".charAt(i - 1));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Double.valueOf(l / Math.pow(1024, i));
    arrayOfObject[1] = str;
    return String.format("%.1f %sB", arrayOfObject);
  }

  @VisibleForTesting
  protected boolean isExternalStorageFull(Context paramContext)
  {
    return paramContext.registerReceiver(null, FULL_FILTER) != null;
  }

  @VisibleForTesting
  protected boolean isExternalStorageLow(Context paramContext)
  {
    return paramContext.registerReceiver(null, LOW_FILTER) != null;
  }

  public boolean showDialogIfFull()
  {
    if (getExternalStorageState() == State.FULL)
    {
      showFullStorageDialog();
      return true;
    }
    return false;
  }

  public void showFullStorageDialog()
  {
    new FullScreenMessagingDialogHelper(this.context).showFullScreenMessage(this.context.getString(R.string.full_storage_dialog_message), this.context.getString(R.string.storage_dialog_sub_message), FullScreenMessagingDialogHelper.DEFAULT_ICON, true);
    GlassApplication.from(this.context).getSoundManager().playSound(SoundManager.SoundId.ERROR);
  }

  public static enum State
  {
    static
    {
      GOOD = new State("GOOD", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = FULL;
      arrayOfState[1] = LOW;
      arrayOfState[2] = MEDIUM;
      arrayOfState[3] = GOOD;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.StorageHelper
 * JD-Core Version:    0.6.2
 */