package com.google.glass.entity;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassActivity;
import com.google.glass.common.R.id;
import com.google.glass.horizontalscroll.HorizontalScrollFrameLayout;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.EntityImageDownloadTask;
import com.google.glass.util.ImageProxyBitmapLoadingTask;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.googlex.glass.common.proto.Entity;

public class EntityItemView extends HorizontalScrollFrameLayout
{
  private Entity entity = null;
  private ImageView image;
  private final int imageHeight;
  private final int imageWidth;
  private TextView label;
  private ImageProxyBitmapLoadingTask loadingTask;

  public EntityItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.imageWidth = localDisplayMetrics.widthPixels;
    this.imageHeight = localDisplayMetrics.heightPixels;
  }

  public void bind(Entity paramEntity)
  {
    this.entity = paramEntity;
    if (this.loadingTask != null)
    {
      DeferredContentLoader.cancel(this.loadingTask);
      this.loadingTask = null;
    }
    this.loadingTask = new EntityImageDownloadTask(getContext(), paramEntity, this.image, this.label, this.imageWidth, this.imageHeight);
    DeferredContentLoader.load(this.loadingTask);
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    return true;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.image = ((ImageView)findViewById(R.id.image));
    this.label = ((TextView)findViewById(R.id.label));
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
 * Qualified Name:     com.google.glass.entity.EntityItemView
 * JD-Core Version:    0.6.2
 */