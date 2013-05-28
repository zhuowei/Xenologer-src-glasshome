package com.google.glass.home.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public abstract class SettingsItemView extends LinearLayout
  implements HorizontalScrollItem
{
  private MessageDialog dialog;

  public SettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public SettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void clearDialog()
  {
    if ((this.dialog != null) && (this.dialog.isShowing()))
      this.dialog.cancel();
    this.dialog = null;
  }

  public final TimelineItemId getBundleId()
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
    clearDialog();
  }

  public void onUnsettled()
  {
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }

  protected final void showDialog(MessageDialog paramMessageDialog)
  {
    clearDialog();
    this.dialog = paramMessageDialog;
    this.dialog.show();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.SettingsItemView
 * JD-Core Version:    0.6.2
 */