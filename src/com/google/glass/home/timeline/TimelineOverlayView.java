package com.google.glass.home.timeline;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.DateHelper;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.TimelineItem;

public final class TimelineOverlayView extends FrameLayout
{
  private static final float ITEM_VIEW_SPACING = 10.0F;
  private static final float ITEM_VIEW_WIDTH = 211.20001F;
  private static final float LABEL_LEFT_MARGIN = 40.0F;
  private static final float LABEL_OFFSET_PER_ITEM = 221.20001F;
  private static final float LABEL_OFFSET_WHEN_LEFT_ALIGNED = 60.0F;
  private static final float LABEL_OFFSET_WHEN_RIGHT_ALIGNED = 10.0F;
  private static final float LABEL_RIGHT_MARGIN = 40.0F;
  private static final int MIN_ITEM_POSITION_FOR_LABEL = 1;
  private static final int NUM_LABELS = 5;
  private static final int NUM_LABELS_RIGHT_ALIGNED = 3;
  private static final float SCREEN_WIDTH = 640.0F;
  private static final String TAG = TimelineOverlayView.class.getSimpleName();
  private String[] labelText = new String[5];
  private float[] labelTextWidths = new float[5];
  private float[] labelX = new float[5];
  private TypophileTextView[] labels = new TypophileTextView[5];
  private int lastCenterPosition = -1;
  private float lastZoomFactor = 0.0F;
  private FrameLayout overlay;
  private TimelineView timelineView;

  public TimelineOverlayView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, TimelineView paramTimelineView)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.timelineView = paramTimelineView;
    this.overlay = new FrameLayout(paramContext);
    this.overlay.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
    addView(this.overlay);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    for (int i = 0; i < 5; i++)
    {
      this.labels[i] = ((TypophileTextView)localLayoutInflater.inflate(R.layout.timeline_label, null));
      this.labels[i].setVisibility(4);
      this.labelText[i] = "";
      this.labelTextWidths[i] = -1.0F;
      this.overlay.addView(this.labels[i]);
    }
    this.overlay.setTranslationY(this.overlay.getHeight());
    this.overlay.setAlpha(0.0F);
    Log.d(TAG, "Initialized timeline overlay");
  }

  public TimelineOverlayView(Context paramContext, AttributeSet paramAttributeSet, TimelineView paramTimelineView)
  {
    this(paramContext, paramAttributeSet, 0, paramTimelineView);
  }

  public TimelineOverlayView(Context paramContext, TimelineView paramTimelineView)
  {
    this(paramContext, null, 0, paramTimelineView);
  }

  private void adjustTimestampAlphaForItemView(View paramView)
  {
    float f = this.timelineView.getZoomOutFactor();
    View localView = paramView.findViewById(R.id.timestamp);
    if (localView != null)
      localView.setAlpha(1.0F - f);
  }

  private float getLabelTextWidth(int paramInt)
  {
    if (this.labelTextWidths[paramInt] < 0.0F)
      this.labelTextWidths[paramInt] = this.labels[paramInt].getPaint().measureText(this.labelText[paramInt]);
    return this.labelTextWidths[paramInt];
  }

  private String getTimeLabelTextForItem(TimelineItem paramTimelineItem, View paramView, boolean paramBoolean, long paramLong)
  {
    String str = (String)paramView.getTag(R.id.tag_item_time_label_text);
    if (str == null)
    {
      long l = TimelineHelper.getDisplayTime(paramTimelineItem);
      if ((l == 0L) || ((!paramBoolean) && (l < paramLong)))
        return getContext().getString(R.string.timeline_overlay_label_now);
      str = DateHelper.getRelativeTimestamp(getContext(), l, paramLong, true);
      paramView.setTag(R.id.tag_item_time_label_text, str);
    }
    return str;
  }

  private void setLabelText(int paramInt, String paramString, boolean paramBoolean)
  {
    this.labelText[paramInt] = paramString;
    this.labelTextWidths[paramInt] = -1.0F;
    if (paramBoolean)
    {
      updateLabelVisibility(paramInt);
      if (this.labels[paramInt].getVisibility() == 0)
        this.labels[paramInt].setText(paramString);
      if (paramInt > 0)
        if (this.labels[(paramInt - 1)].getVisibility() != 0)
          break label113;
    }
    label113: for (int i = 1; ; i = 0)
    {
      updateLabelVisibility(paramInt - 1);
      if ((this.labels[(paramInt - 1)].getVisibility() == 0) && (i == 0))
        this.labels[(paramInt - 1)].setText(this.labelText[(paramInt - 1)]);
      return;
    }
  }

  private void updateLabelForItemView(View paramView, long paramLong)
  {
    int i = Math.round(this.timelineView.getScrollPosition());
    int j = this.timelineView.getHomePosition();
    int k = ((Integer)paramView.getTag(R.id.tag_horizontal_scroll_item_position)).intValue();
    if (Math.abs(k - i) > 2)
      return;
    TimelineItem localTimelineItem = (TimelineItem)paramView.getTag(R.id.tag_horizontal_scroll_item);
    if (k > j);
    for (boolean bool = true; ; bool = false)
    {
      String str = getTimeLabelTextForItem(localTimelineItem, paramView, bool, paramLong);
      setLabelText(k - (i - 2), str, true);
      updateLabelPositions();
      return;
    }
  }

  private void updateLabelPositions()
  {
    float f1 = this.timelineView.getScrollPosition();
    int i = Math.round(f1);
    int j = i - 2;
    float f2 = 221.20001F * (f1 - i);
    for (int k = 0; k < 3; k++)
    {
      float f8 = 221.20001F * (k - 3);
      this.labelX[k] = (10.0F + f8 - f2);
    }
    for (int m = 3; m < 5; m++)
    {
      float f5 = 221.20001F * (m - 3);
      float f6 = 10.0F + f5 - f2;
      float f7 = 60.0F + f5 - 221.20001F - f2 + getLabelTextWidth(m);
      if (f7 < -40.0F)
        f7 = Math.min(-40.0F, f6);
      for (int i4 = m; (i4 >= 2) && (j + i4 > 1) && (this.labels[(i4 - 1)].getVisibility() == 4); i4--);
      if (i4 < m)
        f7 = Math.max(Math.min(-40.0F, f6), f7 - 221.20001F * (m - i4));
      this.labelX[m] = f7;
    }
    float f3 = this.timelineView.getZoomScale();
    if (f3 > 0.33F)
      for (int i3 = 0; i3 < 5; i3++)
        this.labelX[i3] = (-320.0F + f3 / 0.33F * (320.0F + this.labelX[i3]));
    int n = 0;
    if (n < 5)
    {
      int i2;
      label322: TypophileTextView localTypophileTextView;
      if ((this.labelX[n] < -640.0F) || (this.labelX[n] > 211.20001F))
      {
        i2 = 1;
        localTypophileTextView = this.labels[n];
        if (i2 == 0)
          break label358;
      }
      label358: for (float f4 = 0.0F; ; f4 = 1.0F)
      {
        localTypophileTextView.setAlpha(f4);
        n++;
        break;
        i2 = 0;
        break label322;
      }
    }
    invalidate();
    for (int i1 = 0; i1 < 5; i1++)
      if ((this.labels[i1].getVisibility() == 0) && (this.labels[i1].getAlpha() > 0.0F))
        this.labels[i1].setTranslationX(Math.round(this.labelX[i1]));
  }

  private void updateLabelVisibility(int paramInt)
  {
    String str = this.labelText[paramInt];
    if ((str.length() == 0) || ((paramInt < 4) && (str.equals(this.labelText[(paramInt + 1)]))));
    for (int i = 1; ; i = 0)
    {
      TypophileTextView localTypophileTextView = this.labels[paramInt];
      int j = 0;
      if (i != 0)
        j = 4;
      localTypophileTextView.setVisibility(j);
      return;
    }
  }

  private void updateLabels()
  {
    int i = this.timelineView.getAdapter().getCount();
    int j = this.timelineView.getHomePosition();
    int k = Math.round(this.timelineView.getScrollPosition());
    int m = k - 2;
    long l = System.currentTimeMillis();
    boolean[] arrayOfBoolean = new boolean[5];
    int n = 0;
    while (n < this.timelineView.getChildCount())
    {
      final View localView = this.timelineView.getItemViewForChildAt(n);
      int i2 = ((Integer)localView.getTag(R.id.tag_horizontal_scroll_item_position)).intValue();
      if (Math.abs(i2 - k) > 2)
      {
        n++;
      }
      else
      {
        String str = "";
        if (i2 == j)
          str = getContext().getString(R.string.timeline_overlay_label_now);
        while (true)
        {
          setLabelText(i2 - m, str, false);
          arrayOfBoolean[(i2 - m)] = true;
          adjustTimestampAlphaForItemView(localView);
          break;
          if ((i2 >= 1) && (i2 < i))
          {
            TimelineItem localTimelineItem = (TimelineItem)localView.getTag(R.id.tag_horizontal_scroll_item);
            if (localTimelineItem != null)
            {
              if (i2 > j);
              for (boolean bool = true; ; bool = false)
              {
                str = getTimeLabelTextForItem(localTimelineItem, localView, bool, l);
                break;
              }
            }
            if (i2 > 1)
            {
              if (i2 > m)
                str = this.labelText[(-1 + (i2 - m))];
              if (localView.getTag(R.id.tag_timeline_database_adapter_load_runnable) == null)
                localView.setTag(R.id.tag_timeline_database_adapter_load_runnable, new Runnable()
                {
                  public void run()
                  {
                    long l = System.currentTimeMillis();
                    TimelineOverlayView.this.updateLabelForItemView(localView, l);
                    TimelineOverlayView.this.adjustTimestampAlphaForItemView(localView);
                  }
                });
            }
          }
        }
      }
    }
    for (int i1 = 0; i1 < 5; i1++)
      if (arrayOfBoolean[i1] == 0)
        setLabelText(i1, "", false);
    updateTextViews();
    updateLabelPositions();
  }

  private void updateTextViews()
  {
    for (int i = 0; i < 5; i++)
    {
      updateLabelVisibility(i);
      if (this.labels[i].getVisibility() == 0)
        this.labels[i].setText(this.labelText[i]);
    }
  }

  public void onScaleChanged(float paramFloat)
  {
    float f = this.timelineView.getZoomOutFactor();
    if (f == this.lastZoomFactor)
      return;
    if (this.lastZoomFactor == 0.0F)
      updateLabels();
    this.lastZoomFactor = f;
    for (int i = 0; i < this.timelineView.getChildCount(); i++)
    {
      View localView = this.timelineView.getChildAt(i).findViewById(R.id.timestamp);
      if (localView != null)
        localView.setAlpha(1.0F - f);
    }
    this.overlay.setTranslationY(Math.round((1.0F - f) * this.overlay.getHeight()));
    this.overlay.setAlpha(f);
    updateLabelPositions();
  }

  public void onScrollPositionChanged(float paramFloat)
  {
    int i = Math.round(paramFloat);
    if (i != this.lastCenterPosition)
    {
      this.lastCenterPosition = i;
      updateLabels();
      return;
    }
    updateLabelPositions();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineOverlayView
 * JD-Core Version:    0.6.2
 */