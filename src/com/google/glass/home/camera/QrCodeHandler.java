package com.google.glass.home.camera;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.libraries.barhopper.Barcode;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.companion.CompanionService;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.util.GuideHelper;
import com.google.glass.util.HangoutHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class QrCodeHandler
{
  private static final String TAG = QrCodeHandler.class.getSimpleName();
  private BluetoothDevice companionDeviceToPair;
  private final Context context;
  private final GuideHelper guideHelper;
  private final HangoutHelper hangoutHelper;
  private final boolean qrLabEnabled;
  private final UserEventHelper userEventHelper;

  public QrCodeHandler(Context paramContext)
  {
    this.context = paramContext;
    this.userEventHelper = GlassApplication.from(paramContext).getUserEventHelper();
    this.hangoutHelper = new HangoutHelper(paramContext);
    this.guideHelper = new GuideHelper(paramContext);
    this.qrLabEnabled = Labs.isEnabled(Labs.Feature.QUICK_QR_CODE);
  }

  private boolean handleEmail(String paramString)
  {
    Log.d(TAG, "Would initiate email here");
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("TO_ID", paramString);
    localIntent.putExtra("MESSAGE_TYPE", 1);
    this.context.startActivity(localIntent);
    return true;
  }

  private boolean handleGeo(String paramString)
  {
    if (HomeApplication.from(this.context).isNavigationAllowed())
    {
      NavigationLauncher.navigate(paramString, this.context, true);
      return true;
    }
    return false;
  }

  private boolean handleGlasscast(String paramString)
  {
    String str = paramString.substring(0, 2) + ":" + paramString.substring(2, 4) + ":" + paramString.substring(4, 6) + ":" + paramString.substring(6, 8) + ":" + paramString.substring(8, 10) + ":" + paramString.substring(10, 12);
    this.companionDeviceToPair = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str);
    Log.d(TAG, "Setting up companion device to start pairing & screencast.");
    CompanionService localCompanionService = HomeApplication.from(this.context).getCompanionService();
    if (localCompanionService != null)
      localCompanionService.setupScreencastAndPair(this.companionDeviceToPair);
    while (true)
    {
      return true;
      Log.e(TAG, "Wasn't able to get a valid CompanionService reference.");
    }
  }

  private boolean handleGuide(String paramString)
  {
    Log.d(TAG, "Sending intent to guide");
    try
    {
      this.guideHelper.showAppointment(paramString);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.d(TAG, "Guide app is not installed. Is this a guide device?");
    }
    return false;
  }

  private boolean handleHangout(String paramString)
  {
    this.hangoutHelper.joinHangout(paramString, null, false);
    return true;
  }

  private boolean handleLink(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    this.context.startActivity(localIntent);
    return true;
  }

  private boolean handlePhoneCall(String paramString)
  {
    Log.d(TAG, "Initiating phone call");
    BluetoothHeadset.broadcastDial(this.context, paramString);
    return true;
  }

  private boolean handleSMS(String paramString)
  {
    Log.d(TAG, "Would initiate sms here");
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("TO_ID", paramString);
    localIntent.putExtra("MESSAGE_TYPE", 2);
    this.context.startActivity(localIntent);
    return true;
  }

  private boolean handleSpeak(String paramString)
  {
    try
    {
      ((HomeApplication)this.context.getApplicationContext()).speakText(paramString);
      return true;
    }
    catch (Exception localException)
    {
      Log.e(TAG, "Could not speak barcode text", localException);
    }
    return false;
  }

  public boolean handle(Barcode paramBarcode)
  {
    LogHelper.logPii(3, TAG, "Checking barcode value=" + paramBarcode.rawValue);
    Pair localPair = Type.match(paramBarcode);
    if (localPair == null)
      return false;
    if ((((Type)localPair.first).requiresLab) && (!this.qrLabEnabled))
      return false;
    Log.d(TAG, "Found QR code of type " + localPair.first);
    if (((Type)localPair.first).userEvent != null)
      this.userEventHelper.log(UserEventAction.BARCODE_PICTURE_SCAN, ((Type)localPair.first).userEvent);
    switch (1.$SwitchMap$com$google$glass$home$camera$QrCodeHandler$Type[((Type)localPair.first).ordinal()])
    {
    default:
      return false;
    case 1:
      return handleHangout((String)localPair.second);
    case 2:
      return handleGlasscast((String)localPair.second);
    case 3:
      return handleGeo((String)localPair.second);
    case 4:
      return handleSpeak((String)localPair.second);
    case 5:
      return handleLink((String)localPair.second);
    case 6:
      return handlePhoneCall((String)localPair.second);
    case 7:
      return handleEmail((String)localPair.second);
    case 8:
      return handleGuide((String)localPair.second);
    case 9:
    }
    return handleSMS((String)localPair.second);
  }

  private static enum Type
  {
    private final Pattern prefixPattern;
    private final boolean requiresLab;
    private final String userEvent;

    static
    {
      GLASSCAST = new Type("GLASSCAST", 1, "^GLASSCAST:([a-fA-F0-9]{12})$", false, "2");
      GEO = new Type("GEO", 2, "^GEO:(.*)$", true, "3");
      SPEAK = new Type("SPEAK", 3, "^SPEAK:(.*)$", true, "4");
      PHONE = new Type("PHONE", 4, "^TEL:([+0-9]{5,24})$", true, "5");
      LINK = new Type("LINK", 5, "^(HTTPS?://.+)$", true, "6");
      EMAIL = new Type("EMAIL", 6, "^MAILTO:(.+)$", true, "7");
      GUIDE = new Type("GUIDE", 7, "^GUIDE:(.+)$", true, null);
      SMS = new Type("SMS", 8, "^SMS:([+0-9]{3,24})$", true, "8");
      Type[] arrayOfType = new Type[9];
      arrayOfType[0] = HANGOUT;
      arrayOfType[1] = GLASSCAST;
      arrayOfType[2] = GEO;
      arrayOfType[3] = SPEAK;
      arrayOfType[4] = PHONE;
      arrayOfType[5] = LINK;
      arrayOfType[6] = EMAIL;
      arrayOfType[7] = GUIDE;
      arrayOfType[8] = SMS;
    }

    private Type(String paramString1, boolean paramBoolean, String paramString2)
    {
      this.prefixPattern = Pattern.compile(paramString1, 2);
      this.requiresLab = paramBoolean;
      this.userEvent = paramString2;
    }

    static Pair<Type, String> match(Barcode paramBarcode)
    {
      String str1 = paramBarcode.rawValue;
      Type[] arrayOfType = values();
      int i = arrayOfType.length;
      for (int j = 0; ; j++)
      {
        Type localType;
        String str2;
        if (j < i)
        {
          localType = arrayOfType[j];
          Matcher localMatcher = localType.prefixPattern.matcher(str1);
          if (!localMatcher.find())
            continue;
          str2 = localMatcher.group(1);
          if (!TextUtils.isEmpty(str2));
        }
        else
        {
          return null;
        }
        return Pair.create(localType, str2);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.camera.QrCodeHandler
 * JD-Core Version:    0.6.2
 */