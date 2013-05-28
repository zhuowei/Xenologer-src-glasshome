package com.google.glass.home.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.glass.home.R.drawable;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.BatteryHelper.BatteryState;

public class BatteryStateImageView extends ImageView
{
  private static final int[] CHARGING = arrayOfInt2;
  private static final int[] DISCHARGING;
  private final BatteryHelper battery;

  static
  {
    int[] arrayOfInt1 = new int[11];
    arrayOfInt1[0] = R.drawable.ic_battery_discharging_smaller_0_big;
    arrayOfInt1[1] = R.drawable.ic_battery_discharging_smaller_10_big;
    arrayOfInt1[2] = R.drawable.ic_battery_discharging_smaller_20_big;
    arrayOfInt1[3] = R.drawable.ic_battery_discharging_smaller_30_big;
    arrayOfInt1[4] = R.drawable.ic_battery_discharging_smaller_40_big;
    arrayOfInt1[5] = R.drawable.ic_battery_discharging_smaller_50_big;
    arrayOfInt1[6] = R.drawable.ic_battery_discharging_smaller_60_big;
    arrayOfInt1[7] = R.drawable.ic_battery_discharging_smaller_70_big;
    arrayOfInt1[8] = R.drawable.ic_battery_discharging_smaller_80_big;
    arrayOfInt1[9] = R.drawable.ic_battery_discharging_smaller_90_big;
    arrayOfInt1[10] = R.drawable.ic_battery_discharging_smaller_100_big;
    DISCHARGING = arrayOfInt1;
    int[] arrayOfInt2 = new int[11];
    arrayOfInt2[0] = R.drawable.ic_battery_charging_smaller_0_big;
    arrayOfInt2[1] = R.drawable.ic_battery_charging_smaller_10_big;
    arrayOfInt2[2] = R.drawable.ic_battery_charging_smaller_20_big;
    arrayOfInt2[3] = R.drawable.ic_battery_charging_smaller_30_big;
    arrayOfInt2[4] = R.drawable.ic_battery_charging_smaller_40_big;
    arrayOfInt2[5] = R.drawable.ic_battery_charging_smaller_50_big;
    arrayOfInt2[6] = R.drawable.ic_battery_charging_smaller_60_big;
    arrayOfInt2[7] = R.drawable.ic_battery_charging_smaller_70_big;
    arrayOfInt2[8] = R.drawable.ic_battery_charging_smaller_80_big;
    arrayOfInt2[9] = R.drawable.ic_battery_charging_smaller_90_big;
    arrayOfInt2[10] = R.drawable.ic_battery_charging_smaller_100_big;
  }

  public BatteryStateImageView(Context paramContext)
  {
    this(paramContext, null);
  }

  public BatteryStateImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BatteryStateImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.battery = new BatteryHelper(paramContext);
  }

  public void update()
  {
    update(this.battery.getCurrentState());
  }

  public void update(BatteryHelper.BatteryState paramBatteryState)
  {
    if ((paramBatteryState.isCharging) || (paramBatteryState.isPowered));
    int i;
    for (int[] arrayOfInt = CHARGING; ; arrayOfInt = DISCHARGING)
    {
      i = Math.round(paramBatteryState.percent);
      if (!paramBatteryState.isCharged)
        break;
      setImageResource(arrayOfInt[(-1 + arrayOfInt.length)]);
      return;
    }
    setImageResource(arrayOfInt[Math.max(Math.min(i / 10, 10), 0)]);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.BatteryStateImageView
 * JD-Core Version:    0.6.2
 */