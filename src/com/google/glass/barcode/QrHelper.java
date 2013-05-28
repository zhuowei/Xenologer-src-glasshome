package com.google.glass.barcode;

import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.barhopper.Barcode;
import com.google.android.libraries.barhopper.Barcode.WiFi;

public class QrHelper
{
  public static final String ACTION_PROCESS_BARCODE = "com.google.glass.action.PROCESS_BARCODE";
  private static final String EXTRA_DISPLAY_VALUE = "display_value";
  private static final String EXTRA_FORMAT = "format";
  private static final String EXTRA_HAS_WIFI = "has_wifi";
  private static final String EXTRA_RAW_VALUE = "raw_value";
  private static final String EXTRA_VALUE_FORMAT = "value_format";
  private static final String EXTRA_WIFI_ENCRYPTION_TYPE = "wifi_encryption_type";
  private static final String EXTRA_WIFI_PASSWORD = "wifi_password";
  private static final String EXTRA_WIFI_SSID = "wifi_ssid";
  private final Context context;

  public QrHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public Barcode fromIntent(Intent paramIntent)
  {
    Barcode localBarcode = new Barcode();
    localBarcode.rawValue = paramIntent.getStringExtra("raw_value");
    localBarcode.displayValue = paramIntent.getStringExtra("display_value");
    localBarcode.valueFormat = paramIntent.getIntExtra("value_format", 0);
    localBarcode.format = paramIntent.getIntExtra("format", 0);
    if (paramIntent.getBooleanExtra("has_wifi", false))
    {
      localBarcode.wifi = new Barcode.WiFi();
      localBarcode.wifi.encryptionType = paramIntent.getIntExtra("wifi_encryption_type", 1);
      localBarcode.wifi.password = paramIntent.getStringExtra("wifi_password");
      localBarcode.wifi.ssid = paramIntent.getStringExtra("wifi_ssid");
    }
    return localBarcode;
  }

  public void sendBarcode(Barcode paramBarcode)
  {
    Intent localIntent = new Intent("com.google.glass.action.PROCESS_BARCODE");
    localIntent.putExtra("raw_value", paramBarcode.rawValue);
    localIntent.putExtra("display_value", paramBarcode.displayValue);
    localIntent.putExtra("value_format", paramBarcode.valueFormat);
    localIntent.putExtra("format", paramBarcode.format);
    if (paramBarcode.wifi != null)
    {
      localIntent.putExtra("has_wifi", true);
      localIntent.putExtra("wifi_encryption_type", paramBarcode.wifi.encryptionType);
      localIntent.putExtra("wifi_password", paramBarcode.wifi.password);
      localIntent.putExtra("wifi_ssid", paramBarcode.wifi.ssid);
    }
    while (true)
    {
      this.context.sendBroadcast(localIntent);
      return;
      localIntent.putExtra("has_wifi", false);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.QrHelper
 * JD-Core Version:    0.6.2
 */