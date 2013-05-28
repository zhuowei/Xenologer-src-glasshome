package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

public final class AddressBookAUResultParser extends ResultParser
{
  private static String[] matchMultipleValuePrefix(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    ArrayList localArrayList = null;
    for (int i = 1; ; i++)
    {
      String str;
      if (i <= paramInt)
      {
        str = matchSinglePrefixedField(paramString1 + i + ':', paramString2, '\r', paramBoolean);
        if (str != null);
      }
      else
      {
        if (localArrayList != null)
          break;
        return null;
      }
      if (localArrayList == null)
        localArrayList = new ArrayList(paramInt);
      localArrayList.add(str);
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public AddressBookParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if ((!str1.contains("MEMORY")) || (!str1.contains("\r\n")))
      return null;
    String str2 = matchSinglePrefixedField("NAME1:", str1, '\r', true);
    String str3 = matchSinglePrefixedField("NAME2:", str1, '\r', true);
    String[] arrayOfString1 = matchMultipleValuePrefix("TEL", 3, str1, true);
    String[] arrayOfString2 = matchMultipleValuePrefix("MAIL", 3, str1, true);
    String str4 = matchSinglePrefixedField("MEMORY:", str1, '\r', false);
    String str5 = matchSinglePrefixedField("ADD:", str1, '\r', true);
    if (str5 == null);
    for (String[] arrayOfString3 = null; ; arrayOfString3 = new String[] { str5 })
      return new AddressBookParsedResult(maybeWrap(str2), null, str3, arrayOfString1, null, arrayOfString2, null, null, str4, arrayOfString3, null, null, null, null, null, null);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.AddressBookAUResultParser
 * JD-Core Version:    0.6.2
 */