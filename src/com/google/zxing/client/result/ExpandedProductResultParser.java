package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.HashMap;
import java.util.Map;

public final class ExpandedProductResultParser extends ResultParser
{
  private static String findAIvalue(int paramInt, String paramString)
  {
    if (paramString.charAt(paramInt) != '(')
      return null;
    String str = paramString.substring(paramInt + 1);
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= str.length())
        break label87;
      char c = str.charAt(i);
      if (c == ')')
        return localStringBuilder.toString();
      if ((c < '0') || (c > '9'))
        break;
      localStringBuilder.append(c);
    }
    label87: return localStringBuilder.toString();
  }

  private static String findValue(int paramInt, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = paramString.substring(paramInt);
    int i = 0;
    if (i < str.length())
    {
      char c = str.charAt(i);
      if (c == '(')
      {
        if (findAIvalue(i, str) == null)
          localStringBuilder.append('(');
      }
      else
        while (true)
        {
          i++;
          break;
          localStringBuilder.append(c);
        }
    }
    return localStringBuilder.toString();
  }

  public ExpandedProductParsedResult parse(Result paramResult)
  {
    if (paramResult.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED)
      return null;
    String str1 = getMassagedText(paramResult);
    if (str1 == null)
      return null;
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject8 = null;
    String str2 = null;
    String str3 = null;
    Object localObject9 = null;
    String str4 = null;
    String str5 = null;
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (true)
    {
      int j = str1.length();
      if (i >= j)
        break;
      String str6 = findAIvalue(i, str1);
      if (str6 == null)
        return null;
      int k = i + (2 + str6.length());
      String str7 = findValue(k, str1);
      i = k + str7.length();
      if ("00".equals(str6))
      {
        localObject2 = str7;
      }
      else if ("01".equals(str6))
      {
        localObject1 = str7;
      }
      else if ("10".equals(str6))
      {
        localObject3 = str7;
      }
      else if ("11".equals(str6))
      {
        localObject4 = str7;
      }
      else if ("13".equals(str6))
      {
        localObject5 = str7;
      }
      else if ("15".equals(str6))
      {
        localObject6 = str7;
      }
      else if ("17".equals(str6))
      {
        localObject7 = str7;
      }
      else if (("3100".equals(str6)) || ("3101".equals(str6)) || ("3102".equals(str6)) || ("3103".equals(str6)) || ("3104".equals(str6)) || ("3105".equals(str6)) || ("3106".equals(str6)) || ("3107".equals(str6)) || ("3108".equals(str6)) || ("3109".equals(str6)))
      {
        localObject8 = str7;
        str2 = "KG";
        str3 = str6.substring(3);
      }
      else if (("3200".equals(str6)) || ("3201".equals(str6)) || ("3202".equals(str6)) || ("3203".equals(str6)) || ("3204".equals(str6)) || ("3205".equals(str6)) || ("3206".equals(str6)) || ("3207".equals(str6)) || ("3208".equals(str6)) || ("3209".equals(str6)))
      {
        localObject8 = str7;
        str2 = "LB";
        str3 = str6.substring(3);
      }
      else if (("3920".equals(str6)) || ("3921".equals(str6)) || ("3922".equals(str6)) || ("3923".equals(str6)))
      {
        localObject9 = str7;
        str4 = str6.substring(3);
      }
      else if (("3930".equals(str6)) || ("3931".equals(str6)) || ("3932".equals(str6)) || ("3933".equals(str6)))
      {
        if (str7.length() < 4)
          return null;
        localObject9 = str7.substring(3);
        str5 = str7.substring(0, 3);
        str4 = str6.substring(3);
      }
      else
      {
        localHashMap.put(str6, str7);
      }
    }
    return new ExpandedProductParsedResult(str1, localObject1, localObject2, localObject3, localObject4, localObject5, localObject6, localObject7, localObject8, str2, str3, (String)localObject9, str4, str5, localHashMap);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ExpandedProductResultParser
 * JD-Core Version:    0.6.2
 */