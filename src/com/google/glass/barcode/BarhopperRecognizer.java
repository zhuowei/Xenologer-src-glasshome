package com.google.glass.barcode;

import com.google.android.libraries.barhopper.Barcode;
import com.google.android.libraries.barhopper.Barhopper;

public class BarhopperRecognizer
  implements BarcodeRecognizer
{
  public Barcode recognize(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Barcode localBarcode = new Barcode();
    if (!Barhopper.recognize2D(paramInt1, paramInt2, paramArrayOfByte, localBarcode))
      localBarcode = null;
    return localBarcode;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarhopperRecognizer
 * JD-Core Version:    0.6.2
 */