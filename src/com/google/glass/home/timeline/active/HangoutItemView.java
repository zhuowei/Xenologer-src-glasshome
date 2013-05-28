package com.google.glass.home.timeline.active;

import android.content.Context;
import android.util.Log;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.menu;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.active.ActiveItemView;
import com.google.glass.util.HangoutHelper;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public class HangoutItemView extends ActiveItemView
{
  private static final String TAG = HangoutItemView.class.getSimpleName();
  private final HangoutHelper hangoutHelper;

  public HangoutItemView(Context paramContext)
  {
    super(paramContext, OngoingActivityManager.ActivityType.HANGOUT);
    this.hangoutHelper = new HangoutHelper(paramContext);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    if (paramItem.getItemId() == R.id.hangout_menu_resume)
      this.hangoutHelper.bringHangoutToForeground();
    while (true)
    {
      return true;
      if (paramItem.getItemId() == R.id.hangout_menu_exit)
        this.hangoutHelper.exitOngoingHangout();
      else
        Log.d(TAG, "Unknown action. Ignoring.");
    }
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.hangout_menu);
    return true;
  }

  public void onRemove()
  {
    super.onRemove();
    Log.d(TAG, "onRemove");
    this.hangoutHelper.exitOngoingHangout();
  }

  public int provideContentView()
  {
    return R.layout.hangout_item;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.HangoutItemView
 * JD-Core Version:    0.6.2
 */