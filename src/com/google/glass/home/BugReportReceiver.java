package com.google.glass.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.glass.common.R.string;
import com.google.glass.util.BuildHelper;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;

public final class BugReportReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!BuildHelper.isUser())
    {
      Feedback.show(paramContext, paramContext.getString(R.string.bugreport_title_manual), Feedback.RecoveryAction.SHOULD_CONTINUE, true, true, null);
      abortBroadcast();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.BugReportReceiver
 * JD-Core Version:    0.6.2
 */