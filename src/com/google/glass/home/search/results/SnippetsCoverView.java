package com.google.glass.home.search.results;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.majel.proto.PeanutProtos.Image;
import com.google.protobuf.micro.ByteStringMicro;

public class SnippetsCoverView extends HorizontalScrollLinearLayout
{
  private ImageView webResultsImageView;
  private DynamicSizeTextView webResultsView;

  public SnippetsCoverView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SnippetsCoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public SnippetsCoverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_snippets_cover, this);
    this.webResultsView = ((DynamicSizeTextView)findViewById(R.id.recognition_result));
    this.webResultsImageView = ((ImageView)findViewById(R.id.web_results));
  }

  public void setImage(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.webResultsImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
      this.webResultsImageView.setImageBitmap(paramBitmap);
      return;
    }
    this.webResultsImageView.setVisibility(8);
  }

  public void setImage(PeanutProtos.Image paramImage)
  {
    if ((paramImage != null) && (paramImage.hasData()))
    {
      byte[] arrayOfByte = paramImage.getData().toByteArray();
      setImage(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
      return;
    }
    this.webResultsImageView.setVisibility(8);
  }

  public void setQuery(String paramString)
  {
    this.webResultsView.setText(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.SnippetsCoverView
 * JD-Core Version:    0.6.2
 */