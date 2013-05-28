package com.google.glass.home.sync;

import com.google.glass.home.HomeApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.WifiHelper;
import com.google.googlex.glass.common.proto.SyncRequest;
import com.google.googlex.glass.common.proto.SyncRequest.Builder;

abstract class AbstractTimelineSyncHelper
{
  protected final HomeApplication application;
  protected final BatteryHelper batteryHelper;
  protected final PowerHelper powerHelper;
  protected final SyncStatusReporter syncReporter;
  protected final WifiHelper wifiHelper;

  AbstractTimelineSyncHelper(HomeApplication paramHomeApplication, SyncStatusReporter paramSyncStatusReporter, BatteryHelper paramBatteryHelper, PowerHelper paramPowerHelper, WifiHelper paramWifiHelper)
  {
    this.application = paramHomeApplication;
    this.syncReporter = paramSyncStatusReporter;
    this.batteryHelper = paramBatteryHelper;
    this.powerHelper = paramPowerHelper;
    this.wifiHelper = paramWifiHelper;
  }

  protected SyncRequest.Builder createSyncRequestBuilder(SettingsSecure paramSettingsSecure)
  {
    return SyncRequest.newBuilder().setDeviceId(paramSettingsSecure.getString("android_id"));
  }

  protected UserEventHelper getUserEventHelper()
  {
    return this.application.getUserEventHelper();
  }

  protected void logSyncMetrics(UserEventAction paramUserEventAction, long paramLong1, long paramLong2)
  {
    String str1;
    String str2;
    if (this.batteryHelper.isPowered())
    {
      str1 = "1";
      if (!this.powerHelper.isScreenOn())
        break label140;
      str2 = "1";
      label28: if (!this.wifiHelper.isConnected())
        break label147;
    }
    label140: label147: for (String str3 = "1"; ; str3 = "0")
    {
      Long localLong = Long.valueOf(paramLong1);
      Object[] arrayOfObject = new Object[8];
      arrayOfObject[0] = "l";
      arrayOfObject[1] = Long.valueOf(paramLong2);
      arrayOfObject[2] = "p";
      arrayOfObject[3] = str1;
      arrayOfObject[4] = "s";
      arrayOfObject[5] = str2;
      arrayOfObject[6] = "w";
      arrayOfObject[7] = str3;
      String str4 = UserEventHelper.createEventTuple("b", localLong, arrayOfObject);
      this.application.getUserEventHelper().log(paramUserEventAction, str4);
      return;
      str1 = "0";
      break;
      str2 = "0";
      break label28;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.AbstractTimelineSyncHelper
 * JD-Core Version:    0.6.2
 */