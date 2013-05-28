package com.google.glass.barcode;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.libraries.barhopper.Barcode;
import com.google.android.libraries.barhopper.Barhopper;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Arrays;

public class BarcodeUtil
{
  private static final int QUIET_ZONE_SIZE = 8;
  private static final String TAG = BarcodeUtil.class.getSimpleName();

  public static String read(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return null;
    Barcode localBarcode = new Barcode();
    label138: 
    while (true)
    {
      int i;
      int k;
      int m;
      try
      {
        i = paramBitmap.getWidth();
        int j = paramBitmap.getHeight();
        byte[] arrayOfByte = new byte[i * j];
        k = 0;
        break label121;
        if (m < j)
        {
          int n = paramBitmap.getPixel(k, m);
          arrayOfByte[(k + m * i)] = ((byte)(n & 0xFF));
          m++;
          continue;
          if (!Barhopper.recognize2D(paramBitmap.getWidth(), paramBitmap.getHeight(), arrayOfByte, localBarcode))
            break;
          String str = localBarcode.rawValue;
          return str;
        }
      }
      catch (Exception localException)
      {
        Log.w(TAG, "Error parsing bitmap", localException);
        return null;
      }
      while (true)
      {
        label121: if (k >= i)
          break label138;
        m = 0;
        break;
        k++;
      }
    }
  }

  public static Bitmap str2QrBitmap(String paramString, int paramInt1, int paramInt2)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    while (true)
    {
      try
      {
        QRCode localQRCode = Encoder.encode(paramString, ErrorCorrectionLevel.L, null);
        ByteMatrix localByteMatrix = localQRCode.getMatrix();
        int i = localByteMatrix.getWidth();
        int j = localByteMatrix.getHeight();
        int k = Math.max(paramInt1, i + 8);
        int m = Math.max(paramInt2, j + 8);
        int n = Math.min((k - 8) / i, (m - 8) / j);
        int i1 = (k - i * n) / 2;
        int i2 = (m - j * n) / 2;
        int[] arrayOfInt = new int[k * m];
        Arrays.fill(arrayOfInt, -1);
        int i3 = 0;
        if (i3 >= j)
          break;
        int i4 = i1 + k * (i2 + i3 * n);
        int i5 = 0;
        if (i5 >= i)
          break label241;
        Bitmap localBitmap;
        if (localByteMatrix.get(i5, i3) == 1)
        {
          int i6 = i4 + i5 * n;
          int i7 = 0;
          if (i7 < n)
          {
            int i8 = i6 + n;
            Arrays.fill(arrayOfInt, i6, i8, -16777216);
            i6 += k;
            i7++;
            continue;
          }
        }
      }
      catch (WriterException localWriterException)
      {
        Log.w(TAG, "error converting string to qr bitmap", localWriterException);
        return null;
      }
      i5++;
      continue;
      label241: i3++;
    }
    localBitmap = Bitmap.createBitmap(k, m, Bitmap.Config.ARGB_8888);
    localBitmap.setPixels(arrayOfInt, 0, k, 0, 0, k, m);
    return localBitmap;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarcodeUtil
 * JD-Core Version:    0.6.2
 */