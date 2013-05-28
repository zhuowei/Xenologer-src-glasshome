package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser
{
  public URIParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    if (!str1.startsWith("MEBKM:"));
    String str2;
    String str3;
    do
    {
      String[] arrayOfString;
      do
      {
        return null;
        str2 = matchSingleDoCoMoPrefixedField("TITLE:", str1, true);
        arrayOfString = matchDoCoMoPrefixedField("URL:", str1, true);
      }
      while (arrayOfString == null);
      str3 = arrayOfString[0];
    }
    while (!URIResultParser.isBasicallyValidURI(str3));
    return new URIParsedResult(str3, str2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.BookmarkDoCoMoResultParser
 * JD-Core Version:    0.6.2
 */