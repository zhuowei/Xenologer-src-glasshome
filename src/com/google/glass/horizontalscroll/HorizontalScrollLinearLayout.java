package com.google.glass.horizontalscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public class HorizontalScrollLinearLayout extends LinearLayout
  implements HorizontalScrollItem
{
  public HorizontalScrollLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public HorizontalScrollLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public HorizontalScrollLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
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

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.horizontalscroll.HorizontalScrollLinearLayout
 * JD-Core Version:    0.6.2
 */