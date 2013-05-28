package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridLayout;
import android.widget.GridLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import java.util.List;

public class ImageCoverView extends HorizontalScrollLinearLayout
{
  private GridLayout gridLayout;
  private LinearLayout queryCover;
  private LinearLayout queryOverlay;
  private DynamicSizeTextView recognitionResult;

  public ImageCoverView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public ImageCoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public ImageCoverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    setOrientation(1);
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_image_cover, this);
    this.gridLayout = ((GridLayout)findViewById(R.id.image_grid));
    this.queryCover = ((LinearLayout)findViewById(R.id.query_cover));
    this.queryOverlay = ((LinearLayout)findViewById(R.id.query_overlay));
    this.recognitionResult = ((DynamicSizeTextView)findViewById(R.id.recognition_result));
  }

  public void setImageData(List<ImageView> paramList, int paramInt1, int paramInt2)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i = localDisplayMetrics.widthPixels / paramInt2;
    int j = localDisplayMetrics.heightPixels / paramInt1;
    int k = 0;
    int m = 0;
    int n;
    int i1;
    label46: int i2;
    if (m < paramInt1)
    {
      n = 0;
      i1 = k;
      if (n < paramInt2)
      {
        GridLayout.LayoutParams localLayoutParams = new GridLayout.LayoutParams(GridLayout.spec(m, 1), GridLayout.spec(n, 1));
        localLayoutParams.width = i;
        localLayoutParams.height = j;
        localLayoutParams.setMargins(1, 1, 1, 1);
        if (i1 >= paramList.size())
          break label158;
        GridLayout localGridLayout = this.gridLayout;
        i2 = i1 + 1;
        localGridLayout.addView((View)paramList.get(i1), localLayoutParams);
      }
    }
    while (true)
    {
      n++;
      i1 = i2;
      break label46;
      m++;
      k = i1;
      break;
      return;
      label158: i2 = i1;
    }
  }

  public void setQuery(String paramString)
  {
    this.queryCover.setVisibility(0);
    this.queryOverlay.setVisibility(0);
    this.recognitionResult.setText(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.ImageCoverView
 * JD-Core Version:    0.6.2
 */