package com.google.glass.timeline;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.string;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.share.ShareActivity;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.HangoutHelper;
import com.google.glass.util.IconProvider;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MicrophoneHelper;
import com.google.glass.voice.network.translate.NetworkTts;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.OptionMenu.ItemState;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.State;
import com.google.googlex.glass.common.proto.MenuValue;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.googlex.glass.common.proto.UserAction.Type;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class TimelineOptionsHelper
{
  public static final int REQUEST_CODE_SHARE = 1;
  private static final String TAG = TimelineOptionsHelper.class.getSimpleName();
  private final GlassActivity activity;
  private final IconProvider iconProvider;
  private final SoundManager soundManager;
  private final TimelineHelper timelineHelper;
  private final UserEventHelper userEventHelper;

  public TimelineOptionsHelper(GlassActivity paramGlassActivity, IconProvider paramIconProvider)
  {
    this.activity = paramGlassActivity;
    this.iconProvider = paramIconProvider;
    GlassApplication localGlassApplication = GlassApplication.from(paramGlassActivity);
    this.soundManager = localGlassApplication.getSoundManager();
    this.userEventHelper = localGlassApplication.getUserEventHelper();
    this.timelineHelper = new TimelineHelper();
  }

  private void addBroadcast(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, 0), getMenuIcon(paramMenuValue, R.drawable.ic_warning_medium), true, null, paramMenuItem);
  }

  private void addCustom(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addBroadcast(paramOptionMenu, paramMenuValue, paramMenuItem);
  }

  private void addDelete(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_delete), getMenuIcon(paramMenuValue, R.drawable.ic_delete_medium), true, null, paramMenuItem);
  }

  private void addHangout(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    String str;
    if (BluetoothHeadset.isInCallOrCallSetup(this.activity))
      str = this.activity.getString(R.string.timeline_menu_error_in_a_call_no_hangout);
    while (true)
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_hangout), this.activity.getResources().getDrawable(R.drawable.ic_hangout_medium), true, str, paramMenuItem);
      return;
      boolean bool = getHangoutHelper(this.activity).isInHangout();
      str = null;
      if (bool)
        str = this.activity.getString(R.string.timeline_menu_error_in_a_hangout_no_hangout);
    }
  }

  private void addMenuItem(OptionMenu paramOptionMenu, TimelineItem paramTimelineItem, MenuItem paramMenuItem)
  {
    MenuValue localMenuValue = getValueForState(paramMenuItem, MenuItem.State.DEFAULT);
    switch (8.$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action[paramMenuItem.getAction().ordinal()])
    {
    default:
      return;
    case 1:
      addCustom(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 2:
      addBroadcast(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 3:
      addReply(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 4:
      addReplyAll(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 5:
      addDelete(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 6:
      addShare(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 7:
      addReadAloud(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 8:
      addVoiceCall(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 9:
      addNavigate(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 10:
      addSearch(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 11:
      addMuteMic(paramOptionMenu, paramMenuItem);
      return;
    case 12:
      addHangout(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 13:
      addViewWebsite(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 14:
    }
    addTogglePinned(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
  }

  private void addMenuItem(OptionMenu paramOptionMenu, String paramString1, Drawable paramDrawable, boolean paramBoolean, String paramString2, Object paramObject)
  {
    OptionMenu.Item localItem = paramOptionMenu.getItem(addMenuItem(paramOptionMenu, paramObject, new OptionMenu.ItemState[] { new OptionMenu.ItemState(0, paramString1, paramDrawable) }));
    localItem.setEnabled(paramBoolean);
    localItem.setDescription(paramString2);
  }

  private void addMuteMic(OptionMenu paramOptionMenu, MenuItem paramMenuItem)
  {
    Resources localResources = this.activity.getResources();
    int i = addMenuItem(paramOptionMenu, paramMenuItem, new OptionMenu.ItemState[] { new OptionMenu.ItemState(0, localResources.getString(R.string.phone_call_mute), localResources.getDrawable(R.drawable.ic_microphone_medium)), new OptionMenu.ItemState(1, localResources.getString(R.string.phone_call_unmute), localResources.getDrawable(R.drawable.ic_microphone_off_medium)) });
    MicrophoneHelper.updateOptionMenuItem(this.activity, paramOptionMenu.getItem(i));
  }

  private void addReadAloud(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_read_aloud), getMenuIcon(paramMenuValue, R.drawable.ic_read_aloud_medium), true, null, paramMenuItem);
  }

  private void addReply(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem, TimelineItem paramTimelineItem)
  {
    if (TimelineHelper.failedToSyncToCompanion(paramTimelineItem))
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_retry), getMenuIcon(paramMenuValue, R.drawable.ic_reply_medium), true, null, paramMenuItem);
      return;
    }
    if (BluetoothHeadset.isInCallOrCallSetup(this.activity))
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.phone_call_in_call), getMenuIcon(paramMenuValue, R.drawable.ic_reply_medium), false, null, paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_reply), getMenuIcon(paramMenuValue, R.drawable.ic_reply_medium), true, null, paramMenuItem);
  }

  private void addReplyAll(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    if (BluetoothHeadset.isInCallOrCallSetup(this.activity))
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.phone_call_in_call), getMenuIcon(paramMenuValue, R.drawable.ic_reply_all_medium), false, null, paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_reply_all), getMenuIcon(paramMenuValue, R.drawable.ic_reply_all_medium), true, null, paramMenuItem);
  }

  private void addSearch(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_expand_search), getMenuIcon(paramMenuValue, R.drawable.ic_search_medium), true, null, paramMenuItem);
  }

  private void addShare(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem, TimelineItem paramTimelineItem)
  {
    if (EntityHelper.getSharedInstance().getMatchingShareTargets(paramTimelineItem).isEmpty())
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_share), getMenuIcon(paramMenuValue, R.drawable.ic_share_medium), false, this.activity.getString(R.string.sharing_no_share_targets), paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_share), getMenuIcon(paramMenuValue, R.drawable.ic_share_medium), true, null, paramMenuItem);
  }

  private void addTogglePinned(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem, TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem.getIsPinned())
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_unpin), getMenuIcon(paramMenuValue, R.drawable.ic_unpin_medium), true, null, paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_pin), getMenuIcon(paramMenuValue, R.drawable.ic_pin_medium), true, null, paramMenuItem);
  }

  private void addViewWebsite(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_new_search), getMenuIcon(paramMenuValue, R.drawable.browser_website), true, null, paramMenuItem);
  }

  private void addVoiceCall(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    String str;
    if (Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET))
    {
      if (!BluetoothHeadset.isInCallOrCallSetup(this.activity))
        break label57;
      str = this.activity.getString(R.string.timeline_menu_error_in_a_call_no_call);
    }
    while (true)
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_voice_call), getMenuIcon(paramMenuValue, R.drawable.ic_phone_out_medium), true, str, paramMenuItem);
      return;
      label57: boolean bool = getHangoutHelper(this.activity).isInHangout();
      str = null;
      if (bool)
        str = this.activity.getString(R.string.timeline_menu_error_in_a_hangout_no_call);
    }
  }

  private Drawable getMenuIcon(MenuValue paramMenuValue, int paramInt)
  {
    IconProvider localIconProvider = this.iconProvider;
    Drawable localDrawable = null;
    if (localIconProvider != null)
    {
      localDrawable = null;
      if (paramMenuValue != null)
      {
        boolean bool = TextUtils.isEmpty(paramMenuValue.getIconUrl());
        localDrawable = null;
        if (!bool)
          localDrawable = this.iconProvider.getIcon(paramMenuValue.getIconUrl());
      }
    }
    if ((localDrawable == null) && (paramInt != 0))
      localDrawable = this.activity.getResources().getDrawable(paramInt);
    return localDrawable;
  }

  private String getMenuText(MenuValue paramMenuValue, int paramInt)
  {
    if ((paramMenuValue != null) && (!TextUtils.isEmpty(paramMenuValue.getDisplayName())))
      return paramMenuValue.getDisplayName();
    if (paramInt != 0)
      return this.activity.getString(paramInt);
    return "";
  }

  private MenuValue getValueForState(MenuItem paramMenuItem, MenuItem.State paramState)
  {
    Iterator localIterator = paramMenuItem.getValueList().iterator();
    while (localIterator.hasNext())
    {
      MenuValue localMenuValue = (MenuValue)localIterator.next();
      if (localMenuValue.getState() == paramState)
        return localMenuValue;
    }
    return null;
  }

  private boolean onBroadcast(TimelineItem paramTimelineItem, MenuItem paramMenuItem)
  {
    if (paramMenuItem.hasBroadcastAction())
    {
      Intent localIntent = new Intent().setAction(paramMenuItem.getBroadcastAction());
      localIntent.putExtra("itemId", paramTimelineItem.getId());
      localIntent.putExtra("menu_item_id", paramMenuItem.getId());
      if (paramTimelineItem.hasCreator())
        localIntent.putExtra("creator", paramTimelineItem.getCreator());
      localIntent.putExtra("share_target_count", paramTimelineItem.getShareTargetCount());
      for (int i = 0; i < paramTimelineItem.getShareTargetCount(); i++)
      {
        Entity localEntity = paramTimelineItem.getShareTarget(i);
        localIntent.putExtra(TimelineHelper.createShareTargetExtraKey(i), localEntity);
      }
      this.activity.sendBroadcast(localIntent);
      return true;
    }
    return false;
  }

  private boolean onCustom(TimelineItem paramTimelineItem, final MenuItem paramMenuItem)
  {
    TimelineItem.Builder localBuilder = paramTimelineItem.toBuilder();
    int i;
    if (paramMenuItem.getRemoveWhenSelected())
    {
      i = 0;
      if (i < localBuilder.getMenuItemCount())
      {
        if (!localBuilder.getMenuItem(i).equals(paramMenuItem))
          break label241;
        localBuilder.removeMenuItem(i);
      }
    }
    final TimelineItem localTimelineItem = localBuilder.build();
    MenuValue localMenuValue1 = getValueForState(paramMenuItem, MenuItem.State.PENDING);
    MenuValue localMenuValue2 = getValueForState(paramMenuItem, MenuItem.State.CONFIRMED);
    final UserAction localUserAction = UserAction.newBuilder().setType(UserAction.Type.CUSTOM).setPayload(paramMenuItem.getId()).build();
    if ((localMenuValue1 != null) && (localMenuValue2 != null))
    {
      MenuValue localMenuValue3 = getValueForState(paramMenuItem, MenuItem.State.DEFAULT);
      String str1 = getMenuText(localMenuValue1, 0);
      if (TextUtils.isEmpty(str1))
        str1 = getMenuText(localMenuValue3, 0);
      Drawable localDrawable1 = getMenuIcon(localMenuValue1, 0);
      if (localDrawable1 == null)
        localDrawable1 = getMenuIcon(localMenuValue3, R.drawable.ic_warning_medium);
      String str2 = getMenuText(localMenuValue2, 0);
      if (TextUtils.isEmpty(str2))
        str2 = getMenuText(localMenuValue3, 0);
      Drawable localDrawable2 = getMenuIcon(localMenuValue2, 0);
      if (localDrawable2 == null)
        localDrawable2 = getMenuIcon(localMenuValue3, R.drawable.ic_warning_medium);
      showConfirmationDialog(paramMenuItem, str1, localDrawable1, str2, localDrawable2, new OnConfirmedListener()
      {
        public void onConfirmed(MenuItem paramAnonymousMenuItem)
        {
          TimelineOptionsHelper.this.notifyOnCustomMenuSelected(localTimelineItem, localUserAction, paramMenuItem);
        }
      });
    }
    while (true)
    {
      return true;
      label241: i++;
      break;
      notifyOnCustomMenuSelected(localTimelineItem, localUserAction, paramMenuItem);
    }
  }

  private boolean onDelete(TimelineItem paramTimelineItem, MenuItem paramMenuItem, final TimelineItemDeletedListener paramTimelineItemDeletedListener)
  {
    final String str1 = paramTimelineItem.getId();
    final String str2 = paramTimelineItem.getSource();
    String str3 = this.activity.getString(R.string.timeline_menu_delete_confirming);
    Drawable localDrawable1 = this.activity.getResources().getDrawable(R.drawable.ic_delete_medium);
    String str4 = this.activity.getString(R.string.timeline_menu_delete_confirmed);
    Drawable localDrawable2 = this.activity.getResources().getDrawable(R.drawable.ic_done_medium);
    this.userEventHelper.log(UserEventAction.DELETE_INITIATED, TimelineHelper.getRedactedSource(str2));
    showConfirmationDialog(paramMenuItem, str3, localDrawable1, str4, localDrawable2, new OnConfirmedListener()
    {
      public void onConfirmed(MenuItem paramAnonymousMenuItem)
      {
        TimelineOptionsHelper.this.userEventHelper.log(UserEventAction.DELETE_COMPLETED, TimelineHelper.getRedactedSource(str2));
        TimelineOptionsHelper.this.timelineHelper.deleteTimelineItemAsync(TimelineOptionsHelper.this.activity, str1);
        if (paramTimelineItemDeletedListener != null)
          paramTimelineItemDeletedListener.onDeleted();
      }
    });
    return true;
  }

  private boolean onHangout(MenuItem paramMenuItem, TimelineItem paramTimelineItem)
  {
    HangoutHelper localHangoutHelper = getHangoutHelper(this.activity);
    if ((BluetoothHeadset.isInCallOrCallSetup(this.activity)) || (localHangoutHelper.isInHangout()))
    {
      Log.w(TAG, "In a call or hangout, not initiating a new one.");
      this.soundManager.playSound(SoundManager.SoundId.ERROR);
      return false;
    }
    String str = paramMenuItem.getId();
    if (str != null)
      Log.d(TAG, "Re-joining Hangout roomId=" + str);
    while (true)
    {
      boolean bool = paramTimelineItem.hasCreator();
      Entity localEntity = null;
      if (bool)
      {
        localEntity = paramTimelineItem.getCreator();
        Log.w(TAG, "Using creator as invite target.");
      }
      if (localEntity == null)
      {
        Log.w(TAG, "No timeline item creator found, falling back to use share target instead.");
        if (paramTimelineItem.getShareTargetCount() > 0)
          localEntity = paramTimelineItem.getShareTarget(0);
      }
      if (localEntity == null)
        Log.w(TAG, "No share target either.  Possibly a dev using adb to directly join a room?");
      localHangoutHelper.joinHangout(str, localEntity, false);
      return true;
      Log.d(TAG, "No room ID given, will create a new Hangout.");
    }
  }

  private boolean onMuteMic(OptionMenu.Item paramItem)
  {
    MicrophoneHelper.toggleMute(this.activity);
    MicrophoneHelper.updateOptionMenuItem(this.activity, paramItem);
    return true;
  }

  private boolean onNavigate(TimelineItem paramTimelineItem)
  {
    if (!paramTimelineItem.hasLocation())
    {
      Log.e(TAG, "No location set for timeline item " + paramTimelineItem.getId() + ", skipping navigation.");
      return false;
    }
    return NavigationLauncher.navigate(paramTimelineItem.getLocation(), this.activity);
  }

  private boolean onSearch(final TimelineItem paramTimelineItem)
  {
    if (!TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, new String[] { "proto/search" }))
    {
      Log.w(TAG, "Timeline item does not have a search proto attachment");
      return false;
    }
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        Attachment localAttachment = paramTimelineItem.getAttachment(0);
        byte[] arrayOfByte = new AttachmentHelper(TimelineOptionsHelper.this.activity).getAttachmentBytes(localAttachment.getId(), CachedFilesManager.Type.PROTO_BUFFER, localAttachment);
        if (arrayOfByte == null)
        {
          Log.w(TimelineOptionsHelper.TAG, "Attachment proto not on file system and could not be downloaded.");
          return;
        }
        Intent localIntent = new Intent("com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT");
        localIntent.putExtra("recognitionResult", paramTimelineItem.getText());
        localIntent.putExtra("timelineItemId", new TimelineItemId(paramTimelineItem));
        localIntent.putExtra("majelResponse", arrayOfByte);
        localIntent.putExtra("startTime", -1L);
        TimelineOptionsHelper.this.activity.startActivity(localIntent);
      }
    });
    return true;
  }

  private boolean onShare(TimelineItem paramTimelineItem)
  {
    Uri localUri = TimelineProvider.TIMELINE_URI.buildUpon().appendPath(paramTimelineItem.getId()).build();
    Intent localIntent = new Intent(this.activity, ShareActivity.class).setAction("android.intent.action.EDIT").setData(localUri);
    localIntent.putExtra("item_id", new TimelineItemId(paramTimelineItem));
    localIntent.putExtra("update_timeline_share", true);
    this.activity.startActivityForResult(localIntent, 1);
    return true;
  }

  private boolean onTogglePinned(TimelineItem paramTimelineItem)
  {
    final UserAction.Builder localBuilder = UserAction.newBuilder();
    final TimelineItem.Builder localBuilder1 = paramTimelineItem.toBuilder().setModifiedTime(System.currentTimeMillis());
    if (paramTimelineItem.getIsPinned())
    {
      localBuilder.setType(UserAction.Type.UNPIN);
      localBuilder1.setIsPinned(false);
      localBuilder1.clearPinTime();
    }
    while (true)
    {
      TimelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
      {
        public TimelineItem onExecute()
        {
          if (!localBuilder1.getIsPinned());
          for (boolean bool = true; ; bool = false)
          {
            TimelineItem localTimelineItem = TimelineOptionsHelper.this.timelineHelper.updateTimelineItem(TimelineOptionsHelper.this.activity, localBuilder1.build(), localBuilder.build(), false, bool);
            TimelineOptionsHelper.this.soundManager.playSound(SoundManager.SoundId.SUCCESS);
            TimelineHelper.goToTimeline(TimelineOptionsHelper.this.activity, new TimelineItemId(localTimelineItem));
            return localTimelineItem;
          }
        }
      });
      return true;
      localBuilder.setType(UserAction.Type.PIN);
      localBuilder1.setIsPinned(true);
      localBuilder1.setPinTime(System.currentTimeMillis());
    }
  }

  private boolean onViewWebSite(TimelineItem paramTimelineItem)
  {
    String str = paramTimelineItem.getSendToPhoneUrl();
    if (TextUtils.isEmpty(str))
    {
      Log.w(TAG, "No web site url available.");
      return false;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
    this.activity.startActivity(localIntent);
    return true;
  }

  private boolean onVoiceCall(MenuItem paramMenuItem, TimelineItem paramTimelineItem)
  {
    if ((BluetoothHeadset.isInCallOrCallSetup(this.activity)) || (getHangoutHelper(this.activity).isInHangout()))
    {
      Log.w(TAG, "In a call or hangout, not initiating a new one.");
      this.soundManager.playSound(SoundManager.SoundId.ERROR);
      return false;
    }
    String str = paramMenuItem.getId();
    if (TextUtils.isEmpty(str))
      str = paramTimelineItem.getCreator().getPhoneNumber();
    BluetoothHeadset.attemptDial(this.activity, str);
    return true;
  }

  private void showConfirmationDialog(final MenuItem paramMenuItem, CharSequence paramCharSequence1, Drawable paramDrawable1, CharSequence paramCharSequence2, Drawable paramDrawable2, final OnConfirmedListener paramOnConfirmedListener)
  {
    new MessageDialog.Builder(this.activity).setTemporaryMessage(paramCharSequence1).setTemporaryIcon(paramDrawable1).setMessage(paramCharSequence2).setIcon(paramDrawable2).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setAnimated(false).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        Log.d(TimelineOptionsHelper.TAG, paramMenuItem.getAction() + " cancelled");
      }

      public void onDone()
      {
        Log.d(TimelineOptionsHelper.TAG, paramMenuItem.getAction() + " confirmed");
        if (paramOnConfirmedListener != null)
          paramOnConfirmedListener.onConfirmed(paramMenuItem);
      }
    }).build().show();
  }

  public int addMenuItem(OptionMenu paramOptionMenu, Object paramObject, OptionMenu.ItemState[] paramArrayOfItemState)
  {
    int i = paramOptionMenu.getItemCount();
    paramOptionMenu.addItem(i, paramArrayOfItemState);
    paramOptionMenu.getItem(i).setExtra(paramObject);
    return i;
  }

  protected void addNavigate(OptionMenu paramOptionMenu, MenuValue paramMenuValue, MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_navigate), getMenuIcon(paramMenuValue, R.drawable.ic_navigate_medium), true, null, paramMenuItem);
    NavigationLauncher.wakeUpNavigation(this.activity);
  }

  protected GlassActivity getGlassActivity()
  {
    return this.activity;
  }

  @VisibleForTesting
  HangoutHelper getHangoutHelper(Context paramContext)
  {
    return new HangoutHelper(paramContext);
  }

  protected TimelineHelper getTimelineHelper()
  {
    return this.timelineHelper;
  }

  protected UserEventHelper getUserEventHelper()
  {
    return this.userEventHelper;
  }

  public boolean handleOptionsItemSelected(TimelineItem paramTimelineItem, OptionMenu.Item paramItem, TimelineItemDeletedListener paramTimelineItemDeletedListener)
  {
    if (paramTimelineItem == null);
    MenuItem localMenuItem;
    do
    {
      return false;
      localMenuItem = (MenuItem)paramItem.getExtra();
    }
    while (localMenuItem == null);
    switch (8.$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action[localMenuItem.getAction().ordinal()])
    {
    default:
      Log.w(TAG, "Action not handled.");
      return false;
    case 1:
      return onCustom(paramTimelineItem, localMenuItem);
    case 6:
      return onShare(paramTimelineItem);
    case 5:
      return onDelete(paramTimelineItem, localMenuItem, paramTimelineItemDeletedListener);
    case 3:
      return onReply(paramTimelineItem);
    case 4:
      return onReplyAll(paramTimelineItem);
    case 7:
      return onReadAloud(paramTimelineItem);
    case 2:
      return onBroadcast(paramTimelineItem, localMenuItem);
    case 8:
      return onVoiceCall(localMenuItem, paramTimelineItem);
    case 9:
      return onNavigate(paramTimelineItem);
    case 10:
      return onSearch(paramTimelineItem);
    case 11:
      return onMuteMic(paramItem);
    case 12:
      return onHangout(localMenuItem, paramTimelineItem);
    case 13:
      return onViewWebSite(paramTimelineItem);
    case 14:
    }
    return onTogglePinned(paramTimelineItem);
  }

  public boolean handlePrepareOptionsMenu(OptionMenu paramOptionMenu, TimelineItem paramTimelineItem)
  {
    paramOptionMenu.clearItems();
    if (paramTimelineItem == null)
      Log.w(TAG, "No item to populate options.");
    do
    {
      return false;
      Iterator localIterator = paramTimelineItem.getMenuItemList().iterator();
      while (localIterator.hasNext())
        addMenuItem(paramOptionMenu, paramTimelineItem, (MenuItem)localIterator.next());
    }
    while (paramOptionMenu.getItemCount() <= 0);
    return true;
  }

  protected void notifyOnCustomMenuSelected(final TimelineItem paramTimelineItem, final UserAction paramUserAction, MenuItem paramMenuItem)
  {
    TimelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
    {
      public TimelineItem onExecute()
      {
        return TimelineOptionsHelper.this.timelineHelper.updateTimelineItem(TimelineOptionsHelper.this.activity, paramTimelineItem, paramUserAction, false, false);
      }
    });
  }

  public boolean onReadAloud(TimelineItem paramTimelineItem)
  {
    boolean bool = paramTimelineItem.hasSendToPhoneUrl();
    int i = 0;
    final String str2;
    if (bool)
    {
      str2 = paramTimelineItem.getSendToPhoneUrl();
      Uri localUri = Uri.parse(str2);
      if ((!"translate.google.com".equals(localUri.getHost())) || (!"/translate_tts".equals(localUri.getPath())))
        break label108;
    }
    label108: for (i = 1; ; i = 0)
    {
      if (i != 0)
        AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
        {
          public void run()
          {
            NetworkTts.getSharedInstance().requestTtsAndPlay(str2);
          }
        });
      if (i == 0)
      {
        String str1 = TimelineHelper.formatSpeakableText(paramTimelineItem);
        if (!TextUtils.isEmpty(str1))
          GlassApplication.from(this.activity).speakText(str1);
      }
      return true;
    }
  }

  public boolean onReply(TimelineItem paramTimelineItem)
  {
    this.userEventHelper.log(UserEventAction.REPLY_INITIATED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("REPLY_TO_ID", paramTimelineItem.getId());
    localIntent.putExtra("should_finish_turn_screen_off", true);
    this.activity.startActivity(localIntent);
    return true;
  }

  public boolean onReplyAll(TimelineItem paramTimelineItem)
  {
    this.userEventHelper.log(UserEventAction.REPLY_ALL_INITIATED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("REPLY_TO_ID", paramTimelineItem.getId());
    localIntent.putExtra("REPLY_ALL", true);
    localIntent.putExtra("should_finish_turn_screen_off", true);
    this.activity.startActivity(localIntent);
    return true;
  }

  private static abstract interface OnConfirmedListener
  {
    public abstract void onConfirmed(MenuItem paramMenuItem);
  }

  public static abstract interface TimelineItemDeletedListener
  {
    public abstract void onDeleted();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineOptionsHelper
 * JD-Core Version:    0.6.2
 */