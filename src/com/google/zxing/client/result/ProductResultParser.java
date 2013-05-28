package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

public final class ProductResultParser extends ResultParser
{
  public ProductParsedResult parse(Result paramResult)
  {
    BarcodeFormat localBarcodeFormat = paramResult.getBarcodeFormat();
    if ((localBarcodeFormat != BarcodeFormat.UPC_A) && (localBarcodeFormat != BarcodeFormat.UPC_E) && (localBarcodeFormat != BarcodeFormat.EAN_8) && (localBarcodeFormat != BarcodeFormat.EAN_13))
      return null;
    String str1 = getMassagedText(paramResult);
    int i = str1.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label84;
      int k = str1.charAt(j);
      if ((k < 48) || (k > 57))
        break;
    }
    label84: if (localBarcodeFormat == BarcodeFormat.UPC_E);
    for (String str2 = UPCEReader.convertUPCEtoUPCA(str1); ; str2 = str1)
      return new ProductParsedResult(str1, str2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ProductResultParser
 * JD-Core Version:    0.6.2
 */