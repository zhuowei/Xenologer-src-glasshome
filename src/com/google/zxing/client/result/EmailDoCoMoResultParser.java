package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser
{
  private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

  static boolean isBasicallyValidEmailAddress(String paramString)
  {
    return (paramString != null) && (ATEXT_ALPHANUMERIC.matcher(paramString).matches()) && (paramString.indexOf('@') >= 0);
  }

  public EmailAddressParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if (!str1.startsWith("MATMSG:"));
    String str2;
    do
    {
      String[] arrayOfString;
      do
      {
        return null;
        arrayOfString = matchDoCoMoPrefixedField("TO:", str1, true);
      }
      while (arrayOfString == null);
      str2 = arrayOfString[0];
    }
    while (!isBasicallyValidEmailAddress(str2));
    return new EmailAddressParsedResult(str2, matchSingleDoCoMoPrefixedField("SUB:", str1, false), matchSingleDoCoMoPrefixedField("BODY:", str1, false), "mailto:" + str2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.EmailDoCoMoResultParser
 * JD-Core Version:    0.6.2
 */