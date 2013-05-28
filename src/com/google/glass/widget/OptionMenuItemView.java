package com.google.glass.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;

public class OptionMenuItemView extends LinearLayout
  implements HorizontalScrollItem
{
  private OptionMenuView.Listener listener;

  public OptionMenuItemView(Context paramContext)
  {
    super(paramContext);
    initialize();
  }

  public OptionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize();
  }

  public OptionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize();
  }

  private void initialize()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.option_menu_item, this);
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    if (this.listener != null)
    {
      OptionMenu.Item localItem = (OptionMenu.Item)getTag(R.id.tag_horizontal_scroll_item);
      if ((localItem.isEnabled()) && (this.listener.onMenuOptionConfirmed(localItem)))
        return true;
    }
    return false;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
  }

  public void setListener(OptionMenuView.Listener paramListener)
  {
    this.listener = paramListener;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenuItemView
 * JD-Core Version:    0.6.2
 */