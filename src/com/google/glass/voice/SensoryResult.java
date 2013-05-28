package com.google.glass.voice;

import com.google.common.base.Splitter;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import java.util.Iterator;
import java.util.List;

public class SensoryResult
{
  private List<AlignmentInfo> alignmentInfoList;
  private final String literal;
  private final float score;
  final String wordAlignment;

  public SensoryResult(String paramString1, float paramFloat, String paramString2)
  {
    this.literal = paramString1;
    this.score = paramFloat;
    this.wordAlignment = paramString2;
  }

  List<AlignmentInfo> getAlignmentInfo()
  {
    if (this.alignmentInfoList == null)
    {
      Iterable localIterable = Splitter.on("\n").omitEmptyStrings().split(this.wordAlignment);
      this.alignmentInfoList = Lists.newArrayListWithCapacity(Iterables.size(localIterable));
      Iterator localIterator = localIterable.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.alignmentInfoList.add(AlignmentInfo.parseSensoryAlignmentSegment(str));
      }
    }
    return this.alignmentInfoList;
  }

  public String getLiteral()
  {
    return this.literal;
  }

  public long getPhraseDurationMillis()
  {
    return getPhraseEndMillis() - getPhraseStartMillis();
  }

  public long getPhraseEndMillis()
  {
    return ((AlignmentInfo)Iterables.getLast(getAlignmentInfo())).endMillis;
  }

  public long getPhraseStartMillis()
  {
    return ((AlignmentInfo)getAlignmentInfo().get(0)).startMillis;
  }

  public float getScore()
  {
    return this.score;
  }

  String getWordAlignmentRawString()
  {
    return this.wordAlignment;
  }

  public String toString()
  {
    return "SensoryResult [literal=" + this.literal + ", score=" + this.score + ", wordAlignment=" + this.wordAlignment + "]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.SensoryResult
 * JD-Core Version:    0.6.2
 */