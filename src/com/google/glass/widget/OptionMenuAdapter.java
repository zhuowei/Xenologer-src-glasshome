package com.google.glass.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.google.glass.common.R.id;
import com.google.glass.horizontalscroll.ViewRecycler;

public class OptionMenuAdapter extends BaseAdapter
  implements ViewRecycler
{
  private final Context context;
  private final OptionMenuView.Listener listener;
  private final OptionMenu optionMenu;

  public OptionMenuAdapter(Context paramContext, OptionMenu paramOptionMenu, OptionMenuView.Listener paramListener)
  {
    this.context = paramContext;
    this.optionMenu = paramOptionMenu;
    this.listener = paramListener;
  }

  public int getCount()
  {
    return this.optionMenu.getVisibleItemCount();
  }

  public OptionMenu.Item getItem(int paramInt)
  {
    return this.optionMenu.getVisibleItem(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return getItem(paramInt).getItemId();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    OptionMenu.Item localItem = getItem(paramInt);
    if (paramView == null)
    {
      paramView = new OptionMenuItemView(this.context);
      ((OptionMenuItemView)paramView).setListener(this.listener);
    }
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.icon);
    TypophileTextView localTypophileTextView = (TypophileTextView)paramView.findViewById(R.id.label);
    Log.d("OptionMenuAdapter", "IMAGE=" + localImageView + ", item=" + localItem);
    localImageView.setImageDrawable(localItem.getCurrentState().getImage());
    localTypophileTextView.setText(localItem.getCurrentState().getName());
    if (!localItem.isEnabled())
    {
      localImageView.setAlpha(0.5F);
      localTypophileTextView.setAlpha(0.5F);
    }
    TipsView localTipsView = (TipsView)paramView.findViewById(R.id.description);
    if (!TextUtils.isEmpty(localItem.getDescription()))
    {
      localTipsView.setTip(localItem.getDescription());
      localTipsView.setVisibility(0);
    }
    while (true)
    {
      paramView.setTag(R.id.tag_horizontal_scroll_item, getItem(paramInt));
      paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return paramView;
      localTipsView.setVisibility(8);
    }
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenuAdapter
 * JD-Core Version:    0.6.2
 */