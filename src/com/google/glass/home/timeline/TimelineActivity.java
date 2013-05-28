package com.google.glass.home.timeline;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.string;
import com.google.glass.home.voice.NativeAppVoiceMenuHelper;
import com.google.glass.home.voice.VoiceMainMenuActivity;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.net.NetworkUtil;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.timeline.TimelineOptionsHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.IconProvider;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.ScreenOffGesture;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.TimelineItem;

public abstract class TimelineActivity extends GlassActivity
{
  public static final String EXTRA_FROM_SCREEN_OFF_NOTIFICATION = "from_screen_off_notification";
  public static final String EXTRA_ITEM_TO_DELETE = "ITEM_TO_DELETE";
  private IconProvider iconProvider;
  private TimelineOptionsHelper optionsHelper;

  private void transferScreenOffExtras(Intent paramIntent)
  {
    Intent localIntent = getIntent();
    paramIntent.putExtra("screen_turned_on", localIntent.getBooleanExtra("screen_turned_on", false));
    ScreenOffGesture.copyScreenOffGesture(localIntent, paramIntent);
    ScreenOffGesture.clearScreenOffGesture(localIntent);
  }

  protected TimelineOptionsHelper getTimelineOptionsHelper()
  {
    return this.optionsHelper;
  }

  protected abstract BaseHorizontalScrollView<?, TimelineItem> getTimelineView();

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
      if ((paramIntent != null) && (paramIntent.hasExtra("item_id")))
        getIntent().putExtra("item_id", paramIntent.getSerializableExtra("item_id"));
    while (paramInt2 != -1)
      return;
    finishAndTurnScreenOff();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.iconProvider = new IconProvider(getApplicationContext(), getResources().getDimensionPixelSize(R.dimen.timeline_menu_item_icon_width), getResources().getDimensionPixelSize(R.dimen.timeline_menu_item_icon_height));
    this.optionsHelper = new HomeTimelineOptionsHelper(this, this.iconProvider);
  }

  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return super.onDismiss(paramDismissAction);
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return getTimelineView().onFingerCountChanged(paramInt, paramBoolean);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("screen_turned_on", false)))
      NetworkUtil.checkNetwork();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    View localView = getTimelineView().getSelectedView();
    HorizontalScrollItem localHorizontalScrollItem = (HorizontalScrollItem)localView;
    if ((localView != null) && (localHorizontalScrollItem.onOptionsItemSelected(paramItem)))
      return true;
    if (paramItem.getExtra() == MenuItem.Action.READ_MORE)
    {
      TimelineHelper.readMore(this, new TimelineItemId((TimelineItem)getTimelineView().getSelectedItemParent()));
      return true;
    }
    Object localObject = paramItem.getExtra();
    if (localObject == null)
      return false;
    Assert.assertTrue(localObject instanceof MenuItem);
    return this.optionsHelper.handleOptionsItemSelected((TimelineItem)getTimelineView().getSelectedItemParent(), paramItem, null);
  }

  protected void onPause()
  {
    getTimelineView().deactivate();
    HomeApplication.from(this).stopSpeaking();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    if (shouldStopSpeakingOnUserAction())
      HomeApplication.from(this).stopSpeaking();
    paramOptionMenu.clearItems();
    View localView = getTimelineView().getSelectedView();
    HorizontalScrollItem localHorizontalScrollItem = (HorizontalScrollItem)localView;
    if ((localHorizontalScrollItem != null) && (localHorizontalScrollItem.onPrepareOptionsMenu(paramOptionMenu)))
      return true;
    this.optionsHelper.handlePrepareOptionsMenu(paramOptionMenu, (TimelineItem)getTimelineView().getSelectedItem());
    int i;
    if (localView != null)
    {
      if (localView.getTag(R.id.tag_item_read_more) == null)
        break label131;
      i = 1;
      if (i != 0)
      {
        paramOptionMenu.insertItem(0, paramOptionMenu.getItemCount(), getString(R.string.timeline_menu_read_more), R.drawable.ic_document_medium);
        paramOptionMenu.getItem(0).setExtra(MenuItem.Action.READ_MORE);
      }
    }
    if (paramOptionMenu.getItemCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      label131: i = 0;
      break;
    }
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return getTimelineView().onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
  }

  protected void onResume()
  {
    super.onResume();
    getTimelineView().activate();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    switch (1.$SwitchMap$com$google$glass$input$SwipeDirection[paramSwipeDirection.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      getTimelineView().onSwipe(paramInt, paramSwipeDirection);
      return super.onSwipe(paramInt, paramSwipeDirection);
      if (shouldStopSpeakingOnUserAction())
        HomeApplication.from(this).stopSpeaking();
    }
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    if (paramVoiceCommand == VoiceCommand.OK_GLASS)
    {
      if (Labs.isEnabled(Labs.Feature.NATIVE_APP_VOICE))
        preloadVoiceConfig(NativeAppVoiceMenuHelper.getInstance().getMainMenuConfig(this));
      while (true)
      {
        getSoundManager().playSound(SoundManager.SoundId.VOICE_PENDING);
        logUserEvent(UserEventAction.VOICE_MENU_COMMAND_SPOKEN, "1");
        Intent localIntent = new Intent(this, VoiceMainMenuActivity.class);
        transferScreenOffExtras(localIntent);
        startActivity(localIntent);
        return true;
        preloadVoiceConfig(VoiceConfig.getMainMenuConfig());
      }
    }
    Log.w(getTag(), "Unrecognized voice command: " + paramVoiceCommand);
    return false;
  }

  protected boolean shouldAllowLongPress()
  {
    return getTimelineView().getZoomOutFactor() == 0.0D;
  }

  public boolean shouldStopSpeakingOnUserAction()
  {
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineActivity
 * JD-Core Version:    0.6.2
 */