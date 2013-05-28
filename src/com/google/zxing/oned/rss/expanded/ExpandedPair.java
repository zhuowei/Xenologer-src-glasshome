package com.google.zxing.oned.rss.expanded;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;

final class ExpandedPair
{
  private final FinderPattern finderPattern;
  private final DataCharacter leftChar;
  private final boolean mayBeLast;
  private final DataCharacter rightChar;

  ExpandedPair(DataCharacter paramDataCharacter1, DataCharacter paramDataCharacter2, FinderPattern paramFinderPattern, boolean paramBoolean)
  {
    this.leftChar = paramDataCharacter1;
    this.rightChar = paramDataCharacter2;
    this.finderPattern = paramFinderPattern;
    this.mayBeLast = paramBoolean;
  }

  private static boolean equalsOrNull(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
      return paramObject2 == null;
    return paramObject1.equals(paramObject2);
  }

  private static int hashNotNull(Object paramObject)
  {
    if (paramObject == null)
      return 0;
    return paramObject.hashCode();
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ExpandedPair));
    ExpandedPair localExpandedPair;
    do
    {
      return false;
      localExpandedPair = (ExpandedPair)paramObject;
    }
    while ((!equalsOrNull(this.leftChar, localExpandedPair.leftChar)) || (!equalsOrNull(this.rightChar, localExpandedPair.rightChar)) || (!equalsOrNull(this.finderPattern, localExpandedPair.finderPattern)));
    return true;
  }

  FinderPattern getFinderPattern()
  {
    return this.finderPattern;
  }

  DataCharacter getLeftChar()
  {
    return this.leftChar;
  }

  DataCharacter getRightChar()
  {
    return this.rightChar;
  }

  public int hashCode()
  {
    return hashNotNull(this.leftChar) ^ hashNotNull(this.rightChar) ^ hashNotNull(this.finderPattern);
  }

  boolean mayBeLast()
  {
    return this.mayBeLast;
  }

  public boolean mustBeLast()
  {
    return this.rightChar == null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("[ ").append(this.leftChar).append(" , ").append(this.rightChar).append(" : ");
    if (this.finderPattern == null);
    for (Object localObject = "null"; ; localObject = Integer.valueOf(this.finderPattern.getValue()))
      return localObject + " ]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.ExpandedPair
 * JD-Core Version:    0.6.2
 */