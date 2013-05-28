package com.google.zxing.client.result;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIParsedResult extends ParsedResult
{
  private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
  private final String title;
  private final String uri;

  public URIParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.URI);
    this.uri = massageURI(paramString1);
    this.title = paramString2;
  }

  private static boolean isColonFollowedByPortNumber(String paramString, int paramInt)
  {
    int i = paramString.indexOf('/', paramInt + 1);
    if (i < 0)
      i = paramString.length();
    if (i <= paramInt + 1)
      return false;
    for (int j = paramInt + 1; ; j++)
    {
      if (j >= i)
        break label63;
      if ((paramString.charAt(j) < '0') || (paramString.charAt(j) > '9'))
        break;
    }
    label63: return true;
  }

  private static String massageURI(String paramString)
  {
    String str = paramString.trim();
    int i = str.indexOf(':');
    if (i < 0)
      str = "http://" + str;
    while (!isColonFollowedByPortNumber(str, i))
      return str;
    return "http://" + str;
  }

  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    maybeAppend(this.title, localStringBuilder);
    maybeAppend(this.uri, localStringBuilder);
    return localStringBuilder.toString();
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getURI()
  {
    return this.uri;
  }

  public boolean isPossiblyMaliciousURI()
  {
    return USER_IN_HOST.matcher(this.uri).find();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.URIParsedResult
 * JD-Core Version:    0.6.2
 */