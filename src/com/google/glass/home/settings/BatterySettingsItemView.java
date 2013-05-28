package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.google.glass.home.R.color;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.BatteryHelper.BatteryState;
import com.google.glass.util.SafeBroadcastReceiver;

public final class BatterySettingsItemView extends SettingsItemView
{
  private static final String[] ACTIONS_TO_REGISTER_RECEIVER_FOR = { "android.intent.action.BATTERY_CHANGED", "android.intent.action.ACTION_POWER_CONNECTED", "android.intent.action.ACTION_POWER_DISCONNECTED" };
  private static final String TAG = BatterySettingsItemView.class.getSimpleName();
  private final BatteryHelper battery;
  private SafeBroadcastReceiver batteryStateReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return BatterySettingsItemView.TAG + "/batteryStateReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(BatterySettingsItemView.TAG, "Intent received: " + paramAnonymousIntent.getAction());
      BatterySettingsItemView.this.updateBattery();
    }
  };
  private final int green;
  private final int red;
  private final int yellow;

  public BatterySettingsItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public BatterySettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BatterySettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.battery = new BatteryHelper(paramContext);
    Resources localResources = paramContext.getResources();
    this.green = localResources.getColor(R.color.state_green);
    this.red = localResources.getColor(R.color.state_red);
    this.yellow = localResources.getColor(R.color.state_yellow);
    LayoutInflater.from(paramContext).inflate(R.layout.battery_settings_item, this);
  }

  private String formatDuration(BatteryHelper.BatteryState paramBatteryState)
  {
    Context localContext = getContext();
    if (-1L == paramBatteryState.timeToDischarge)
      return localContext.getString(R.string.battery_duration_unknown);
    long l1 = Long.valueOf(paramBatteryState.timeToDischarge).longValue();
    long l2 = 0L;
    long l3 = 0L;
    if (l1 >= 60L)
    {
      l3 = l1 / 60L;
      (l1 - 60L * l3);
    }
    if (l3 >= 60L)
    {
      l2 = l3 / 60L;
      l3 -= 60L * l2;
    }
    if (l2 > 0L)
    {
      int j = R.string.battery_duration_hours_minutes;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(l2);
      arrayOfObject2[1] = Long.valueOf(l3);
      return localContext.getString(j, arrayOfObject2);
    }
    int i = R.string.battery_duration_minutes;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Long.valueOf(l3);
    return localContext.getString(i, arrayOfObject1);
  }

  private void updateBattery()
  {
    Log.d(TAG, "Updating battery state.");
    BatteryHelper.BatteryState localBatteryState = this.battery.getCurrentState();
    ((BatteryStateImageView)findViewById(R.id.battery_state_image)).update(localBatteryState);
    TextView localTextView1 = (TextView)findViewById(R.id.battery_state_text);
    TextView localTextView2 = (TextView)findViewById(R.id.battery_state_duration_text);
    TextView localTextView3 = (TextView)findViewById(R.id.battery_state_connect_charger_text);
    localTextView3.setVisibility(8);
    localTextView2.setVisibility(0);
    int i = Math.round(localBatteryState.percent);
    if (localBatteryState.isCharged)
    {
      localTextView1.setText(R.string.battery_charged);
      localTextView1.setTextColor(this.green);
      if (localBatteryState.isPowered)
      {
        localTextView2.setVisibility(8);
        return;
      }
      localTextView2.setText(formatDuration(localBatteryState));
      localTextView2.setTextColor(this.green);
      return;
    }
    int j;
    int k;
    if (i > 30)
    {
      j = this.green;
      k = j;
      Context localContext = getContext();
      int m = R.string.battery_percent;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = String.valueOf(i);
      localTextView1.setText(localContext.getString(m, arrayOfObject));
      if ((!localBatteryState.isCharging) && (!localBatteryState.isPowered))
        break label284;
      localTextView2.setText(R.string.battery_charging);
      k = this.green;
    }
    while (true)
    {
      localTextView1.setTextColor(j);
      localTextView2.setTextColor(k);
      return;
      if (i > 10)
      {
        j = this.yellow;
        break;
      }
      j = this.red;
      localTextView3.setVisibility(0);
      break;
      label284: localTextView2.setText(formatDuration(localBatteryState));
    }
  }

  public void onLoad()
  {
    this.batteryStateReceiver.register(getContext(), ACTIONS_TO_REGISTER_RECEIVER_FOR);
    updateBattery();
  }

  public void onUnload()
  {
    this.batteryStateReceiver.unregister(getContext());
    super.onUnload();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.BatterySettingsItemView
 * JD-Core Version:    0.6.2
 */