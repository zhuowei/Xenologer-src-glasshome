package com.google.glass.home.timeline.database;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.search.results.MajelProcessor;
import com.google.glass.home.search.results.ResultsContainer;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.timeline.AttachmentHelper;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import java.util.List;

public class SearchItemViewBinder extends BaseItemViewBinder
{
  private static final String TAG = SearchItemViewBinder.class.getSimpleName();

  private void clearImagesFromViewGroup(ViewGroup paramViewGroup)
  {
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup))
        clearImagesFromViewGroup((ViewGroup)localView);
      while (true)
      {
        i++;
        break;
        if ((localView instanceof ImageView))
          ((ImageView)localView).setImageDrawable(null);
      }
    }
  }

  public int getLayout()
  {
    return R.layout.timeline_item_search;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    if (!TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, new String[] { "proto/search" }))
    {
      Log.w(TAG, "Timeline item does not have a search proto attachment");
      return false;
    }
    LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(R.id.cover);
    SearchProtoLoadingTask localSearchProtoLoadingTask = new SearchProtoLoadingTask(paramTimelineItem.getAttachment(0), paramTimelineItem.getText(), localLinearLayout);
    paramView.setTag(R.id.tag_loading_task, localSearchProtoLoadingTask);
    DeferredContentLoader.loadForScrollItemSubview(paramView, localSearchProtoLoadingTask);
    return false;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    DeferredContentLoader.LoadingTask localLoadingTask = (DeferredContentLoader.LoadingTask)paramView.getTag(R.id.tag_loading_task);
    if (localLoadingTask != null)
    {
      DeferredContentLoader.cancel(localLoadingTask);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    if ((paramView instanceof ViewGroup))
      clearImagesFromViewGroup((ViewGroup)paramView);
  }

  protected String provideInfoText(TimelineItem paramTimelineItem)
  {
    return null;
  }

  protected boolean shouldHideSyncIcon(TimelineItem paramTimelineItem)
  {
    return true;
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.SEARCH.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }

  private class SearchProtoLoadingTask extends DeferredContentLoader.LoadingTask<byte[]>
  {
    private final Attachment attachment;
    private final AttachmentHelper attachmentHelper;
    private final String recognitionResult;
    private final ViewGroup viewGroup;

    public SearchProtoLoadingTask(Attachment paramString, String paramViewGroup, ViewGroup arg4)
    {
      this.attachment = paramString;
      this.recognitionResult = paramViewGroup;
      Object localObject;
      this.viewGroup = localObject;
      this.attachmentHelper = new AttachmentHelper(localObject.getContext());
    }

    protected void bindContent(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        Log.w(SearchItemViewBinder.TAG, "No search proto to bind to");
      while (true)
      {
        return;
        try
        {
          MajelProtos.MajelResponse localMajelResponse = MajelProtos.MajelResponse.parseFrom(paramArrayOfByte);
          if (localMajelResponse != null)
          {
            ResultsContainer localResultsContainer = new MajelProcessor(this.viewGroup.getContext(), this.recognitionResult).process(localMajelResponse, true);
            if ((localResultsContainer != null) && (localResultsContainer.getResultPageCount() > 0))
            {
              this.viewGroup.addView(localResultsContainer.getViewAt(0));
              return;
            }
          }
        }
        catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
        {
          Log.e(SearchItemViewBinder.TAG, localInvalidProtocolBufferMicroException.getMessage(), localInvalidProtocolBufferMicroException);
        }
      }
    }

    protected byte[] loadContent()
    {
      byte[] arrayOfByte = this.attachmentHelper.getAttachmentBytes(this.attachment.getId(), CachedFilesManager.Type.PROTO_BUFFER, this.attachment);
      if (arrayOfByte == null)
        Log.w(SearchItemViewBinder.TAG, "Attachment proto not on file system and could not be downloaded.");
      return arrayOfByte;
    }

    protected void prepareContent()
    {
      this.viewGroup.removeAllViews();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.SearchItemViewBinder
 * JD-Core Version:    0.6.2
 */