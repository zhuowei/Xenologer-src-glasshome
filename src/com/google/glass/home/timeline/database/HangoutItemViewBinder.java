package com.google.glass.home.timeline.database;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.collect.Lists;
import com.google.glass.entity.EntityHelper;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.integer;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.glass.widget.MosaicView;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Iterator;
import java.util.List;

public class HangoutItemViewBinder extends BaseItemViewBinder
{
  private static final String TAG = HangoutItemViewBinder.class.getSimpleName();

  public int getLayout()
  {
    return R.layout.timeline_item_hangout;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    Resources localResources = paramContext.getResources();
    TextView localTextView = (TextView)paramView.findViewById(R.id.message);
    localTextView.setText(paramTimelineItem.getText());
    localTextView.setMaxLines(localResources.getInteger(R.integer.max_lines_in_hangouts_timeline_card));
    localTextView.setTextColor(localResources.getColor(17170443));
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.sender_picture_mosaic);
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.sender_picture_placeholder);
    int i = (int)localResources.getDimension(R.dimen.lhs_width);
    int j = localResources.getDisplayMetrics().heightPixels;
    Object localObject;
    if (!paramTimelineItem.hasCreator())
    {
      Log.d(TAG, "No creator, setting MosaicView to share target 0's imageUrlList.");
      if (paramTimelineItem.getShareTargetCount() > 0)
      {
        localObject = paramTimelineItem.getShareTarget(0).getImageUrlList();
        if ((localObject == null) || (((List)localObject).size() <= 0))
          break label420;
        Log.d(TAG, "Setting mosaic view to valid list of image urls.");
        localMosaicView.setImageUrls((List)localObject, i, j);
        localMosaicView.setVisibility(0);
        localImageView.setVisibility(4);
      }
    }
    while (true)
    {
      return false;
      Log.w(TAG, "No creator and no share target.  Might be an old TimelineItem.");
      localObject = null;
      break;
      Log.d(TAG, "Creator exists, setting MosaicView to participants.");
      if (paramTimelineItem.getShareTargetCount() == 0)
      {
        Log.d(TAG, "We didn't hang out with any share targets. :(");
        if (paramTimelineItem.getCreator().getImageUrlCount() > 0)
        {
          Log.d(TAG, "Creator had an image URL, using that.");
          String[] arrayOfString = new String[1];
          arrayOfString[0] = EntityHelper.getFirstImageUrl(paramTimelineItem.getCreator());
          localObject = Lists.newArrayList(arrayOfString);
          break;
        }
        Log.d(TAG, "Creator had an no image URL.");
        localObject = null;
        break;
      }
      Log.d(TAG, "We hung out with " + paramTimelineItem.getShareTargetCount() + " share targets.");
      localObject = Lists.newArrayListWithExpectedSize(paramTimelineItem.getShareTargetCount());
      Iterator localIterator = paramTimelineItem.getShareTargetList().iterator();
      while (localIterator.hasNext())
      {
        Entity localEntity = (Entity)localIterator.next();
        String str = EntityHelper.getFirstImageUrl(localEntity);
        if (!TextUtils.isEmpty(str))
          ((List)localObject).add(str);
        else
          Log.w(TAG, "Got a share target with empty/null image URL.  # of images=" + localEntity.getImageUrlCount());
      }
      break;
      label420: Log.d(TAG, "Using placeholder.");
      localMosaicView.setVisibility(4);
      localImageView.setVisibility(0);
    }
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.sender_picture_mosaic);
    localMosaicView.cancelImageDownloads();
    localMosaicView.clearImages();
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.HANGOUT.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.HangoutItemViewBinder
 * JD-Core Version:    0.6.2
 */