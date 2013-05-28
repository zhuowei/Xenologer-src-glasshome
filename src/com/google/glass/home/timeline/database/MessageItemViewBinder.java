package com.google.glass.home.timeline.database;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.glass.entity.EntityHelper;
import com.google.glass.home.R.color;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.fraction;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.glass.widget.MosaicView;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class MessageItemViewBinder extends BaseItemViewBinder
{
  private static int bindingIndex = 0;
  private static final Handler mainThreadHandler = new Handler(Looper.getMainLooper());

  @VisibleForTesting
  protected static void dedupeList(List<Entity> paramList)
  {
    HashSet localHashSet = Sets.newHashSet();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = EntityHelper.getIds((Entity)localIterator.next());
      if (arrayOfString != null)
      {
        int i = arrayOfString.length;
        for (int j = 0; ; j++)
        {
          int k = 0;
          if (j < i)
          {
            if (localHashSet.contains(arrayOfString[j]))
              k = 1;
          }
          else
          {
            if (k == 0)
              break label90;
            localIterator.remove();
            break;
          }
        }
        label90: localHashSet.addAll(Arrays.asList(arrayOfString));
      }
    }
  }

  public int getLayout()
  {
    return R.layout.timeline_item_message;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, final View paramView, CachedBitmapFactory paramCachedBitmapFactory, final DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    int i = R.id.tag_view_binding_index;
    int j = 1 + bindingIndex;
    bindingIndex = j;
    paramView.setTag(i, Integer.valueOf(j));
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.participants);
    Resources localResources = paramView.getResources();
    int k = localResources.getDimensionPixelSize(R.dimen.lhs_width);
    int m = localResources.getDisplayMetrics().heightPixels;
    String str1 = paramTimelineItem.getTitle();
    String str2 = paramTimelineItem.getText();
    final SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if (!TextUtils.isEmpty(str1))
      localSpannableStringBuilder.append(str1);
    LinkedList localLinkedList;
    label246: View localView;
    if (!TextUtils.isEmpty(str2))
    {
      if (TextUtils.isEmpty(localSpannableStringBuilder))
        localSpannableStringBuilder.append(str2);
    }
    else
    {
      final DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.message);
      if (paramBoolean2)
        localDynamicSizeTextView.setForcedToSmallestSize(true);
      final int n = bindingIndex;
      mainThreadHandler.post(new Runnable()
      {
        public void run()
        {
          Object localObject = paramView.getTag(R.id.tag_view_binding_index);
          if ((localObject != null) && (((Integer)localObject).intValue() == n))
          {
            localDynamicSizeTextView.setTextClipListener(paramTextClipListener);
            localDynamicSizeTextView.setText(localSpannableStringBuilder);
          }
        }
      });
      localLinkedList = Lists.newLinkedList();
      if (paramTimelineItem.hasCreator())
        localLinkedList.add(paramTimelineItem.getCreator());
      if (!paramBoolean1)
        localLinkedList.addAll(paramTimelineItem.getShareTargetList());
      dedupeList(localLinkedList);
      if (!localLinkedList.isEmpty())
        break label355;
      localMosaicView.setVisibility(8);
      localView = paramView.findViewById(R.id.failed_overlay);
      if (!TimelineHelper.failedToSyncToCompanion(paramTimelineItem))
        break label375;
      localView.setVisibility(0);
      float f = paramContext.getResources().getFraction(R.fraction.failed_message_background_alpha, 1, 1);
      paramView.findViewById(R.id.body).setAlpha(f);
    }
    while (true)
    {
      return false;
      int i1 = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append("\n");
      localSpannableStringBuilder.append(str2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(R.color.text_gray)), i1, localSpannableStringBuilder.length(), 33);
      break;
      label355: localMosaicView.setVisibility(0);
      localMosaicView.setEntities(localLinkedList, k, m);
      break label246;
      label375: localView.setVisibility(8);
      paramView.findViewById(R.id.body).setAlpha(1.0F);
    }
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    paramView.setTag(R.id.tag_view_binding_index, null);
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.participants);
    localMosaicView.cancelImageDownloads();
    localMosaicView.clearImages();
    DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.message);
    localDynamicSizeTextView.setTextClipListener(null);
    localDynamicSizeTextView.setForcedToSmallestSize(false);
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.MESSAGE.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.MessageItemViewBinder
 * JD-Core Version:    0.6.2
 */