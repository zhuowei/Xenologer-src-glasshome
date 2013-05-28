package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Map;

public final class EmailAddressResultParser extends ResultParser
{
  public EmailAddressParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    EmailAddressParsedResult localEmailAddressParsedResult;
    if ((str1.startsWith("mailto:")) || (str1.startsWith("MAILTO:")))
    {
      String str2 = str1.substring(7);
      int i = str2.indexOf('?');
      if (i >= 0)
        str2 = str2.substring(0, i);
      String str3 = urlDecode(str2);
      Map localMap = parseNameValuePairs(str1);
      String str4 = null;
      String str5 = null;
      if (localMap != null)
      {
        if (str3.length() == 0)
          str3 = (String)localMap.get("to");
        str5 = (String)localMap.get("subject");
        str4 = (String)localMap.get("body");
      }
      localEmailAddressParsedResult = new EmailAddressParsedResult(str3, str5, str4, str1);
    }
    boolean bool;
    do
    {
      return localEmailAddressParsedResult;
      bool = EmailDoCoMoResultParser.isBasicallyValidEmailAddress(str1);
      localEmailAddressParsedResult = null;
    }
    while (!bool);
    return new EmailAddressParsedResult(str1, null, null, "mailto:" + str1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.EmailAddressResultParser
 * JD-Core Version:    0.6.2
 */