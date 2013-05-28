package com.google.glass.home.voice;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;

public class TouchMenuView extends BaseHorizontalScrollView<Integer, VoiceMenuItem>
{
  public TouchMenuView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TouchMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, false);
  }

  public int findIdPosition(Integer paramInteger)
  {
    return paramInteger.intValue();
  }

  public int findItemPosition(VoiceMenuItem paramVoiceMenuItem)
  {
    for (int i = 0; i < getAdapter().getCount(); i++)
      if (getAdapter().getItem(i) == paramVoiceMenuItem)
        return i;
    throw new IllegalArgumentException("Unknown item: " + paramVoiceMenuItem);
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getViewForPosition(int paramInt)
  {
    return getAdapter().getView(paramInt, null, this);
  }

  public void rebindView(int paramInt, View paramView)
  {
    getAdapter().getView(paramInt, paramView, this);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.TouchMenuView
 * JD-Core Version:    0.6.2
 */