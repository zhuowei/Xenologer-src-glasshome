package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIResultParser extends ResultParser
{
  private static final String ALPHANUM_PART = "[a-zA-Z0-9\\-]";
  private static final Pattern URL_WITHOUT_PROTOCOL_PATTERN = Pattern.compile("([a-zA-Z0-9\\-]+\\.)+[a-zA-Z0-9\\-]{2,}(:\\d{1,5})?(/|\\?|$)");
  private static final Pattern URL_WITH_PROTOCOL_PATTERN = Pattern.compile("[a-zA-Z0-9]{2,}:");

  static boolean isBasicallyValidURI(String paramString)
  {
    boolean bool = true;
    if (paramString.contains(" "))
      bool = false;
    Matcher localMatcher2;
    do
    {
      Matcher localMatcher1;
      do
      {
        return bool;
        localMatcher1 = URL_WITH_PROTOCOL_PATTERN.matcher(paramString);
      }
      while ((localMatcher1.find()) && (localMatcher1.start() == 0));
      localMatcher2 = URL_WITHOUT_PROTOCOL_PATTERN.matcher(paramString);
    }
    while ((localMatcher2.find()) && (localMatcher2.start() == 0));
    return false;
  }

  public URIParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if ((str1.startsWith("URL:")) || (str1.startsWith("URI:")))
      return new URIParsedResult(str1.substring(4).trim(), null);
    String str2 = str1.trim();
    if (isBasicallyValidURI(str2))
      return new URIParsedResult(str2, null);
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.URIResultParser
 * JD-Core Version:    0.6.2
 */