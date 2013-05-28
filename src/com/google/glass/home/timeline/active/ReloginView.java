package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.layout;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.active.ActiveItemView;

public class ReloginView extends ActiveItemView
{
  public ReloginView(Context paramContext)
  {
    super(paramContext, OngoingActivityManager.ActivityType.RELOGIN);
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    Intent localIntent = new Intent("com.google.glass.setup.ACTION_RECONFIGURE_ACCOUNT");
    localIntent.addFlags(268435456);
    getContext().startActivity(localIntent);
    return true;
  }

  protected int provideContentView()
  {
    return R.layout.relogin_active_item;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.ReloginView
 * JD-Core Version:    0.6.2
 */