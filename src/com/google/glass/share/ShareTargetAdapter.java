package com.google.glass.share;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.google.glass.common.R.id;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.GlasswareIconLoadingTask;
import com.google.glass.util.GlasswareIconLoadingTask.IconSize;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.Entity;
import java.util.List;

public class ShareTargetAdapter extends BaseAdapter
  implements ViewRecycler
{
  private final Context context;
  private final ShareHorizontalScrollView.Listener listener;
  private final List<Entity> shareTargets;

  public ShareTargetAdapter(Context paramContext, List<Entity> paramList, ShareHorizontalScrollView.Listener paramListener)
  {
    this.context = paramContext;
    this.shareTargets = paramList;
    this.listener = paramListener;
  }

  private void bindGlasswareIcon(Entity paramEntity, View paramView)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.glassware_icon);
    if ((paramEntity.hasSource()) && (paramEntity.getSource().startsWith("api:")))
    {
      String str = paramEntity.getSource().substring("api:".length());
      GlasswareIconLoadingTask localGlasswareIconLoadingTask = new GlasswareIconLoadingTask(this.context, str, GlasswareIconLoadingTask.IconSize.MEDIUM, localImageView);
      DeferredContentLoader.load(localGlasswareIconLoadingTask);
      paramView.setTag(R.id.tag_loading_task, localGlasswareIconLoadingTask);
    }
  }

  public int getCount()
  {
    return this.shareTargets.size();
  }

  public Entity getItem(int paramInt)
  {
    return (Entity)this.shareTargets.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return getItem(paramInt).getId().hashCode();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Entity localEntity = getItem(paramInt);
    if (paramView == null)
    {
      paramView = new ShareTargetView(this.context);
      ((ShareTargetView)paramView).setListener(this.listener);
    }
    ((TypophileTextView)paramView.findViewById(R.id.label)).setText(localEntity.getDisplayName());
    bindGlasswareIcon(localEntity, paramView);
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.mosaic);
    int i = this.context.getResources().getDisplayMetrics().widthPixels;
    int j = this.context.getResources().getDisplayMetrics().heightPixels;
    if (localEntity.getImageUrlCount() > 0)
    {
      localMosaicView.setImageUrls(localEntity.getImageUrlList(), i, j);
      localMosaicView.setVisibility(0);
    }
    while (true)
    {
      paramView.setTag(R.id.tag_horizontal_scroll_item, getItem(paramInt));
      paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return paramView;
      localMosaicView.setVisibility(8);
    }
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  public void recycleView(View paramView)
  {
    GlasswareIconLoadingTask localGlasswareIconLoadingTask = (GlasswareIconLoadingTask)paramView.getTag(R.id.tag_loading_task);
    if (localGlasswareIconLoadingTask != null)
    {
      localGlasswareIconLoadingTask.cancel(false);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.mosaic);
    localMosaicView.cancelImageDownloads();
    localMosaicView.clearImages();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareTargetAdapter
 * JD-Core Version:    0.6.2
 */