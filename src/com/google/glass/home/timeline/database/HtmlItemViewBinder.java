package com.google.glass.home.timeline.database;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.home.timeline.html.HtmlRenderer;
import com.google.glass.home.timeline.html.HtmlRenderer.OnRenderListener;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import java.util.List;

public class HtmlItemViewBinder extends BaseItemViewBinder
{
  private HtmlRenderer renderer;

  private int getFooterRightMargin(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    return getTimestampWidth() + localResources.getDimensionPixelSize(R.dimen.glassware_icon_size) + localResources.getDimensionPixelSize(R.dimen.glassware_icon_left_margin) + localResources.getDimensionPixelSize(R.dimen.generic_card_padding);
  }

  private void releaseRenderer()
  {
    Assert.assertUiThread();
    if (this.renderer != null)
    {
      this.renderer.release();
      this.renderer = null;
    }
  }

  public int getLayout()
  {
    return R.layout.timeline_item_html;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    releaseRenderer();
    final ImageView localImageView = (ImageView)paramView.findViewById(R.id.rendered_html);
    this.renderer = HtmlRenderer.obtain();
    this.renderer.render(paramTimelineItem, getFooterRightMargin(paramContext), new HtmlRenderer.OnRenderListener()
    {
      public void onRender(HtmlRenderer paramAnonymousHtmlRenderer, Bitmap paramAnonymousBitmap)
      {
        localImageView.setImageBitmap(paramAnonymousBitmap);
      }
    });
    return paramTimelineItem.getHtmlPageCount() > 0;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
      ((ImageView)paramView.findViewById(R.id.rendered_html)).setImageBitmap(null);
    releaseRenderer();
  }

  protected boolean shouldShowTimestamp(TimelineItem paramTimelineItem)
  {
    return getBundleItemIndex(paramTimelineItem) == 0;
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.HTML.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    if (paramTimelineItem.getHtmlPageCount() == 0)
      paramList.add(paramTimelineItem);
    while (true)
    {
      return;
      for (int i = 0; i < paramTimelineItem.getHtmlPageCount(); i++)
      {
        TimelineItem.Builder localBuilder = TimelineItem.newBuilder(paramTimelineItem);
        localBuilder.clearHtml();
        localBuilder.setHtml(paramTimelineItem.getHtmlPage(i));
        adjustBundleItemIndex(localBuilder, i + 1, paramTimelineItem);
        paramList.add(localBuilder.build());
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.HtmlItemViewBinder
 * JD-Core Version:    0.6.2
 */