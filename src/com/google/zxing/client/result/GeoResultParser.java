package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GeoResultParser extends ResultParser
{
  private static final Pattern GEO_URL_PATTERN = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

  public GeoParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    Matcher localMatcher = GEO_URL_PATTERN.matcher(str1);
    if (!localMatcher.matches());
    while (true)
    {
      return null;
      String str2 = localMatcher.group(4);
      try
      {
        double d1 = Double.parseDouble(localMatcher.group(1));
        if ((d1 <= 90.0D) && (d1 >= -90.0D))
        {
          double d2 = Double.parseDouble(localMatcher.group(2));
          if ((d2 <= 180.0D) && (d2 >= -180.0D))
          {
            String str3 = localMatcher.group(3);
            double d4;
            if (str3 == null)
              d4 = 0.0D;
            do
            {
              return new GeoParsedResult(d1, d2, d4, str2);
              double d3 = Double.parseDouble(localMatcher.group(3));
              d4 = d3;
            }
            while (d4 >= 0.0D);
            return null;
          }
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.GeoResultParser
 * JD-Core Version:    0.6.2
 */