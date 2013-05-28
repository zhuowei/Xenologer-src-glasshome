package com.google.glass.home.timeline;

import android.os.AsyncTask;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.string;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.companion.CompanionHelper;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineHelper.Update;
import com.google.glass.timeline.TimelineOptionsHelper;
import com.google.glass.util.IconProvider;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuValue;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.SourceType;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.googlex.glass.common.proto.UserAction;
import java.util.concurrent.atomic.AtomicBoolean;

public class HomeTimelineOptionsHelper extends TimelineOptionsHelper
{
  private static final String TAG = HomeTimelineOptionsHelper.class.getSimpleName();
  private final GlassActivity activity = getGlassActivity();
  private final UserEventHelper userEventHelper = getUserEventHelper();

  public HomeTimelineOptionsHelper(GlassActivity paramGlassActivity, IconProvider paramIconProvider)
  {
    super(paramGlassActivity, paramIconProvider);
  }

  protected void addNavigate(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    if (HomeApplication.from(this.activity).isNavigationAllowed())
      super.addNavigate(paramOptionMenu, paramMenuValue, paramMenuItem);
  }

  protected void notifyOnCustomMenuSelected(final TimelineItem paramTimelineItem, UserAction paramUserAction, MenuItem paramMenuItem)
  {
    if (paramTimelineItem.getSourceType() == TimelineItem.SourceType.COMPANIONWARE);
    for (int i = 1; i != 0; i = 0)
    {
      CompanionHelper.sendApiResponse(this.activity, paramTimelineItem, paramUserAction);
      if (paramMenuItem.getRemoveWhenSelected())
        TimelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
        {
          public TimelineItem onExecute()
          {
            return HomeTimelineOptionsHelper.this.getTimelineHelper().updateTimelineItem(HomeTimelineOptionsHelper.this.activity, paramTimelineItem, null, false, false);
          }
        });
      return;
    }
    super.notifyOnCustomMenuSelected(paramTimelineItem, paramUserAction, paramMenuItem);
  }

  public boolean onReply(final TimelineItem paramTimelineItem)
  {
    if (TimelineHelper.failedToSyncToCompanion(paramTimelineItem))
    {
      this.userEventHelper.log(UserEventAction.RETRY_REPLY, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
      final AtomicBoolean localAtomicBoolean = new AtomicBoolean(false);
      final MessageDialog localMessageDialog = new MessageDialog.Builder(this.activity).setAutoHide(false).setShowProgress(true).setMessage(R.string.voice_message_send_retrying).setIcon(R.drawable.ic_reply_medium).setKeepScreenOn(true).setListener(new MessageDialog.SimpleListener()
      {
        public void onDone()
        {
          if (!localAtomicBoolean.get())
            HomeTimelineOptionsHelper.this.activity.getSoundManager().playSound(SoundManager.SoundId.ERROR);
        }
      }).build();
      localMessageDialog.show();
      AsyncTask.execute(new Runnable()
      {
        public void run()
        {
          if (!CompanionHelper.sendTimelineItem(HomeTimelineOptionsHelper.this.activity, paramTimelineItem))
          {
            Log.d(HomeTimelineOptionsHelper.TAG, "Failed to send SMS to companion");
            CompanionHelper.updateCompanionSyncStatus(HomeTimelineOptionsHelper.this.activity, paramTimelineItem.getId(), TimelineItem.SyncStatus.SYNC_FAILED, false);
            localAtomicBoolean.set(false);
          }
          while (true)
          {
            localMessageDialog.autoHide();
            return;
            Log.d(HomeTimelineOptionsHelper.TAG, "SMS to companion is sent");
            CompanionHelper.updateCompanionSyncStatus(HomeTimelineOptionsHelper.this.activity, paramTimelineItem.getId(), TimelineItem.SyncStatus.NOT_SYNCED, false);
            localAtomicBoolean.set(true);
          }
        }
      });
      return true;
    }
    return super.onReply(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.HomeTimelineOptionsHelper
 * JD-Core Version:    0.6.2
 */