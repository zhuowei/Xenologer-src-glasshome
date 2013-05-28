package com.google.glass.home.voice;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.glass.home.R.id;
import com.google.glass.home.voice.menu.VoiceMenuEnvironment;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.horizontalscroll.ViewRecycler;
import java.util.List;

class TouchMenuAdapter extends BaseAdapter
  implements ViewRecycler
{
  private final VoiceMenuEnvironment environment;
  private List<? extends VoiceMenuItem> items;

  TouchMenuAdapter(VoiceMenuEnvironment paramVoiceMenuEnvironment, List<? extends VoiceMenuItem> paramList)
  {
    this.environment = paramVoiceMenuEnvironment;
    this.items = paramList;
  }

  public int getCount()
  {
    return this.items.size();
  }

  public Object getItem(int paramInt)
  {
    return this.items.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new TouchMenuItemView(this.environment);
      paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    }
    ((TouchMenuItemView)paramView).bind((VoiceMenuItem)this.items.get(paramInt));
    return paramView;
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.TouchMenuAdapter
 * JD-Core Version:    0.6.2
 */