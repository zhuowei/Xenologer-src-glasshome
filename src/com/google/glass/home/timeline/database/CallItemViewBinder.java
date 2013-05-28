package com.google.glass.home.timeline.database;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.home.R.color;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.integer;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.phone.PhoneCallTimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.EntityImageDownloadTask;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.List;

public class CallItemViewBinder extends BaseItemViewBinder
{
  public int getLayout()
  {
    return R.layout.timeline_item_call;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    String str = paramTimelineItem.getText();
    Resources localResources = paramContext.getResources();
    int i = localResources.getColor(R.color.state_green);
    if (paramContext.getString(R.string.phone_call_missed_call).contentEquals(str))
      i = localResources.getColor(R.color.state_red);
    TextView localTextView1 = (TextView)paramView.findViewById(R.id.message);
    TextView localTextView2 = (TextView)paramView.findViewById(R.id.sender_name);
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.sender_picture);
    int j = (int)localResources.getDimension(R.dimen.lhs_width);
    int k = localResources.getDisplayMetrics().heightPixels;
    localTextView1.setText(str);
    Entity localEntity = paramTimelineItem.getCreator();
    localTextView1.setMaxLines(localResources.getInteger(R.integer.max_lines_in_phone_call_timeline_card));
    localTextView2.setVisibility(0);
    localTextView1.setTextColor(i);
    localTextView2.setText(new PhoneCallTimelineHelper(paramContext).getNameFromEntity(localEntity));
    EntityImageDownloadTask localEntityImageDownloadTask = new EntityImageDownloadTask(paramContext, localEntity, localImageView, null, j, k);
    paramView.setTag(R.id.tag_loading_task, localEntityImageDownloadTask);
    DeferredContentLoader.loadForScrollItemSubview(paramView, localEntityImageDownloadTask);
    return false;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    EntityImageDownloadTask localEntityImageDownloadTask = (EntityImageDownloadTask)paramView.getTag(R.id.tag_loading_task);
    if (localEntityImageDownloadTask != null)
    {
      DeferredContentLoader.cancel(localEntityImageDownloadTask);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    ((ImageView)paramView.findViewById(R.id.sender_picture)).setImageDrawable(null);
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.CALL.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.CallItemViewBinder
 * JD-Core Version:    0.6.2
 */