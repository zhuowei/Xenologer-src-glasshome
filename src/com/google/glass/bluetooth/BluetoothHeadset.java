package com.google.glass.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassError.OnConfirmAction;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.string;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PhoneNumberUtils;

public abstract class BluetoothHeadset
{
  public static final String ACTION_ACCEPT_CALL = "com.google.glass.action.ACCEPT_CALL";
  public static final String ACTION_CALLER_IDENTITY = "com.google.glass.action.CALLER_IDENTITY";
  public static final String ACTION_CALL_DIAL = "com.google.glass.action.CALL_DIAL";
  public static final String ACTION_CALL_ERROR = "com.google.glass.action.CALL_ERROR";
  public static final String ACTION_CALL_REDIAL = "com.google.glass.action.CALL_REDIAL";
  public static final String ACTION_CALL_RING = "com.google.glass.action.CALL_RING";
  public static final String ACTION_CALL_SETUP_STATE = "com.google.glass.action.CALL_SETUP_STATE";
  public static final String ACTION_CALL_STATE = "com.google.glass.action.CALL_STATE";
  public static final String ACTION_CONNECT = "com.google.glass.action.CONNECT_HEADSET";
  public static final String ACTION_CONNECT_SCO = "com.google.glass.action.CONNECT_HEADSET_SCO";
  public static final String ACTION_HEADSET_STATE = "com.google.glass.action.HEADSET_STATE";
  public static final String ACTION_REJECT_CALL = "com.google.glass.action.REJECT_CALL";
  public static final String ACTION_VOICE_RECOGNITION = "com.google.glass.action.BLUETOOTH_VOICE_RECOGNITION";
  public static final String ACTION_VOLUME = "com.google.glass.action.BLUETOOTH_VOLUME";
  public static final int CALL_ERROR_AG_FAILURE = 0;
  public static final int CALL_ERROR_DIAL_STRING_TOO_LONG = 26;
  public static final int CALL_ERROR_INCORRECT_PASSWORD = 16;
  public static final int CALL_ERROR_INVALID_CHARACTERS_IN_DIAL_STRING = 27;
  public static final int CALL_ERROR_INVALID_CHARACTERS_IN_TEXT_STRING = 25;
  public static final int CALL_ERROR_INVALID_INDEX = 21;
  public static final int CALL_ERROR_MEMORY_FAILURE = 23;
  public static final int CALL_ERROR_MEMORY_FULL = 20;
  public static final int CALL_ERROR_NETWORK_NOT_ALLOWED_EMERGENCY_CALLS_ONLY = 32;
  public static final int CALL_ERROR_NONE = -1;
  public static final int CALL_ERROR_NO_CONNECTION_TO_PHONE = 1;
  public static final int CALL_ERROR_NO_NETWORK_SERVICE = 30;
  public static final int CALL_ERROR_OPERATION_NOT_ALLOWED = 3;
  public static final int CALL_ERROR_OPERATION_NOT_SUPPORT = 4;
  public static final int CALL_ERROR_PH_SIM_PIN_REQUIRED = 5;
  public static final int CALL_ERROR_SIM_BUSY = 14;
  public static final int CALL_ERROR_SIM_FAILURE = 13;
  public static final int CALL_ERROR_SIM_NOT_INSERTED = 10;
  public static final int CALL_ERROR_SIM_PIN2_REQUIRED = 17;
  public static final int CALL_ERROR_SIM_PIN_REQUIRED = 11;
  public static final int CALL_ERROR_SIM_PUK2_REQUIRED = 18;
  public static final int CALL_ERROR_SIM_PUK_REQUIRED = 12;
  public static final int CALL_ERROR_TEXT_STRING_TOO_LONG = 24;
  public static final int CALL_SETUP_STATE_INCOMING = 1;
  public static final int CALL_SETUP_STATE_NONE = 0;
  public static final int CALL_SETUP_STATE_OUTGOING = 2;
  public static final int CALL_SETUP_STATE_REMOTE_PARTY_ALERTED = 3;
  public static final int CALL_STATE_IN_CALL = 1;
  public static final int CALL_STATE_NONE = 0;
  public static final String EXTRA_CALL_ERROR = "com.google.glass.extra.CALL_ERROR";
  public static final String EXTRA_CALL_START_TIME = "com.google.glass.extra.CALL_START_TIME";
  public static final String EXTRA_ENABLE_VOICE_RECOGNITION = "com.google.glass.extra.ENABLE_VOICE_RECOGNITION";
  public static final String EXTRA_LOCAL_RINGTONE = "com.google.glass.extra.LOCAL_RINGTONE";
  public static final String EXTRA_PHONE_NUMBER = "com.google.glass.extra.PHONE_NUMBER";
  public static final String EXTRA_PREVIOUS_STATE = "com.google.glass.extra.PREVIOUS_STATE";
  public static final String EXTRA_STATE = "com.google.glass.extra.STATE";
  public static final String EXTRA_VOLUME = "com.google.glass.extra.VOLUME";
  public static final int HEADSET_STATE_CONNECTED = 1;
  public static final int HEADSET_STATE_DISCONNECTED;
  private static final String TAG = BluetoothHeadset.class.getSimpleName();

  public static boolean attemptDial(GlassActivity paramGlassActivity, String paramString)
  {
    GlassError localGlassError;
    if (Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET))
    {
      localGlassError = new GlassError().setIconId(R.drawable.ic_exclamation_big);
      if (!TextUtils.isEmpty(paramString))
        break label51;
      localGlassError.setPrimaryMessageId(R.string.error_no_phone_number).setSecondaryMessageId(R.string.error_edit_contacts);
    }
    while (true)
    {
      localGlassError.show(paramGlassActivity);
      return false;
      label51: if (getHeadsetState(paramGlassActivity) != 1)
      {
        localGlassError.setPrimaryMessageId(R.string.error_bluetooth_headset_not_active).setSecondaryMessageId(R.string.error_tap_connection_settings).setOnConfirmAction(GlassError.OnConfirmAction.GO_TO_SETTINGS);
      }
      else
      {
        if (!isInCallOrCallSetup(paramGlassActivity))
          break;
        localGlassError.setPrimaryMessageId(R.string.error_phone_in_use).setAutoHide(true);
      }
    }
    broadcastDial(paramGlassActivity, paramString);
    return true;
  }

  public static void broadcastAcceptCall(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.ACCEPT_CALL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastCallSetupState(Context paramContext, int paramInt, boolean paramBoolean)
  {
    int i = getCallSetupState(paramContext);
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.STATE", paramInt);
    localIntent.putExtra("com.google.glass.extra.PREVIOUS_STATE", i);
    localIntent.putExtra("com.google.glass.extra.LOCAL_RINGTONE", paramBoolean);
    localIntent.setAction("com.google.glass.action.CALL_SETUP_STATE");
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static void broadcastCallState(Context paramContext, int paramInt, String paramString)
  {
    Intent localIntent = new Intent();
    if (paramString != null)
      localIntent.putExtra("com.google.glass.extra.PHONE_NUMBER", paramString);
    if (paramInt == 1)
    {
      long l = SystemClock.uptimeMillis();
      Log.d(TAG, "New call started at: " + l);
      localIntent.putExtra("com.google.glass.extra.CALL_START_TIME", l);
    }
    localIntent.putExtra("com.google.glass.extra.STATE", paramInt);
    localIntent.setAction("com.google.glass.action.CALL_STATE");
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static void broadcastCallerId(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.PHONE_NUMBER", paramString);
    localIntent.setAction("com.google.glass.action.CALLER_IDENTITY");
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static void broadcastDial(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.PHONE_NUMBER", PhoneNumberUtils.formatPhoneNumberForDial(paramString));
    localIntent.setAction("com.google.glass.action.CALL_DIAL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastError(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent("com.google.glass.action.CALL_ERROR");
    localIntent.putExtra("com.google.glass.extra.CALL_ERROR", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastHeadsetState(Context paramContext, int paramInt, BluetoothDevice paramBluetoothDevice)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.STATE", paramInt);
    localIntent.putExtra("android.bluetooth.device.extra.DEVICE", paramBluetoothDevice);
    localIntent.setAction("com.google.glass.action.HEADSET_STATE");
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static void broadcastRejectCall(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.REJECT_CALL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastRing(Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.action.CALL_RING"));
  }

  public static void brodcastRedial(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.CALL_REDIAL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void clearCallerId(Context paramContext)
  {
    paramContext.removeStickyBroadcast(new Intent("com.google.glass.action.CALLER_IDENTITY"));
  }

  public static int getCallSetupState(Context paramContext)
  {
    return getCallSetupState(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALL_SETUP_STATE"));
  }

  public static int getCallSetupState(Intent paramIntent)
  {
    if (paramIntent == null)
      return 0;
    return paramIntent.getIntExtra("com.google.glass.extra.STATE", 0);
  }

  public static long getCallStartTime(Context paramContext)
  {
    Intent localIntent = getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALL_STATE");
    if ((localIntent != null) && (localIntent.getIntExtra("com.google.glass.extra.STATE", 0) == 1))
      return localIntent.getLongExtra("com.google.glass.extra.CALL_START_TIME", SystemClock.uptimeMillis());
    return SystemClock.uptimeMillis();
  }

  public static String getCallerId(Context paramContext)
  {
    return getCallerId(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALLER_IDENTITY"));
  }

  public static String getCallerId(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.hasExtra("com.google.glass.extra.PHONE_NUMBER")))
      return paramIntent.getStringExtra("com.google.glass.extra.PHONE_NUMBER");
    return null;
  }

  public static int getHeadsetState(Context paramContext)
  {
    return getHeadsetState(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.HEADSET_STATE"));
  }

  public static int getHeadsetState(Intent paramIntent)
  {
    if (paramIntent == null)
      return 0;
    return paramIntent.getIntExtra("com.google.glass.extra.STATE", 0);
  }

  private static Intent getIntentFromStickyBroadcast(Context paramContext, String paramString)
  {
    return paramContext.getApplicationContext().registerReceiver(null, new IntentFilter(paramString));
  }

  public static boolean getLocalRingtone(Context paramContext)
  {
    return getLocalRingtone(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALL_SETUP_STATE"));
  }

  public static boolean getLocalRingtone(Intent paramIntent)
  {
    if (paramIntent == null)
      return true;
    return paramIntent.getBooleanExtra("com.google.glass.extra.LOCAL_RINGTONE", true);
  }

  public static int getPreviousCallSetupState(Context paramContext)
  {
    Intent localIntent = getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALL_SETUP_STATE");
    if (localIntent == null)
      return 0;
    return localIntent.getIntExtra("com.google.glass.extra.PREVIOUS_STATE", 0);
  }

  public static boolean isInCall(Context paramContext)
  {
    return isInCall(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.CALL_STATE"));
  }

  public static boolean isInCall(Intent paramIntent)
  {
    int i = 1;
    if (paramIntent == null)
      return false;
    if (paramIntent.getIntExtra("com.google.glass.extra.STATE", 0) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public static boolean isInCallOrCallSetup(Context paramContext)
  {
    return (getCallSetupState(paramContext) != 0) || (isInCall(paramContext));
  }

  public static boolean lastCallSetupWasOutgoing(Context paramContext)
  {
    int i = getPreviousCallSetupState(paramContext);
    return (i == 2) || (i == 3);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothHeadset
 * JD-Core Version:    0.6.2
 */