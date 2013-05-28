package com.google.zxing.oned.rss;

public class DataCharacter
{
  private final int checksumPortion;
  private final int value;

  public DataCharacter(int paramInt1, int paramInt2)
  {
    this.value = paramInt1;
    this.checksumPortion = paramInt2;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DataCharacter));
    DataCharacter localDataCharacter;
    do
    {
      return false;
      localDataCharacter = (DataCharacter)paramObject;
    }
    while ((this.value != localDataCharacter.value) || (this.checksumPortion != localDataCharacter.checksumPortion));
    return true;
  }

  public final int getChecksumPortion()
  {
    return this.checksumPortion;
  }

  public final int getValue()
  {
    return this.value;
  }

  public final int hashCode()
  {
    return this.value ^ this.checksumPortion;
  }

  public final String toString()
  {
    return this.value + "(" + this.checksumPortion + ')';
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.DataCharacter
 * JD-Core Version:    0.6.2
 */