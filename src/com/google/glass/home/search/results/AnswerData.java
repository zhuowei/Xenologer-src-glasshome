package com.google.glass.home.search.results;

import com.google.common.collect.Lists;
import com.google.majel.proto.AttributionProtos.Attribution;
import com.google.majel.proto.PeanutProtos.Image;
import java.util.ArrayList;
import java.util.List;

public class AnswerData
{
  private final String answer;
  private final String description;
  private final String disclaimer;
  private final PeanutProtos.Image image;
  private final AttributionProtos.Attribution imageSource;
  private final boolean isMediumConfidence;
  private final List<AttributionProtos.Attribution> sources;

  public AnswerData(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null, null, null, null);
  }

  public AnswerData(String paramString1, String paramString2, AttributionProtos.Attribution paramAttribution1, PeanutProtos.Image paramImage, AttributionProtos.Attribution paramAttribution2, String paramString3)
  {
  }

  public AnswerData(String paramString1, String paramString2, List<AttributionProtos.Attribution> paramList, PeanutProtos.Image paramImage, AttributionProtos.Attribution paramAttribution, String paramString3, boolean paramBoolean)
  {
    this.answer = paramString1;
    this.description = paramString2;
    if (paramList == null);
    for (ArrayList localArrayList = Lists.newArrayList(); ; localArrayList = Lists.newArrayList(paramList))
    {
      this.sources = localArrayList;
      this.image = paramImage;
      this.imageSource = paramAttribution;
      this.disclaimer = paramString3;
      this.isMediumConfidence = paramBoolean;
      return;
    }
  }

  public String getAnswer()
  {
    return this.answer;
  }

  public String getAnswerDescription()
  {
    return this.description;
  }

  public String getDisclaimer()
  {
    return this.disclaimer;
  }

  public PeanutProtos.Image getImage()
  {
    return this.image;
  }

  public AttributionProtos.Attribution getImageSource()
  {
    return this.imageSource;
  }

  public AttributionProtos.Attribution getSource()
  {
    if (this.sources.isEmpty())
      return new AttributionProtos.Attribution();
    return (AttributionProtos.Attribution)this.sources.get(0);
  }

  public List<AttributionProtos.Attribution> getSourceList()
  {
    return this.sources;
  }

  public boolean isMediumConfidence()
  {
    return this.isMediumConfidence;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.AnswerData
 * JD-Core Version:    0.6.2
 */