package com.google.glass.util;

import com.google.common.annotations.VisibleForTesting;

public class CustomItemIdGenerator
{

  @VisibleForTesting
  static final String SEPARATOR = ":";
  private final String prefix;

  public CustomItemIdGenerator(String paramString)
  {
    Assert.assertFalse("com.google.glass.non-database-item-id-prefix".contains(":"));
    Assert.assertFalse(paramString.contains(":"));
    this.prefix = ("com.google.glass.non-database-item-id-prefix:" + paramString + ":");
  }

  public String createId(int paramInt)
  {
    String str = this.prefix + paramInt;
    Assert.assertTrue(isId(str));
    return str;
  }

  public String createId(String paramString)
  {
    String str = this.prefix + paramString;
    Assert.assertTrue(isId(str));
    return str;
  }

  public int getPosition(String paramString)
  {
    return Integer.parseInt(getPostfix(paramString));
  }

  public String getPostfix(String paramString)
  {
    Assert.assertTrue(isId(paramString));
    return paramString.substring(this.prefix.length(), paramString.length());
  }

  public boolean isId(String paramString)
  {
    return paramString.startsWith(this.prefix);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CustomItemIdGenerator
 * JD-Core Version:    0.6.2
 */