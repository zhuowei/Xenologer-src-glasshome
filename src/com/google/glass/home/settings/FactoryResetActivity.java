package com.google.glass.home.settings;

import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.layout;

public final class FactoryResetActivity extends GlassActivity
{
  private static final String TAG = FactoryResetActivity.class.getSimpleName();

  public boolean onConfirm()
  {
    Log.w(TAG, "Requesting factory reset");
    startService(new Intent("com.google.glass.deviceadmin.LOCAL_WIPE"));
    return true;
  }

  protected int provideContentView()
  {
    return R.layout.factory_reset_activity;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.FactoryResetActivity
 * JD-Core Version:    0.6.2
 */