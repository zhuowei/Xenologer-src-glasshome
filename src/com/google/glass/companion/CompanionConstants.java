package com.google.glass.companion;

import java.util.UUID;

public class CompanionConstants
{
  public static final String ACTION_SETUP_WIFI = "com.google.glass.companion.SETUP_WIFI";
  public static final String EXTRA_SETUP_WIFI = "wifi_setup_string";
  public static final String INTENT_MESSENGER = "com.google.glass.companion.MESSENGER";
  public static final String KEY_ENVELOPE_PAYLOAD = "Payload";
  public static final String KEY_REPLYABLE_ID = "ReplyableId";
  public static final UUID SECURE_UUID = UUID.fromString("F15CC914-E4BC-45CE-9930-CB7695385850");
  public static final String SOCKET_NAME = "Companion";
  public static final int VERSION = 6;
  static final int VERSION_BITS = 255;
  static final int VERSION_SHIFT = 16;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionConstants
 * JD-Core Version:    0.6.2
 */