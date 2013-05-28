package com.google.glass.horizontalscroll;

import android.view.View;
import com.google.glass.util.Assert;

class HorizontalScrollItemStateManager
{
  private final HorizontalScrollItem item;
  private HorizontalScrollItem.State state = HorizontalScrollItem.State.UNLOADED;
  private final View view;

  public HorizontalScrollItemStateManager(View paramView)
  {
    Assert.assertNotNull(paramView);
    this.view = paramView;
    this.item = ((HorizontalScrollItem)paramView);
  }

  private void changeState(HorizontalScrollItem.State paramState1, HorizontalScrollItem.State paramState2)
  {
    if (this.state != paramState1)
      throw new IllegalStateException("Tried to change state from " + this.state + " to " + paramState2 + "; should be in state " + paramState1 + " before changing to " + paramState2);
    this.state = paramState2;
  }

  public View getView()
  {
    return this.view;
  }

  public void onFocus()
  {
    changeState(HorizontalScrollItem.State.LOADED, HorizontalScrollItem.State.FOCUSED);
    this.item.onFocus();
  }

  public void onLoad()
  {
    changeState(HorizontalScrollItem.State.UNLOADED, HorizontalScrollItem.State.LOADED);
    this.item.onLoad();
  }

  public void onSettled()
  {
    changeState(HorizontalScrollItem.State.FOCUSED, HorizontalScrollItem.State.SETTLED);
    this.item.onSettled();
  }

  public void onUnfocus()
  {
    if (this.state == HorizontalScrollItem.State.SETTLED)
    {
      changeState(HorizontalScrollItem.State.SETTLED, HorizontalScrollItem.State.FOCUSED);
      this.item.onUnsettled();
    }
    changeState(HorizontalScrollItem.State.FOCUSED, HorizontalScrollItem.State.LOADED);
    this.item.onUnfocus();
  }

  public void onUnload()
  {
    changeState(HorizontalScrollItem.State.LOADED, HorizontalScrollItem.State.UNLOADED);
    this.item.onUnload();
  }

  public void onUnsettled()
  {
    changeState(HorizontalScrollItem.State.SETTLED, HorizontalScrollItem.State.FOCUSED);
    this.item.onUnsettled();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.horizontalscroll.HorizontalScrollItemStateManager
 * JD-Core Version:    0.6.2
 */