package com.google.glass.home.companion;

import android.content.Context;
import android.util.Log;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.Proto.ApiRequest;
import com.google.glass.companion.Proto.ApiResponse;
import com.google.glass.companion.Proto.ApiResponse.Builder;
import com.google.glass.companion.Proto.ApiResponse.ResponseType;
import com.google.glass.companion.Proto.Envelope.Builder;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.string;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineHelper.Update;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver.Saver;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

public class CompanionHelper
{
  private static final String SEPARATOR = "_";
  private static final String TAG = CompanionHelper.class.getSimpleName();

  public static TimelineItem appendGlassSmsSignature(Context paramContext, TimelineItem paramTimelineItem)
  {
    String str1 = paramTimelineItem.getText();
    if (str1 == null)
    {
      Log.w(TAG, "Couldn't append Glass signature to null text");
      return paramTimelineItem;
    }
    String str2 = paramContext.getString(R.string.timeline_sms_signature);
    String str3 = paramContext.getString(R.string.timeline_sms_signature_format, new Object[] { str1, str2 });
    return TimelineItem.newBuilder(paramTimelineItem).setText(str3).build();
  }

  public static TimelineItem getItem(Proto.ApiRequest paramApiRequest)
  {
    TimelineItem localTimelineItem;
    if (!paramApiRequest.hasTimelineItem())
    {
      Log.w(TAG, "No timeline item to insert");
      localTimelineItem = null;
    }
    do
    {
      return localTimelineItem;
      localTimelineItem = paramApiRequest.getTimelineItem();
    }
    while (localTimelineItem.getAttachmentCount() == 0);
    List localList = localTimelineItem.getAttachmentList();
    TimelineItem.Builder localBuilder = TimelineItem.newBuilder(localTimelineItem);
    if (paramApiRequest.getAttachmentContentCount() == localList.size())
    {
      localBuilder.clearAttachment();
      int i = 0;
      if (i < localList.size())
      {
        Attachment localAttachment = (Attachment)localList.get(i);
        String str1 = localAttachment.getContentType();
        ByteString localByteString = paramApiRequest.getAttachmentContent(i);
        CachedFilesManager.Type localType;
        if ((localByteString != null) && (!localByteString.isEmpty()))
          if (TimelineHelper.isSupportedType(str1, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES))
          {
            localType = CachedFilesManager.Type.PICTURE;
            label131: String str2 = System.currentTimeMillis() + localTimelineItem.getId() + "_" + i;
            CachedFilesManager.getSharedInstance().save(localType, str2, new FileSaver.Saver()
            {
              public long getEstimatedSizeBytes()
              {
                return this.val$content.toByteArray().length;
              }

              public void save(OutputStream paramAnonymousOutputStream)
                throws IOException
              {
                paramAnonymousOutputStream.write(this.val$content.toByteArray());
              }
            });
            localBuilder.addAttachment(Attachment.newBuilder(localAttachment).setClientCachePath(CachedFilesManager.getSharedInstance().getPath(localType, str2)).build());
          }
        while (true)
        {
          i++;
          break;
          if (TimelineHelper.isSupportedType(str1, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES))
          {
            localType = CachedFilesManager.Type.VIDEO;
            break label131;
          }
          Log.w(TAG, "Skip attachment " + i + ". Can't handle content type " + str1);
          continue;
          Log.w(TAG, "Skip attachment " + i + " since the content is null or empty");
        }
      }
    }
    else
    {
      Log.w(TAG, "Skip all attachments due to inconsistent attachment number: the number of attachments is " + localList.size() + " while the number of attachment content is " + paramApiRequest.getAttachmentContentCount());
      localBuilder.clearAttachment();
    }
    return localBuilder.build();
  }

  public static boolean sendApiResponse(Context paramContext, TimelineItem paramTimelineItem, UserAction paramUserAction)
  {
    Proto.ApiResponse.Builder localBuilder = Proto.ApiResponse.newBuilder();
    if (paramUserAction != null)
    {
      localBuilder.setType(Proto.ApiResponse.ResponseType.USER_ACTION);
      localBuilder.setUserAction(paramUserAction);
    }
    localBuilder.setTimelineItem(paramTimelineItem);
    return HomeApplication.from(paramContext).sendCompanionMessage(CompanionMessagingUtil.newEnvelopeBuilder().setApiResponseG2C(localBuilder).build());
  }

  public static boolean sendTimelineItem(Context paramContext, TimelineItem paramTimelineItem)
  {
    TimelineItem localTimelineItem = appendGlassSmsSignature(paramContext, paramTimelineItem);
    return HomeApplication.from(paramContext).sendCompanionMessage(CompanionMessagingUtil.newEnvelopeBuilder().addTimelineItem(localTimelineItem).build());
  }

  public static TimelineItem stripGlassSmsSignature(Context paramContext, TimelineItem paramTimelineItem)
  {
    String str1 = paramTimelineItem.getText();
    if (str1 == null)
      Log.w(TAG, "Couldn't strip Glass signature from null text");
    String str2;
    do
    {
      return paramTimelineItem;
      str2 = paramContext.getString(R.string.timeline_sms_signature);
    }
    while (!str1.endsWith(str2));
    String str3 = str1.substring(0, str1.length() - str2.length());
    return TimelineItem.newBuilder(paramTimelineItem).setText(str3).build();
  }

  public static void updateCompanionSyncStatus(Context paramContext, final String paramString, final TimelineItem.SyncStatus paramSyncStatus, boolean paramBoolean)
  {
    Log.i(TAG, "Updating sync status of item " + paramString + " to " + paramSyncStatus);
    TimelineHelper.Update local1 = new TimelineHelper.Update()
    {
      public TimelineItem onExecute()
      {
        TimelineHelper localTimelineHelper = new TimelineHelper();
        TimelineItem localTimelineItem = localTimelineHelper.queryTimelineItem(this.val$context.getContentResolver(), paramString);
        return localTimelineHelper.updateTimelineItem(this.val$context, TimelineItem.newBuilder(localTimelineItem).setCompanionSyncStatus(paramSyncStatus).build(), null, false, false);
      }
    };
    if (paramBoolean)
    {
      TimelineHelper.atomicUpdateTimelineItemAsync(local1);
      return;
    }
    TimelineHelper.atomicUpdateTimelineItem(local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.CompanionHelper
 * JD-Core Version:    0.6.2
 */