package com.google.glass.home.voice;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.LinearLayout;
import com.google.glass.companion.CompanionUtils;
import com.google.glass.entity.EntityHelper;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionHelper;
import com.google.glass.home.search.StreamingTextView;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SourceType;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.googlex.glass.common.proto.UserAction.Type;

public class VoiceMessageActivity extends BaseVoiceInputActivity
{
  private static final long ANIMATE_UP_DURATION_MILLIS = 220L;
  static final long CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS = 500L;
  private static final int MSG_CONFIRM_SEND = 0;
  private static final long SHOW_RESULT_DURATION_MAX_ADDITIONAL = 3000L;
  private static final long SHOW_RESULT_DURATION_MINIMUM = 2000L;
  private static final int TOP_MARGIN = 40;
  private TypophileTextView cancelTip;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      }
      do
        return;
      while (VoiceMessageActivity.this.isFinishing());
      VoiceMessageActivity.this.confirmSend();
    }
  };
  private LinearLayout header;
  private boolean isRecognitionResultExpanded = false;
  private boolean isReplyingAll;
  private int messageType;
  private String recognitionResult;
  private String replyToId;
  private TypophileTextView subSelectedItem;
  private TimelineHelper timelineHelper;
  private String toId;
  private String toName;

  private void confirmSend()
  {
    int i;
    int j;
    int k;
    if (!isFinishing())
    {
      i = R.string.voice_message_send_confirming;
      j = R.string.voice_message_send_confirmed;
      k = R.drawable.ic_reply_medium;
      if (Labs.isEnabled(Labs.Feature.SMS_FROM_VOICE_MENU))
      {
        if (this.messageType != 1)
          break label77;
        i = R.string.voice_message_send_email_confirming;
        j = R.string.voice_message_send_email_confirmed;
        k = R.drawable.ic_message_medium;
      }
    }
    final String str;
    while (true)
    {
      str = this.recognitionResult;
      if (!TextUtils.isEmpty(str))
        break;
      Log.d(getTag(), "Empty message sent! Finishing VoiceMessageActivity.");
      finish();
      return;
      label77: if (this.messageType == 2)
      {
        i = R.string.voice_message_send_sms_confirming;
        j = R.string.voice_message_send_sms_confirmed;
        k = R.drawable.ic_message_medium;
      }
    }
    new MessageDialog.Builder(this).setTemporaryMessage(i).setTemporaryIcon(k).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setMessage(j).setIcon(R.drawable.ic_done_medium).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        VoiceMessageActivity.this.logUserEvent(UserEventAction.VOICE_MESSAGE_DISMISS, "c");
        VoiceMessageActivity.this.finish();
      }

      public void onDone()
      {
        VoiceMessageActivity.this.onMessageCommitted(str);
      }
    }).build().show();
  }

  public static long getResultDuration(String paramString)
  {
    return 2000L + ()(3000.0D * Math.min(1.0D, paramString.length() / 140.0D));
  }

  private void onMessageCommitted(final String paramString)
  {
    final int i = this.messageType;
    final String str1 = this.toId;
    final String str2 = this.toName;
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        String str = this.val$currentReplyToId;
        TimelineItem localTimelineItem = null;
        if (str != null)
          localTimelineItem = VoiceMessageActivity.this.timelineHelper.queryTimelineItem(VoiceMessageActivity.this.getContentResolver(), this.val$currentReplyToId);
        if (str1 != null)
        {
          if (i == 1)
          {
            VoiceMessageActivity.this.sendViaGmail(str1, str2, paramString);
            return;
          }
          if (i == 2)
          {
            VoiceMessageActivity.this.sendViaSms(str1, paramString);
            return;
          }
          Log.e(VoiceMessageActivity.this.getTag(), "Unknown message type: " + i);
          return;
        }
        if (this.val$currentReplyToId != null)
        {
          if (localTimelineItem == null)
          {
            Log.w(VoiceMessageActivity.this.getTag(), "No timeline item found for " + this.val$currentReplyToId);
            return;
          }
          if (localTimelineItem.getSourceType() == TimelineItem.SourceType.COMPANIONWARE)
          {
            VoiceMessageActivity.this.replyCompanionTimelineItem(localTimelineItem, paramString);
            return;
          }
          VoiceMessageActivity.this.replyCloudTimelineItem(localTimelineItem, this.val$currentIsReplyingAll, paramString);
          return;
        }
        Log.w(VoiceMessageActivity.this.getTag(), "toId and replyToId were both null, not creating timeline item for message");
      }
    });
    finishAndTurnScreenOffIfRequested();
  }

  private void replyCloudTimelineItem(TimelineItem paramTimelineItem, boolean paramBoolean, String paramString)
  {
    Log.d(getTag(), "Replying to timeline item via cloud-based Glassware ...");
    Entity localEntity1 = paramTimelineItem.getCreator();
    if (localEntity1 == null)
      localEntity1 = Entity.newBuilder().setSource(paramTimelineItem.getSource()).build();
    TimelineItem.Builder localBuilder = this.timelineHelper.createTimelineItemBuilder(this, new SettingsSecure(getContentResolver()));
    localBuilder.setSource(paramTimelineItem.getSource()).setInReplyTo(paramTimelineItem.getId()).setText(paramString).addShareTarget(localEntity1);
    if ((paramTimelineItem != null) && (paramTimelineItem.getBundleId() != null))
      localBuilder.setBundleId(paramTimelineItem.getBundleId());
    Entity localEntity2 = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
    if (localEntity2 != null)
      localBuilder.setCreator(Entity.newBuilder(localEntity2).setSource(paramTimelineItem.getSource()));
    String str = EntityHelper.getSharedInstance().getFirstEmailForUser(this);
    if (paramBoolean);
    UserAction.Builder localBuilder1;
    label235: 
    do
    {
      localBuilder.addAllShareTarget(paramTimelineItem.getShareTargetList());
      break label235;
      localBuilder1 = UserAction.newBuilder();
      if (localBuilder.getShareTargetCount() > 1)
        localBuilder1.setType(UserAction.Type.REPLY_ALL);
      while (true)
      {
        TimelineItem localTimelineItem = localBuilder.build();
        this.timelineHelper.insertTimelineItem(this, localTimelineItem, UserEventAction.TimelineItemInserted.VOICE_MESSAGE, localBuilder1.build());
        if (localBuilder1.getType() != UserAction.Type.REPLY_ALL)
          break label298;
        logUserEvent(UserEventAction.REPLY_ALL_COMPLETED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
        return;
        if ((localEntity1 == null) || ((!localEntity1.getEmail().equals(str)) && (!localEntity1.getId().equals(str))))
          break;
        localBuilder.clearShareTarget();
        localBuilder.addAllShareTarget(paramTimelineItem.getShareTargetList());
        break;
        localBuilder1.setType(UserAction.Type.REPLY);
      }
    }
    while (localBuilder1.getType() != UserAction.Type.REPLY);
    label298: logUserEvent(UserEventAction.REPLY_COMPLETED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
  }

  private void replyCompanionTimelineItem(TimelineItem paramTimelineItem, String paramString)
  {
    Log.d(getTag(), "Replying to timeline item via companion...");
    Entity localEntity1 = paramTimelineItem.getCreator();
    if (localEntity1 == null)
    {
      Log.w(getTag(), "Don't have creator specified, can't reply.");
      return;
    }
    boolean bool = TimelineHelper.isCompanionSms(paramTimelineItem);
    TimelineItem.Builder localBuilder = this.timelineHelper.createTimelineItemBuilder(this, new SettingsSecure(getContentResolver()));
    localBuilder.setInReplyTo(paramTimelineItem.getId()).setSource(paramTimelineItem.getSource()).setSourceType(paramTimelineItem.getSourceType()).setText(paramString).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.REPLY)).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.READ_ALOUD)).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.DELETE)).setCompanionSyncProtocol(TimelineItem.SyncProtocol.ALWAYS);
    SettingsSecure localSettingsSecure = new SettingsSecure(getContentResolver());
    Entity localEntity2 = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
    if (localEntity2 != null)
      localBuilder.setCreator(Entity.newBuilder(localEntity2).setSource(TimelineHelper.getLocalTimelineItemSource(localSettingsSecure)));
    String str;
    if (bool)
    {
      localBuilder.addShareTarget(localEntity1);
      if (paramTimelineItem.hasBundleId())
        str = paramTimelineItem.getBundleId();
    }
    while (true)
    {
      localBuilder.setBundleId(str);
      LogHelper.logPii(3, getTag(), "set the bundle id to " + str);
      sendItemToCompanion(localBuilder.build(), false);
      return;
      str = CompanionUtils.getSmsBundleId(localEntity1.getPhoneNumber());
      continue;
      if (paramTimelineItem.getShareTargetCount() == 0)
        break;
      localBuilder.addShareTarget(paramTimelineItem.getShareTarget(0));
      if (paramTimelineItem.hasBundleId())
        str = paramTimelineItem.getBundleId();
      else
        str = CompanionUtils.getSmsBundleId(paramTimelineItem.getShareTarget(0).getPhoneNumber());
    }
    Log.e(getTag(), "The shared target should be specified for the sms reply!");
  }

  private void sendItemToCompanion(TimelineItem paramTimelineItem, boolean paramBoolean)
  {
    UserAction localUserAction;
    if (paramBoolean)
      localUserAction = UserAction.newBuilder().setType(UserAction.Type.NEW_MESSAGE).build();
    for (UserEventAction localUserEventAction = UserEventAction.SEND_MESSAGE_COMPLETED; ; localUserEventAction = UserEventAction.REPLY_COMPLETED)
    {
      this.timelineHelper.insertTimelineItem(this, paramTimelineItem, UserEventAction.TimelineItemInserted.VOICE_MESSAGE, localUserAction);
      logUserEvent(localUserEventAction, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
      if (CompanionHelper.sendTimelineItem(this, paramTimelineItem))
        break;
      Log.d(getTag(), "Failed to send SMS to companion");
      CompanionHelper.updateCompanionSyncStatus(this, paramTimelineItem.getId(), TimelineItem.SyncStatus.SYNC_FAILED, true);
      return;
      localUserAction = UserAction.newBuilder().setType(UserAction.Type.REPLY).build();
    }
    Log.d(getTag(), "SMS to companion is sent");
  }

  private void sendViaGmail(String paramString1, String paramString2, String paramString3)
  {
    Log.d(getTag(), "Sending new message via Gmail...");
    Entity localEntity1 = EntityHelper.getSharedInstance().getFirstEntityForEmail(paramString1);
    if (localEntity1 != null);
    for (Entity.Builder localBuilder = Entity.newBuilder(localEntity1); ; localBuilder = Entity.newBuilder())
    {
      localBuilder.setSource("api:208113750677").setId(paramString1).build();
      if (paramString2 != null)
        localBuilder.setDisplayName(paramString2);
      Entity localEntity2 = localBuilder.build();
      TimelineItem.Builder localBuilder1 = this.timelineHelper.createTimelineItemBuilder(this, new SettingsSecure(getContentResolver()));
      localBuilder1.setSource("api:208113750677").setText(paramString3).addShareTarget(localEntity2);
      Entity localEntity3 = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
      if (localEntity3 != null)
        localBuilder1.setCreator(Entity.newBuilder(localEntity3).setSource("api:208113750677"));
      this.timelineHelper.insertTimelineItem(this, localBuilder1.build(), UserEventAction.TimelineItemInserted.VOICE_MESSAGE, UserAction.newBuilder().setType(UserAction.Type.NEW_MESSAGE).build());
      logUserEvent(UserEventAction.SEND_MESSAGE_COMPLETED, TimelineHelper.getRedactedSource(localBuilder1.getSource()));
      return;
    }
  }

  private void sendViaSms(String paramString1, String paramString2)
  {
    Log.d(getTag(), "Replying to phone number...");
    LogHelper.logPii(6, getTag(), "Phone number: " + paramString1);
    Entity localEntity1 = EntityHelper.getSharedInstance().getFirstEntityForPhoneNumber(paramString1);
    if (localEntity1 != null);
    for (Entity.Builder localBuilder = Entity.newBuilder(localEntity1); ; localBuilder = Entity.newBuilder())
    {
      Entity localEntity2 = localBuilder.setId(paramString1).setPhoneNumber(paramString1).setSource("companion:com.google.glass.companion.sms").build();
      SettingsSecure localSettingsSecure = new SettingsSecure(getContentResolver());
      TimelineItem.Builder localBuilder1 = this.timelineHelper.createTimelineItemBuilder(this, localSettingsSecure);
      String str = CompanionUtils.getSmsBundleId(paramString1);
      localBuilder1.setSourceType(TimelineItem.SourceType.COMPANIONWARE).setText(paramString2).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.REPLY)).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.READ_ALOUD)).addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.DELETE)).addShareTarget(localEntity2).setBundleId(str).setCompanionSyncProtocol(TimelineItem.SyncProtocol.ALWAYS);
      LogHelper.logPii(3, getTag(), "set the bundle id to " + str);
      Entity localEntity3 = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
      if (localEntity3 != null)
        localBuilder1.setCreator(Entity.newBuilder(localEntity3).setSource(TimelineHelper.getLocalTimelineItemSource(localSettingsSecure)));
      sendItemToCompanion(localBuilder1.build(), true);
      return;
    }
  }

  private void showCancelTip()
  {
    this.cancelTip.setAlpha(0.0F);
    this.cancelTip.setVisibility(0);
    this.cancelTip.animate().alpha(1.0F).setDuration(500L);
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    return VoiceConfig.VOICE_RECORD;
  }

  protected int getInputTypeResId()
  {
    return R.string.voice_menu_item_send_message;
  }

  protected VoiceConfig getRetryVoiceConfig()
  {
    return VoiceConfig.VOICE_RECORD;
  }

  protected int getSpeakNowPromptResId()
  {
    return R.string.voice_message_speak_message;
  }

  protected int getType()
  {
    return 2;
  }

  public boolean onConfirm()
  {
    if (getVoiceConfig() == VoiceConfig.OFF)
    {
      this.handler.removeMessages(0);
      this.handler.sendMessage(this.handler.obtainMessage(0));
      return true;
    }
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.timelineHelper = new TimelineHelper();
    Intent localIntent = getIntent();
    this.messageType = localIntent.getIntExtra("MESSAGE_TYPE", -1);
    this.toId = localIntent.getStringExtra("TO_ID");
    this.toName = localIntent.getStringExtra("TO_NAME");
    this.replyToId = localIntent.getStringExtra("REPLY_TO_ID");
    this.isReplyingAll = localIntent.getBooleanExtra("REPLY_ALL", false);
    if ((this.toId == null) && (this.replyToId == null))
      Log.e(getTag(), "One of the extras TO_ID or REPLY_TO_ID should be specified");
    while (true)
    {
      if ((this.toId != null) && (this.messageType == -1))
        Log.e(getTag(), "The MESSAGE_TYPE extra must be specified when specifying a TO_ID");
      return;
      if ((this.toId != null) && (this.replyToId != null))
        Log.e(getTag(), "Only one of the extras TO_ID or REPLY_TO_ID should be specified");
    }
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Log.d(getTag(), "onDismiss");
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    logUserEvent(UserEventAction.VOICE_MESSAGE_DISMISS, "t");
    this.handler.removeMessages(0);
    detachVoiceSearchUi();
    this.recognitionResult = null;
    finish();
    return true;
  }

  protected void onRecognitionResult(String paramString)
  {
    if (this.recognitionResult != null)
      Log.e(getTag(), "PROBLEM: Recognition result was already set!");
    this.recognitionResult = paramString;
    setVoiceConfig(VoiceConfig.OFF);
    showCancelTip();
    long l = getResultDuration(paramString);
    this.handler.sendMessageDelayed(this.handler.obtainMessage(0), l);
  }

  protected void onResume()
  {
    super.onResume();
    this.subSelectedItem = ((TypophileTextView)findViewById(R.id.voice_search_subselected_item));
    this.header = ((LinearLayout)findViewById(R.id.header));
    this.cancelTip = ((TypophileTextView)findViewById(R.id.cancel_tip));
    if (this.toId != null)
    {
      if (TextUtils.isEmpty(this.toName))
        this.subSelectedItem.setText(this.toId);
      while (true)
      {
        this.subSelectedItem.setVisibility(0);
        this.header.setVisibility(0);
        return;
        this.subSelectedItem.setText(this.toName);
      }
    }
    this.subSelectedItem.setVisibility(8);
    this.header.setVisibility(8);
  }

  protected void onUpdateRecognizedText()
  {
    if ((!this.isRecognitionResultExpanded) && (getRecognizedTextLineCount() > 1))
    {
      this.isRecognitionResultExpanded = true;
      StreamingTextView localStreamingTextView = (StreamingTextView)findViewById(R.id.streaming_text);
      float f = localStreamingTextView.getY() - 40.0F;
      findViewById(R.id.header).animate().translationY(-f).setDuration(220L).start();
      this.subSelectedItem.animate().translationY(-f).setDuration(220L).start();
      localStreamingTextView.animate().translationY(-f).setDuration(220L).start();
    }
  }

  protected int provideContentView()
  {
    return R.layout.voice_search_activity;
  }

  protected boolean showProgressOnRecognitionResult()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.VoiceMessageActivity
 * JD-Core Version:    0.6.2
 */