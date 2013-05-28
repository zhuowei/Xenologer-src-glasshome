package com.google.glass.home.settings;

import com.google.glass.home.R.drawable;

public class WifiLevels
{
  private static final int[] WIFI_LEVELS = arrayOfInt;

  static
  {
    int[] arrayOfInt = new int[10];
    arrayOfInt[0] = R.drawable.ic_wifi0_big;
    arrayOfInt[1] = R.drawable.ic_wifi1_big;
    arrayOfInt[2] = R.drawable.ic_wifi2_big;
    arrayOfInt[3] = R.drawable.ic_wifi3_big;
    arrayOfInt[4] = R.drawable.ic_wifi4_big;
    arrayOfInt[5] = R.drawable.ic_wifi1_warn_big;
    arrayOfInt[6] = R.drawable.ic_wifi1_warn_big;
    arrayOfInt[7] = R.drawable.ic_wifi2_warn_big;
    arrayOfInt[8] = R.drawable.ic_wifi3_warn_big;
    arrayOfInt[9] = R.drawable.ic_wifi4_warn_big;
  }

  public int getImageResourceForStrength(int paramInt)
  {
    return WIFI_LEVELS[paramInt];
  }

  public int getNumWifiLevels()
  {
    return WIFI_LEVELS.length / 2;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiLevels
 * JD-Core Version:    0.6.2
 */