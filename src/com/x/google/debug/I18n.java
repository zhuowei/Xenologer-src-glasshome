package com.x.google.debug;

public class I18n
{
  public static String get(int paramInt)
  {
    return "STRING[" + String.valueOf(paramInt) + "]";
  }

  public static String get(String paramString)
  {
    return "<" + paramString + ">";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.x.google.debug.I18n
 * JD-Core Version:    0.6.2
 */