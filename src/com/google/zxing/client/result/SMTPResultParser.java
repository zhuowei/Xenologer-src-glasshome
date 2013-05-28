package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class SMTPResultParser extends ResultParser
{
  public EmailAddressParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if ((!str1.startsWith("smtp:")) && (!str1.startsWith("SMTP:")))
      return null;
    String str2 = str1.substring(5);
    int i = str2.indexOf(':');
    String str3 = null;
    String str4 = null;
    if (i >= 0)
    {
      str4 = str2.substring(i + 1);
      str2 = str2.substring(0, i);
      int j = str4.indexOf(':');
      str3 = null;
      if (j >= 0)
      {
        str3 = str4.substring(j + 1);
        str4 = str4.substring(0, j);
      }
    }
    return new EmailAddressParsedResult(str2, str4, str3, "mailto:" + str2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMTPResultParser
 * JD-Core Version:    0.6.2
 */