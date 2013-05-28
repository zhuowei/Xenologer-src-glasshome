package com.google.glass.location;

import android.content.ComponentName;

class LocationConstants
{
  static final String KEY_NAME = "name";
  static final int MSG_LOCATION_CHANGED = 101;
  static final int MSG_REGISTER_CLIENT = 1;
  static final int MSG_REMOVE_UPDATES = 3;
  static final int MSG_REQUEST_UPDATES = 2;
  static final int NO_LISTENER_ID = -1;
  static final ComponentName SERVICE_COMPONENT = new ComponentName("com.google.glass.home", "com.google.glass.location.LocationService");

  public static String messageTypeToString(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return "UNKNOWN_" + paramInt;
    case 1:
      return "REGISTER_CLIENT";
    case 2:
      return "REQUEST_UPDATES";
    case 3:
      return "REMOVE_UPDATES";
    case 101:
    }
    return "LOCATION_CHANGED";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationConstants
 * JD-Core Version:    0.6.2
 */