package com.google.glass.companion;

import android.util.Log;
import com.google.glass.util.PhoneNumberUtils;

public class CompanionUtils
{
  private static final String TAG = CompanionUtils.class.getSimpleName();

  public static String getComponentFromSource(String paramString)
  {
    if (paramString.startsWith("companion:"))
      return paramString.substring("companion:".length());
    Log.v(TAG, "not a companion component.");
    return null;
  }

  public static int getMajorVersion(int paramInt)
  {
    return paramInt & 0xFF;
  }

  public static int getMinorVersion(int paramInt)
  {
    return 0xFF & paramInt >> 16;
  }

  public static String getSmsBundleId(String paramString)
  {
    return PhoneNumberUtils.formatPhoneNumberForDisplay(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionUtils
 * JD-Core Version:    0.6.2
 */