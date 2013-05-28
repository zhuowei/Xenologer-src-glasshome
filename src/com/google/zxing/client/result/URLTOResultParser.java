package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class URLTOResultParser extends ResultParser
{
  public URIParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if ((!str1.startsWith("urlto:")) && (!str1.startsWith("URLTO:")));
    int i;
    do
    {
      return null;
      i = str1.indexOf(':', 6);
    }
    while (i < 0);
    String str2 = null;
    if (i <= 6);
    while (true)
    {
      return new URIParsedResult(str1.substring(i + 1), str2);
      str2 = str1.substring(6, i);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.URLTOResultParser
 * JD-Core Version:    0.6.2
 */