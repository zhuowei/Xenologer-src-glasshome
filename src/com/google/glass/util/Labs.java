package com.google.glass.util;

import com.google.common.annotations.VisibleForTesting;
import com.google.glass.hidden.HiddenSystemProperties;
import java.util.Locale;

public class Labs
{

  @VisibleForTesting
  static final int MAX_PROPERTY_LENGTH = 31;

  @VisibleForTesting
  static final String PROPERTY_PREFIX = "persist.lab.";

  public static boolean isEnabled(Feature paramFeature)
  {
    if (paramFeature.isSetByTest())
      return paramFeature.getValueForTest();
    return HiddenSystemProperties.getBoolean(paramFeature.getPropertyKey(), paramFeature.getDefaultValue());
  }

  @VisibleForTesting
  public static void setFeatureForTesting(Feature paramFeature, boolean paramBoolean)
  {
    Assert.assertIsTest();
    paramFeature.setTestValue(paramBoolean);
  }

  public static enum Feature
  {
    private final boolean defaultValue;
    private final String propertyKey;
    private boolean setByTest;
    private boolean valueForTest;

    static
    {
      HO_USE_SVC = new Feature("HO_USE_SVC", 3, true);
      CLIPLET = new Feature("CLIPLET", 4, false);
      HO_BG_WAITING = new Feature("HO_BG_WAITING", 5, false);
      SAVE_AUDIO = new Feature("SAVE_AUDIO", 6, false);
      LOG_POS_SENSORY_REC = new Feature("LOG_POS_SENSORY_REC", 7, true);
      LOG_NEG_SENSORY_REC = new Feature("LOG_NEG_SENSORY_REC", 8, false);
      SEARCH_FEEDBACK = new Feature("SEARCH_FEEDBACK", 9, false);
      BLUETOOTH_HEADSET = new Feature("BLUETOOTH_HEADSET", 10, true);
      DEBUG_LAUNCHER = new Feature("DEBUG_LAUNCHER", 11, false);
      SEARCH_DEV_SERVER = new Feature("SEARCH_DEV_SERVER", 12, false);
      SEARCH_TEST_SERVER = new Feature("SEARCH_TEST_SERVER", 13, false);
      KANNADI_DEV_SERVER = new Feature("KANNADI_DEV_SERVER", 14, false);
      PRODUCTION_SERVERS = new Feature("PRODUCTION_SERVERS", 15, true);
      STAGING_SERVERS = new Feature("STAGING_SERVERS", 16, false);
      TESTING_SERVERS = new Feature("TESTING_SERVERS", 17, true);
      DEV_SERVERS = new Feature("DEV_SERVERS", 18, false);
      UPLOAD_SESSION_MNGR = new Feature("UPLOAD_SESSION_MNGR", 19, false);
      GPS_DEBUG_CARD = new Feature("GPS_DEBUG_CARD", 20, false);
      GPS_IN_BACKGROUND = new Feature("GPS_IN_BACKGROUND", 21, false);
      NAV_USE_LOCAL_GPS = new Feature("NAV_USE_LOCAL_GPS", 22, false);
      NAV_NO_COMPANION = new Feature("NAV_NO_COMPANION", 23, true);
      OK_GLASS_EVERYWHERE = new Feature("OK_GLASS_EVERYWHERE", 24, false);
      CALL_NOISE_CANCEL = new Feature("CALL_NOISE_CANCEL", 25, false);
      AUTO_SHARE_TARGETS = new Feature("AUTO_SHARE_TARGETS", 26, false);
      THIRD_PARTY_VOICE = new Feature("THIRD_PARTY_VOICE", 27, false);
      NATIVE_APP_VOICE = new Feature("NATIVE_APP_VOICE", 28, false);
      SMS_FROM_VOICE_MENU = new Feature("SMS_FROM_VOICE_MENU", 29, true);
      WEB_BROWSING = new Feature("WEB_BROWSING", 30, false);
      DING_ON_LOAD = new Feature("DING_ON_LOAD", 31, false);
      DISABLE_GAZE_ON_MIC = new Feature("DISABLE_GAZE_ON_MIC", 32, true);
      LONG_TAP_TO_SEARCH = new Feature("LONG_TAP_TO_SEARCH", 33, true);
      LONG_TAP_UI_SEARCH = new Feature("LONG_TAP_UI_SEARCH", 34, true);
      COMPANION_API = new Feature("COMPANION_API", 35, false);
      QUICK_QR_CODE = new Feature("QUICK_QR_CODE", 36, false);
      WINK = new Feature("WINK", 37, false);
      SHORT_TIMELINE_POLL = new Feature("SHORT_TIMELINE_POLL", 38, false);
      TOUCH_VOICE_MENU = new Feature("TOUCH_VOICE_MENU", 39, false);
      SEARCH_GWS_FLOW = new Feature("SEARCH_GWS_FLOW", 40, false);
      PHONE_AEC_LOG = new Feature("PHONE_AEC_LOG", 41, false);
      NAV_CONTAMINATE_FIX = new Feature("NAV_CONTAMINATE_FIX", 42, false);
      Feature[] arrayOfFeature = new Feature[43];
      arrayOfFeature[0] = GCAM;
      arrayOfFeature[1] = VSTAB;
      arrayOfFeature[2] = VSTAB_CALIBRATION;
      arrayOfFeature[3] = HO_USE_SVC;
      arrayOfFeature[4] = CLIPLET;
      arrayOfFeature[5] = HO_BG_WAITING;
      arrayOfFeature[6] = SAVE_AUDIO;
      arrayOfFeature[7] = LOG_POS_SENSORY_REC;
      arrayOfFeature[8] = LOG_NEG_SENSORY_REC;
      arrayOfFeature[9] = SEARCH_FEEDBACK;
      arrayOfFeature[10] = BLUETOOTH_HEADSET;
      arrayOfFeature[11] = DEBUG_LAUNCHER;
      arrayOfFeature[12] = SEARCH_DEV_SERVER;
      arrayOfFeature[13] = SEARCH_TEST_SERVER;
      arrayOfFeature[14] = KANNADI_DEV_SERVER;
      arrayOfFeature[15] = PRODUCTION_SERVERS;
      arrayOfFeature[16] = STAGING_SERVERS;
      arrayOfFeature[17] = TESTING_SERVERS;
      arrayOfFeature[18] = DEV_SERVERS;
      arrayOfFeature[19] = UPLOAD_SESSION_MNGR;
      arrayOfFeature[20] = GPS_DEBUG_CARD;
      arrayOfFeature[21] = GPS_IN_BACKGROUND;
      arrayOfFeature[22] = NAV_USE_LOCAL_GPS;
      arrayOfFeature[23] = NAV_NO_COMPANION;
      arrayOfFeature[24] = OK_GLASS_EVERYWHERE;
      arrayOfFeature[25] = CALL_NOISE_CANCEL;
      arrayOfFeature[26] = AUTO_SHARE_TARGETS;
      arrayOfFeature[27] = THIRD_PARTY_VOICE;
      arrayOfFeature[28] = NATIVE_APP_VOICE;
      arrayOfFeature[29] = SMS_FROM_VOICE_MENU;
      arrayOfFeature[30] = WEB_BROWSING;
      arrayOfFeature[31] = DING_ON_LOAD;
      arrayOfFeature[32] = DISABLE_GAZE_ON_MIC;
      arrayOfFeature[33] = LONG_TAP_TO_SEARCH;
      arrayOfFeature[34] = LONG_TAP_UI_SEARCH;
      arrayOfFeature[35] = COMPANION_API;
      arrayOfFeature[36] = QUICK_QR_CODE;
      arrayOfFeature[37] = WINK;
      arrayOfFeature[38] = SHORT_TIMELINE_POLL;
      arrayOfFeature[39] = TOUCH_VOICE_MENU;
      arrayOfFeature[40] = SEARCH_GWS_FLOW;
      arrayOfFeature[41] = PHONE_AEC_LOG;
      arrayOfFeature[42] = NAV_CONTAMINATE_FIX;
    }

    private Feature(boolean paramBoolean)
    {
      this.defaultValue = paramBoolean;
      this.propertyKey = ("persist.lab." + toString().toLowerCase(Locale.US));
      if (this.propertyKey.length() <= 31);
      for (boolean bool1 = true; ; bool1 = false)
      {
        Assert.assertTrue(bool1);
        this.setByTest = false;
        this.valueForTest = paramBoolean;
        return;
      }
    }

    public boolean getDefaultValue()
    {
      return this.defaultValue;
    }

    public String getPropertyKey()
    {
      return this.propertyKey;
    }

    public boolean getValueForTest()
    {
      return this.valueForTest;
    }

    public boolean isSetByTest()
    {
      return this.setByTest;
    }

    public void setTestValue(boolean paramBoolean)
    {
      this.setByTest = true;
      this.valueForTest = paramBoolean;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Labs
 * JD-Core Version:    0.6.2
 */