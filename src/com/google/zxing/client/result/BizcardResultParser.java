package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

public final class BizcardResultParser extends AbstractDoCoMoResultParser
{
  private static String buildName(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2;
    if (paramString2 == null);
    while (true)
    {
      return paramString1;
      paramString1 = paramString1 + ' ' + paramString2;
    }
  }

  private static String[] buildPhoneNumbers(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList(3);
    if (paramString1 != null)
      localArrayList.add(paramString1);
    if (paramString2 != null)
      localArrayList.add(paramString2);
    if (paramString3 != null)
      localArrayList.add(paramString3);
    int i = localArrayList.size();
    if (i == 0)
      return null;
    return (String[])localArrayList.toArray(new String[i]);
  }

  public AddressBookParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if (!str1.startsWith("BIZCARD:"))
      return null;
    String str2 = buildName(matchSingleDoCoMoPrefixedField("N:", str1, true), matchSingleDoCoMoPrefixedField("X:", str1, true));
    String str3 = matchSingleDoCoMoPrefixedField("T:", str1, true);
    String str4 = matchSingleDoCoMoPrefixedField("C:", str1, true);
    String[] arrayOfString = matchDoCoMoPrefixedField("A:", str1, true);
    String str5 = matchSingleDoCoMoPrefixedField("B:", str1, true);
    String str6 = matchSingleDoCoMoPrefixedField("M:", str1, true);
    String str7 = matchSingleDoCoMoPrefixedField("F:", str1, true);
    String str8 = matchSingleDoCoMoPrefixedField("E:", str1, true);
    return new AddressBookParsedResult(maybeWrap(str2), null, null, buildPhoneNumbers(str5, str6, str7), null, maybeWrap(str8), null, null, null, arrayOfString, null, str4, null, str3, null, null);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.BizcardResultParser
 * JD-Core Version:    0.6.2
 */