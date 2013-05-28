package com.google.zxing.client.j2se;

import com.google.zxing.DecodeHintType;
import java.util.Map;

final class Config
{
  private boolean brief;
  private int[] crop;
  private boolean dumpBlackPoint;
  private boolean dumpResults;
  private Map<DecodeHintType, ?> hints;
  private boolean multi;
  private String[] possibleFormats;
  private boolean productsOnly;
  private boolean pureBarcode;
  private boolean recursive;
  private boolean tryHarder;

  int[] getCrop()
  {
    return this.crop;
  }

  Map<DecodeHintType, ?> getHints()
  {
    return this.hints;
  }

  String[] getPossibleFormats()
  {
    return this.possibleFormats;
  }

  boolean isBrief()
  {
    return this.brief;
  }

  boolean isDumpBlackPoint()
  {
    return this.dumpBlackPoint;
  }

  boolean isDumpResults()
  {
    return this.dumpResults;
  }

  boolean isMulti()
  {
    return this.multi;
  }

  boolean isProductsOnly()
  {
    return this.productsOnly;
  }

  boolean isPureBarcode()
  {
    return this.pureBarcode;
  }

  boolean isRecursive()
  {
    return this.recursive;
  }

  boolean isTryHarder()
  {
    return this.tryHarder;
  }

  void setBrief(boolean paramBoolean)
  {
    this.brief = paramBoolean;
  }

  void setCrop(int[] paramArrayOfInt)
  {
    this.crop = paramArrayOfInt;
  }

  void setDumpBlackPoint(boolean paramBoolean)
  {
    this.dumpBlackPoint = paramBoolean;
  }

  void setDumpResults(boolean paramBoolean)
  {
    this.dumpResults = paramBoolean;
  }

  void setHints(Map<DecodeHintType, ?> paramMap)
  {
    this.hints = paramMap;
  }

  void setMulti(boolean paramBoolean)
  {
    this.multi = paramBoolean;
  }

  void setPossibleFormats(String[] paramArrayOfString)
  {
    this.possibleFormats = paramArrayOfString;
  }

  void setProductsOnly(boolean paramBoolean)
  {
    this.productsOnly = paramBoolean;
  }

  void setPureBarcode(boolean paramBoolean)
  {
    this.pureBarcode = paramBoolean;
  }

  void setRecursive(boolean paramBoolean)
  {
    this.recursive = paramBoolean;
  }

  void setTryHarder(boolean paramBoolean)
  {
    this.tryHarder = paramBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.Config
 * JD-Core Version:    0.6.2
 */