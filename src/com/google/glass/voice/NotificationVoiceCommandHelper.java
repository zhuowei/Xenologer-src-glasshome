package com.google.glass.voice;

import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineOptionsHelper;
import com.google.googlex.glass.common.proto.TimelineItem;

public class NotificationVoiceCommandHelper
{
  private static final String TAG = NotificationVoiceCommandHelper.class.getSimpleName();
  private final GlassActivity activity;
  private final GlassApplication app;
  private final SoundManager soundManager;
  private final TimelineOptionsHelper timelineOptionsHelper;
  private final UserEventHelper userEventHelper;

  public NotificationVoiceCommandHelper(GlassActivity paramGlassActivity, TimelineOptionsHelper paramTimelineOptionsHelper)
  {
    this.activity = paramGlassActivity;
    this.timelineOptionsHelper = paramTimelineOptionsHelper;
    this.soundManager = paramGlassActivity.getSoundManager();
    this.app = GlassApplication.from(paramGlassActivity);
    this.userEventHelper = this.app.getUserEventHelper();
  }

  private void logVoiceCommand(String paramString)
  {
    this.userEventHelper.log(UserEventAction.VOICE_MENU_COMMAND_SPOKEN, paramString);
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    return VoiceConfig.GUARD;
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand, TimelineItem paramTimelineItem)
  {
    if (paramVoiceCommand == VoiceCommand.OK_GLASS)
    {
      this.soundManager.playSound(SoundManager.SoundId.VOICE_PENDING);
      this.app.stopSpeaking();
      this.activity.setVoiceConfig(VoiceConfig.NOTIFICATION);
      logVoiceCommand("1");
      return true;
    }
    if (paramVoiceCommand == VoiceCommand.READ_ALOUD)
    {
      this.activity.getSoundManager().playSound(SoundManager.SoundId.VOICE_COMPLETED);
      this.activity.setVoiceConfig(VoiceConfig.GUARD);
      logVoiceCommand("9");
      return this.timelineOptionsHelper.onReadAloud(paramTimelineItem);
    }
    if (paramVoiceCommand == VoiceCommand.REPLY)
    {
      this.soundManager.playSound(SoundManager.SoundId.VOICE_PENDING);
      logVoiceCommand("10");
      return this.timelineOptionsHelper.onReply(paramTimelineItem);
    }
    Log.w(this.activity.getClass().getSimpleName() + "/" + TAG, "Unrecognized voice command from screen off notification: " + paramVoiceCommand);
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NotificationVoiceCommandHelper
 * JD-Core Version:    0.6.2
 */