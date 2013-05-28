package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
public enum CaseFormat
{
  private final CharMatcher wordBoundary;
  private final String wordSeparator;

  static
  {
    LOWER_CAMEL = new CaseFormat("LOWER_CAMEL", 2, CharMatcher.inRange('A', 'Z'), "");
    UPPER_CAMEL = new CaseFormat("UPPER_CAMEL", 3, CharMatcher.inRange('A', 'Z'), "");
    UPPER_UNDERSCORE = new CaseFormat("UPPER_UNDERSCORE", 4, CharMatcher.is('_'), "_");
    CaseFormat[] arrayOfCaseFormat = new CaseFormat[5];
    arrayOfCaseFormat[0] = LOWER_HYPHEN;
    arrayOfCaseFormat[1] = LOWER_UNDERSCORE;
    arrayOfCaseFormat[2] = LOWER_CAMEL;
    arrayOfCaseFormat[3] = UPPER_CAMEL;
    arrayOfCaseFormat[4] = UPPER_UNDERSCORE;
  }

  private CaseFormat(CharMatcher paramCharMatcher, String paramString)
  {
    this.wordBoundary = paramCharMatcher;
    this.wordSeparator = paramString;
  }

  private static String firstCharOnlyToUpper(String paramString)
  {
    int i = paramString.length();
    if (i == 0)
      return paramString;
    return i + Ascii.toUpperCase(paramString.charAt(0)) + Ascii.toLowerCase(paramString.substring(1));
  }

  private String normalizeFirstWord(String paramString)
  {
    switch (1.$SwitchMap$com$google$common$base$CaseFormat[ordinal()])
    {
    default:
      return normalizeWord(paramString);
    case 4:
    }
    return Ascii.toLowerCase(paramString);
  }

  private String normalizeWord(String paramString)
  {
    switch (1.$SwitchMap$com$google$common$base$CaseFormat[ordinal()])
    {
    default:
      throw new RuntimeException("unknown case: " + this);
    case 3:
      return Ascii.toLowerCase(paramString);
    case 1:
      return Ascii.toLowerCase(paramString);
    case 4:
      return firstCharOnlyToUpper(paramString);
    case 5:
      return firstCharOnlyToUpper(paramString);
    case 2:
    }
    return Ascii.toUpperCase(paramString);
  }

  public String to(CaseFormat paramCaseFormat, String paramString)
  {
    if (paramCaseFormat == null)
      throw new NullPointerException();
    if (paramString == null)
      throw new NullPointerException();
    if (paramCaseFormat == this)
      return paramString;
    StringBuilder localStringBuilder;
    int i;
    int j;
    switch (1.$SwitchMap$com$google$common$base$CaseFormat[ordinal()])
    {
    default:
      localStringBuilder = null;
      i = 0;
      j = -1;
      label72: j = this.wordBoundary.indexIn(paramString, j + 1);
      if (j == -1)
        break label340;
      if (i == 0)
      {
        localStringBuilder = new StringBuilder(paramString.length() + 4 * this.wordSeparator.length());
        localStringBuilder.append(paramCaseFormat.normalizeFirstWord(paramString.substring(i, j)));
      }
      break;
    case 3:
    case 1:
    case 2:
    }
    while (true)
    {
      localStringBuilder.append(paramCaseFormat.wordSeparator);
      i = j + this.wordSeparator.length();
      break label72;
      switch (1.$SwitchMap$com$google$common$base$CaseFormat[paramCaseFormat.ordinal()])
      {
      default:
        break;
      case 1:
        return paramString.replace('-', '_');
      case 2:
        return Ascii.toUpperCase(paramString.replace('-', '_'));
        switch (1.$SwitchMap$com$google$common$base$CaseFormat[paramCaseFormat.ordinal()])
        {
        default:
          break;
        case 2:
          return Ascii.toUpperCase(paramString);
        case 3:
          return paramString.replace('_', '-');
          switch (1.$SwitchMap$com$google$common$base$CaseFormat[paramCaseFormat.ordinal()])
          {
          case 2:
          default:
            break;
          case 1:
            return Ascii.toLowerCase(paramString);
          case 3:
            return Ascii.toLowerCase(paramString.replace('_', '-'));
            localStringBuilder.append(paramCaseFormat.normalizeWord(paramString.substring(i, j)));
          }
          break;
        }
        break;
      }
    }
    label340: if (i == 0)
      return paramCaseFormat.normalizeFirstWord(paramString);
    localStringBuilder.append(paramCaseFormat.normalizeWord(paramString.substring(i)));
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.CaseFormat
 * JD-Core Version:    0.6.2
 */