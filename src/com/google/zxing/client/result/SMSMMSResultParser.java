package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class SMSMMSResultParser extends ResultParser
{
  private static void addNumberVia(Collection<String> paramCollection1, Collection<String> paramCollection2, String paramString)
  {
    int i = paramString.indexOf(';');
    if (i < 0)
    {
      paramCollection1.add(paramString);
      paramCollection2.add(null);
      return;
    }
    paramCollection1.add(paramString.substring(0, i));
    String str1 = paramString.substring(i + 1);
    if (str1.startsWith("via="));
    for (String str2 = str1.substring(4); ; str2 = null)
    {
      paramCollection2.add(str2);
      return;
    }
  }

  public SMSParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if ((!str1.startsWith("sms:")) && (!str1.startsWith("SMS:")) && (!str1.startsWith("mms:")) && (!str1.startsWith("MMS:")))
      return null;
    Map localMap = parseNameValuePairs(str1);
    String str2 = null;
    int i = 0;
    String str3 = null;
    if (localMap != null)
    {
      boolean bool = localMap.isEmpty();
      str2 = null;
      i = 0;
      str3 = null;
      if (!bool)
      {
        str3 = (String)localMap.get("subject");
        str2 = (String)localMap.get("body");
        i = 1;
      }
    }
    int j = str1.indexOf('?', 4);
    if ((j < 0) || (i == 0));
    int k;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    for (String str4 = str1.substring(4); ; str4 = str1.substring(4, j))
    {
      k = -1;
      localArrayList1 = new ArrayList(1);
      localArrayList2 = new ArrayList(1);
      while (true)
      {
        int m = str4.indexOf(',', k + 1);
        if (m <= k)
          break;
        addNumberVia(localArrayList1, localArrayList2, str4.substring(k + 1, m));
        k = m;
      }
    }
    addNumberVia(localArrayList1, localArrayList2, str4.substring(k + 1));
    return new SMSParsedResult((String[])localArrayList1.toArray(new String[localArrayList1.size()]), (String[])localArrayList2.toArray(new String[localArrayList2.size()]), str3, str2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMSMMSResultParser
 * JD-Core Version:    0.6.2
 */