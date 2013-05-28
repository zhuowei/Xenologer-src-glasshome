package com.google.android.libraries.barhopper;

import android.graphics.Point;
import android.graphics.Rect;

public class Barcode
{
  public static final int CODABAR = 4;
  public static final int CODE_128 = 1;
  public static final int CODE_39 = 2;
  public static final int CODE_93 = 3;
  public static final int CONTACT_INFO = 1;
  public static final int DATA_MATRIX = 5;
  public static final int EAN_13 = 6;
  public static final int EAN_8 = 7;
  public static final int EMAIL = 2;
  public static final int ISBN = 3;
  public static final int ITF = 8;
  public static final int PHONE = 4;
  public static final int PRODUCT = 5;
  public static final int QR_CODE = 9;
  public static final int SMS = 6;
  public static final int TEXT = 7;
  public static final int UPC_A = 10;
  public static final int UPC_E = 11;
  public static final int URL = 8;
  public static final int WIFI = 9;
  public Point[] cornerPoints;
  public String displayValue;
  public int format;
  public String rawValue;
  public int valueFormat;
  public WiFi wifi;

  public Rect getBoundingBox()
  {
    int i = 2147483647;
    int j = -2147483648;
    int k = 2147483647;
    int m = -2147483648;
    for (int n = 0; n < this.cornerPoints.length; n++)
    {
      Point localPoint = this.cornerPoints[n];
      i = Math.min(i, localPoint.x);
      j = Math.max(j, localPoint.x);
      k = Math.min(k, localPoint.y);
      m = Math.max(m, localPoint.y);
    }
    return new Rect(i, k, j, m);
  }

  public static class WiFi
  {
    public static final int OPEN = 1;
    public static final int WEP = 3;
    public static final int WPA = 2;
    public int encryptionType;
    public String password;
    public String ssid;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.libraries.barhopper.Barcode
 * JD-Core Version:    0.6.2
 */