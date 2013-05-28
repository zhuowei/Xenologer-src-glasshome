package com.google.glass.home.search.results;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.AttributionProtos.Attribution;
import com.google.majel.proto.PeanutProtos.Image;

public class ImageAnswerView extends HorizontalScrollLinearLayout
{
  private TypophileTextView attributionView;
  private ImageView imageView;

  public ImageAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public ImageAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public ImageAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_image_answer, this);
    this.imageView = ((ImageView)findViewById(R.id.image));
    this.attributionView = ((TypophileTextView)findViewById(R.id.attribution));
  }

  public ImageView getImageView()
  {
    return this.imageView;
  }

  public void setAttribution(PeanutProtos.Image paramImage)
  {
    if (paramImage.getAttributionCount() > 0)
      this.attributionView.setText(paramImage.getAttribution(0).getPageDomain());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.ImageAnswerView
 * JD-Core Version:    0.6.2
 */