package com.google.glass.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.common.R.anim;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.common.R.string;
import com.google.glass.entity.EntityHelper;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineHelper.Update;
import com.google.glass.util.AnimationUtils;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.glass.util.HopHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.StorageHelper;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.SliderView;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.googlex.glass.common.proto.UserAction.Type;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShareActivity extends GlassActivity
  implements ShareHorizontalScrollView.Listener
{
  private static final int ATTACHMENT_COPY_MARGIN_BYTES = 4194304;
  public static final String EXTRA_CONFIRMED_KEY = "confirmed_string";
  public static final String EXTRA_DISABLE_CAMERA_KEY = "disable_camera";
  public static final String EXTRA_DISABLE_VOICE_INPUT_KEY = "disable_voice";
  public static final String EXTRA_PROGRESS_KEY = "progress_string";
  public static final String EXTRA_RETURNED_SHARE_TARGET = "share_target";
  public static final String EXTRA_SHARE_TARGETS = "valid_share_targets";
  public static final String EXTRA_UPDATE_TIMELINE_SHARE = "update_timeline_share";
  private static final int INITIAL_RETRY_DELAY_MS = 1000;
  private static final int MAX_RETRIES_FOR_ITEM_TO_BE_READY = 5;
  public static final String TAG = ShareActivity.class.getSimpleName();
  private Handler handler;
  private String iconPath;
  private List<Entity> shareTargets;
  private ShareHorizontalScrollView shareTargetsView;
  private Animation showMenuAnimation;
  private SliderView sliderView;
  private final TimelineHelper timelineHelper = new TimelineHelper();

  private static boolean cloneAttachmentsInCache(Context paramContext, TimelineItem.Builder paramBuilder)
  {
    Assert.assertNotUiThread();
    if (paramBuilder.getAttachmentCount() == 0)
      return true;
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    long l1 = 0L;
    Iterator localIterator = paramBuilder.getAttachmentList().iterator();
    while (localIterator.hasNext())
    {
      File localFile2 = getFileForAttachment((Attachment)localIterator.next(), localCachedFilesManager);
      if (localFile2 != null)
        l1 += localFile2.length();
    }
    if (l1 == 0L)
    {
      paramBuilder.clearAttachment();
      return true;
    }
    StorageHelper localStorageHelper = new StorageHelper(paramContext);
    long l2 = l1 + 4194304L;
    long l3 = localStorageHelper.getAvailableBytesInExternalStorage();
    if (l3 < l2)
    {
      long l5 = l2 - l3;
      Log.v(TAG, "Trying to trim " + l5 + " bytes from CachedFilesManager");
      if (!localCachedFilesManager.trimBySize(l5))
      {
        Log.w(TAG, "Insufficient space to copy " + l1 + " bytes of attachments for item " + paramBuilder.getId() + ", Free bytes: " + localStorageHelper.getAvailableBytesInExternalStorage());
        localStorageHelper.showFullStorageDialog();
        return false;
      }
    }
    Log.v(TAG, "Copying " + l1 + " bytes of attachments for " + paramBuilder.getId());
    long l4 = SystemClock.elapsedRealtime();
    int i = 0;
    while (i < paramBuilder.getAttachmentCount())
    {
      Attachment localAttachment = paramBuilder.getAttachment(i);
      File localFile1 = getFileForAttachment(localAttachment, localCachedFilesManager);
      int j;
      if (localFile1 != null)
      {
        String str1 = paramBuilder.getId() + "-" + i;
        if (localCachedFilesManager.save(CachedFilesManager.Type.SHARE, str1, FileSaver.newSaver(localFile1)))
        {
          String str2 = localCachedFilesManager.getPath(CachedFilesManager.Type.SHARE, str1);
          paramBuilder.getAttachmentBuilder(i).setClientCachePath(str2);
          i++;
        }
        else
        {
          Log.w(TAG, "Failed to copy attachment " + localAttachment.getId() + " on " + paramBuilder.getId());
          j = i - 1;
          paramBuilder.removeAttachment(i);
        }
      }
      else
      {
        while (true)
        {
          i = j;
          break;
          Log.w(TAG, "Could not find attachment " + localAttachment.getId() + " on " + paramBuilder.getId());
          j = i - 1;
          paramBuilder.removeAttachment(i);
        }
      }
    }
    Log.v(TAG, "Copied attachments in " + (SystemClock.elapsedRealtime() - l4) + " ms");
    return true;
  }

  @VisibleForTesting
  public static boolean cloneAttachmentsInCacheForTest(Context paramContext, TimelineItem.Builder paramBuilder)
  {
    Assert.assertIsTest();
    return cloneAttachmentsInCache(paramContext, paramBuilder);
  }

  private static void copyFieldsToSharedItem(TimelineItem paramTimelineItem, TimelineItem.Builder paramBuilder)
  {
    if (paramTimelineItem.hasTitle())
      paramBuilder.setText(paramTimelineItem.getTitle());
    if (paramTimelineItem.hasText())
      paramBuilder.setText(paramTimelineItem.getText());
    if (paramTimelineItem.hasSpeakableText())
      paramBuilder.setSpeakableText(paramTimelineItem.getSpeakableText());
    if (paramTimelineItem.hasHtml())
      paramBuilder.setHtml(paramTimelineItem.getHtml());
    if (paramTimelineItem.hasCanonicalUrl())
      paramBuilder.setCanonicalUrl(paramTimelineItem.getCanonicalUrl());
    if (paramTimelineItem.hasLocation())
      paramBuilder.setLocation(paramTimelineItem.getLocation());
    paramBuilder.addAllAttachment(paramTimelineItem.getAttachmentList());
  }

  private static File getFileForAttachment(Attachment paramAttachment, CachedFilesManager paramCachedFilesManager)
  {
    File localFile;
    if (paramAttachment.hasClientCachePath())
    {
      localFile = new File(paramAttachment.getClientCachePath());
      if (!localFile.exists());
    }
    do
    {
      return localFile;
      if (!paramAttachment.hasId())
        break;
      String str = paramCachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, paramAttachment.getId());
      if (str == null)
        break;
      localFile = new File(str);
    }
    while (localFile.exists());
    return null;
  }

  private static void logShareEvent(Context paramContext, TimelineItem paramTimelineItem)
  {
    String str = "0";
    if (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES))
      str = "1";
    while (true)
    {
      GlassApplication.from(paramContext).getUserEventHelper().log(UserEventAction.TIMELINE_ITEM_SHARED, str);
      return;
      if (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES))
        str = "2";
    }
  }

  private void shareItem(final Entity paramEntity, final Uri paramUri, final int paramInt)
  {
    TimelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
    {
      public TimelineItem onExecute()
      {
        TimelineItem localTimelineItem1 = ShareActivity.this.timelineHelper.queryTimelineItem(this.val$context.getContentResolver(), paramUri);
        if (localTimelineItem1 == null)
          Log.v(ShareActivity.TAG, "Giving up since we couldn't find a timeline item for: " + paramUri);
        TimelineItem.Builder localBuilder;
        do
        {
          return null;
          if (localTimelineItem1.getCloudSyncProtocol() == TimelineItem.SyncProtocol.NEVER)
          {
            if (paramInt >= 5)
            {
              Log.v(ShareActivity.TAG, "Giving up because item " + localTimelineItem1.getId() + " was not ready after " + 5 + " attempts");
              return null;
            }
            long l = 1000 << paramInt;
            Log.v(ShareActivity.TAG, "Item is not ready to be shared yet. Retrying in " + l + " ms");
            ShareActivity.this.handler.postDelayed(new Runnable()
            {
              public void run()
              {
                ShareActivity.this.shareItem(ShareActivity.2.this.val$shareTarget, ShareActivity.2.this.val$itemIdToShare, 1 + ShareActivity.2.this.val$attemptNumber);
              }
            }
            , l);
            return null;
          }
          localBuilder = ShareActivity.this.timelineHelper.createTimelineItemBuilder(this.val$context, new SettingsSecure(this.val$context.getContentResolver()));
          Log.v(ShareActivity.TAG, "Creating item " + localBuilder.getId() + " to share item " + localTimelineItem1.getId() + " with " + paramEntity.getId());
          ShareActivity.copyFieldsToSharedItem(localTimelineItem1, localBuilder);
        }
        while (!ShareActivity.cloneAttachmentsInCache(this.val$context, localBuilder));
        localBuilder.setSource(paramEntity.getSource());
        localBuilder.addShareTarget(paramEntity);
        localBuilder.addMenuItemBuilder().setAction(MenuItem.Action.DELETE);
        EntityHelper.getSharedInstance().updateEntityShareColumns(paramEntity, this.val$context.getContentResolver());
        TimelineItem localTimelineItem2 = localBuilder.build();
        new TimelineHelper().insertTimelineItem(this.val$context, localTimelineItem2, UserEventAction.TimelineItemInserted.SHARE, UserAction.newBuilder().setType(UserAction.Type.SHARE).build());
        ShareActivity.logShareEvent(this.val$context, localTimelineItem2);
        return localTimelineItem2;
      }
    });
  }

  public boolean onConfirm()
  {
    if ((this.shareTargetsView != null) && (this.shareTargetsView.onConfirm(this, false)))
      return true;
    return super.onConfirm();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.handler = new Handler();
    onNewIntent(getIntent());
    this.showMenuAnimation = AnimationUtils.loadAnimation(this, R.anim.show_contextual);
    if (new SettingsHelper(this).isGuestModeEnabled())
    {
      this.shareTargets = new ArrayList();
      Entity localEntity = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
      if (localEntity != null)
        this.shareTargets.add(localEntity);
    }
    while (this.shareTargets.isEmpty())
    {
      findViewById(R.id.share_container).setVisibility(8);
      showMessage(R.string.sharing_no_share_targets);
      Log.i(getTag(), "Unable to load share targets!");
      return;
      if (getIntent().hasExtra("valid_share_targets"))
      {
        this.shareTargets = ((List)getIntent().getSerializableExtra("valid_share_targets"));
      }
      else
      {
        TimelineItem localTimelineItem = this.timelineHelper.queryTimelineItem(getContentResolver(), getIntent().getData());
        if (localTimelineItem != null)
          this.shareTargets = EntityHelper.getSharedInstance().getMatchingShareTargets(localTimelineItem);
        else
          this.shareTargets = new ArrayList();
      }
    }
    this.shareTargetsView = ((ShareHorizontalScrollView)findViewById(R.id.share_targets));
    this.shareTargetsView.init(this);
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    setResult(0, getIntent());
    finish();
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    return true;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (this.shareTargetsView != null)
      return this.shareTargetsView.onFingerCountChanged(paramInt, paramBoolean);
    return super.onFingerCountChanged(paramInt, paramBoolean);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    Log.v(getTag(), "onNewIntent(" + paramIntent + ")");
    setIntent(paramIntent);
  }

  protected void onPause()
  {
    if (this.shareTargetsView != null)
      this.shareTargetsView.deactivate();
    super.onPause();
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (this.shareTargetsView != null)
      this.shareTargetsView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  protected void onResume()
  {
    if (this.shareTargetsView != null)
    {
      this.shareTargetsView.activate();
      this.shareTargetsView.setShareTargets(this.shareTargets);
      Log.d(getTag(), "showOptionMenu has " + this.shareTargets.size() + " share targets to show.");
      this.sliderView = ((SliderView)findViewById(R.id.share_menu_slider));
      this.sliderView.setScrollView(this.shareTargetsView);
      this.sliderView.setVisibility(0);
      this.sliderView.setCount(this.shareTargets.size());
      TimelineItem localTimelineItem = this.timelineHelper.queryTimelineItem(getContentResolver(), getIntent().getData());
      if (localTimelineItem != null)
      {
        List localList = TimelineHelper.getAttachmentsOfTypes(localTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES);
        if (!localList.isEmpty())
          this.iconPath = ((Attachment)localList.get(0)).getClientCachePath();
      }
    }
    getContentView().setVisibility(0);
    AnimationUtils.startAnimation(getContentView(), this.showMenuAnimation);
    super.onResume();
  }

  public boolean onShareTargetConfirm(final Entity paramEntity)
  {
    if (paramEntity == null)
      return false;
    if (this.iconPath != null);
    String str1 = getIntent().getStringExtra("progress_string");
    String str2 = getIntent().getStringExtra("confirmed_string");
    if (TextUtils.isEmpty(str1))
      str1 = getString(R.string.sharing_menu_share_confirming);
    if (TextUtils.isEmpty(str2))
      str2 = getString(R.string.sharing_menu_share_confirmed);
    new MessageDialog.Builder(this).setTemporaryMessage(str1).setTemporaryIcon(R.drawable.ic_share_medium).setMessage(str2).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        Log.d(ShareActivity.this.getTag(), "Share cancelled");
      }

      public void onDone()
      {
        Log.d(ShareActivity.this.getTag(), "Share confirmed");
        Intent localIntent = new Intent(ShareActivity.this.getIntent());
        localIntent.putExtra("share_target", paramEntity);
        if (localIntent.getBooleanExtra("update_timeline_share", false))
        {
          Log.d(ShareActivity.this.getTag(), "Inserting new TimelineItem on behalf of calling activity.");
          Entity localEntity = (Entity)localIntent.getSerializableExtra("share_target");
          Uri localUri = localIntent.getData();
          ShareActivity.this.shareItem(localEntity, localUri, 0);
        }
        ShareActivity.this.setResult(-1, localIntent);
        Log.d(ShareActivity.this.getTag(), "Set result, finishing");
        ShareActivity.this.finishAndTurnScreenOffIfRequested();
      }
    }).build().show();
    return true;
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (this.shareTargetsView == null)
      return false;
    if (paramSwipeDirection == SwipeDirection.UP)
    {
      HopHelper.performHopAnimation(this.shareTargetsView, SwipeDirection.UP);
      return false;
    }
    this.shareTargetsView.onSwipe(paramInt, paramSwipeDirection);
    return true;
  }

  protected int provideContentView()
  {
    return R.layout.share_activity;
  }

  public boolean shouldAllowCameraButton()
  {
    boolean bool1;
    if (getIntent() != null)
    {
      boolean bool2 = getIntent().getBooleanExtra("disable_camera", false);
      bool1 = false;
      if (bool2);
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }

  protected boolean shouldAllowLongPress()
  {
    return false;
  }

  protected boolean shouldAllowVoiceInput()
  {
    boolean bool1;
    if (getIntent() != null)
    {
      boolean bool2 = getIntent().getBooleanExtra("disable_voice", false);
      bool1 = false;
      if (bool2);
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareActivity
 * JD-Core Version:    0.6.2
 */