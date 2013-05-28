package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;

public final class ISBNResultParser extends ResultParser
{
  public ISBNParsedResult parse(Result paramResult)
  {
    if (paramResult.getBarcodeFormat() != BarcodeFormat.EAN_13);
    String str;
    do
    {
      return null;
      str = getMassagedText(paramResult);
    }
    while ((str.length() != 13) || ((!str.startsWith("978")) && (!str.startsWith("979"))));
    return new ISBNParsedResult(str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ISBNResultParser
 * JD-Core Version:    0.6.2
 */