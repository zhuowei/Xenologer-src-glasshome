package com.google.glass.home.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;

public class HeadWakePosableHeadViewGroup extends RelativeLayout
{
  private static final String TAG = HeadWakePosableHeadViewGroup.class.getSimpleName();
  private final ImageView baseLayer;
  private final ImageView capLayer;
  boolean enabled = true;
  private final ImageView headLayer;
  private boolean initialImageSizeCached = false;
  private int maxHeight;
  private int maxWidth;

  public HeadWakePosableHeadViewGroup(Context paramContext)
  {
    this(paramContext, null);
  }

  public HeadWakePosableHeadViewGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public HeadWakePosableHeadViewGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.posable_head_layout, this);
    this.baseLayer = ((ImageView)findViewById(R.id.head_wake_icon_base));
    this.headLayer = ((ImageView)findViewById(R.id.head_wake_icon_head));
    this.capLayer = ((ImageView)findViewById(R.id.head_wake_icon_cap));
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!this.initialImageSizeCached)
    {
      this.maxWidth = this.baseLayer.getMeasuredWidth();
      this.maxHeight = this.baseLayer.getMeasuredHeight();
      this.initialImageSizeCached = true;
      Log.v(TAG, "Base image size w,h = " + this.maxWidth + ", " + this.maxHeight);
      this.maxWidth = ((int)Math.sqrt(this.maxWidth * this.maxWidth + this.maxHeight * this.maxHeight));
      Log.v(TAG, "Max width = " + this.maxWidth);
    }
    setMeasuredDimension(this.maxWidth, this.maxHeight);
  }

  public void setHeadAngleDegs(float paramFloat)
  {
    this.headLayer.setRotation(-paramFloat);
  }

  public void setHeadWakeEnabled(boolean paramBoolean)
  {
    this.baseLayer.setVisibility(0);
    if (paramBoolean)
    {
      this.headLayer.setVisibility(0);
      this.capLayer.setVisibility(0);
    }
    while (true)
    {
      invalidate();
      return;
      this.headLayer.setVisibility(4);
      this.capLayer.setVisibility(4);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.HeadWakePosableHeadViewGroup
 * JD-Core Version:    0.6.2
 */