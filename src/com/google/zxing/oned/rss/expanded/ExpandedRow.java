package com.google.zxing.oned.rss.expanded;

import java.util.ArrayList;
import java.util.List;

final class ExpandedRow
{
  private final List<ExpandedPair> pairs;
  private final int rowNumber;
  private final boolean wasReversed;

  ExpandedRow(List<ExpandedPair> paramList, int paramInt, boolean paramBoolean)
  {
    this.pairs = new ArrayList(paramList);
    this.rowNumber = paramInt;
    this.wasReversed = paramBoolean;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ExpandedRow));
    ExpandedRow localExpandedRow;
    do
    {
      return false;
      localExpandedRow = (ExpandedRow)paramObject;
    }
    while ((!this.pairs.equals(localExpandedRow.getPairs())) || (this.wasReversed != localExpandedRow.wasReversed));
    return true;
  }

  List<ExpandedPair> getPairs()
  {
    return this.pairs;
  }

  int getRowNumber()
  {
    return this.rowNumber;
  }

  public int hashCode()
  {
    return this.pairs.hashCode() ^ Boolean.valueOf(this.wasReversed).hashCode();
  }

  boolean isEquivalent(List<ExpandedPair> paramList)
  {
    return this.pairs.equals(paramList);
  }

  boolean isReversed()
  {
    return this.wasReversed;
  }

  public String toString()
  {
    return "{ " + this.pairs + " }";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.ExpandedRow
 * JD-Core Version:    0.6.2
 */