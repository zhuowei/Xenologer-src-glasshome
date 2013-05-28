package com.google.glass.share;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.googlex.glass.common.proto.Entity;

public class ShareTargetView extends LinearLayout
  implements HorizontalScrollItem
{
  private ShareHorizontalScrollView.Listener listener;

  public ShareTargetView(Context paramContext)
  {
    super(paramContext);
    initialize();
  }

  public ShareTargetView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize();
  }

  public ShareTargetView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize();
  }

  private void initialize()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.share_target, this);
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    if (this.listener != null)
    {
      Entity localEntity = (Entity)getTag(R.id.tag_horizontal_scroll_item);
      if (this.listener.onShareTargetConfirm(localEntity))
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

  public void setListener(ShareHorizontalScrollView.Listener paramListener)
  {
    this.listener = paramListener;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareTargetView
 * JD-Core Version:    0.6.2
 */