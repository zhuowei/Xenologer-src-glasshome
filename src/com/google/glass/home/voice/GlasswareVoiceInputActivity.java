package com.google.glass.home.voice;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.glass.entity.EntityHelper;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.string;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.SettingsSecure;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.googlex.glass.common.proto.UserAction.Type;

public class GlasswareVoiceInputActivity extends BaseVoiceInputActivity
{
  public static final String EXTRA_INPUT_TYPE_TEXT = "input_type_text";
  public static final String EXTRA_PROJECT_ID = "project_id";
  public static final String EXTRA_PROMPT_TEXT = "prompt_text";
  final Runnable createTimelineItemRunnable = new Runnable()
  {
    public void run()
    {
      GlasswareVoiceInputActivity.this.createTimelineItem();
    }
  };
  private String inputTypeText;
  private String projectId;
  private String promptText;
  private String recognitionResult;
  private final TimelineHelper timelineHelper = new TimelineHelper();

  private void createTimelineItem()
  {
    if (isFinishing())
      return;
    final String str = this.recognitionResult;
    if (TextUtils.isEmpty(str))
    {
      Log.d(getTag(), "No recognition result! Finishing VoiceMessageActivity.");
      finish();
      return;
    }
    new MessageDialog.Builder(this).setTemporaryMessage(R.string.voice_message_send_confirming).setTemporaryIcon(R.drawable.ic_message_medium).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setMessage(R.string.voice_message_send_confirmed).setIcon(R.drawable.ic_done_medium).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        GlasswareVoiceInputActivity.this.logUserEvent(UserEventAction.VOICE_MESSAGE_DISMISS, "c");
        GlasswareVoiceInputActivity.this.finish();
      }

      public void onDone()
      {
        AsyncTask.execute(new Runnable()
        {
          public void run()
          {
            GlasswareVoiceInputActivity.this.insertTimelineItem(GlasswareVoiceInputActivity.this.projectId, GlasswareVoiceInputActivity.2.this.val$currentRecognitionResult);
          }
        });
        GlasswareVoiceInputActivity.this.finishAndTurnScreenOffIfRequested();
      }
    }).build().show();
  }

  private View getCancelTip()
  {
    return findViewById(R.id.cancel_tip);
  }

  private void insertTimelineItem(String paramString1, String paramString2)
  {
    Log.d(getTag(), "Inserting timeline item.");
    String str = "api:" + paramString1;
    TimelineItem.Builder localBuilder = this.timelineHelper.createTimelineItemBuilder(this, new SettingsSecure(getContentResolver()));
    localBuilder.setSource(str).setText(paramString2);
    Entity localEntity = EntityHelper.getSharedInstance().getFirstEntityForUser(this, false);
    if (localEntity != null)
      localBuilder.setCreator(localEntity);
    new TimelineHelper().insertTimelineItem(this, localBuilder.build(), UserEventAction.TimelineItemInserted.LAUNCH, UserAction.newBuilder().setType(UserAction.Type.LAUNCH).build());
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    return VoiceConfig.VOICE_RECORD;
  }

  protected CharSequence getInputTypeText()
  {
    return this.inputTypeText;
  }

  protected CharSequence getPromptText()
  {
    return this.promptText;
  }

  protected VoiceConfig getRetryVoiceConfig()
  {
    return VoiceConfig.VOICE_RECORD;
  }

  protected int getType()
  {
    return 3;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.promptText = ((String)Assert.assertNotNull("Prompt text required", getIntent().getStringExtra("prompt_text")));
    this.inputTypeText = ((String)Assert.assertNotNull("Input type text required", getIntent().getStringExtra("input_type_text")));
    this.projectId = ((String)Assert.assertNotNull("Project ID required", getIntent().getStringExtra("project_id")));
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Log.d(getTag(), "onDismiss");
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    getHandler().removeCallbacks(this.createTimelineItemRunnable);
    this.recognitionResult = null;
    finish();
    return true;
  }

  protected void onRecognitionResult(String paramString)
  {
    if (this.recognitionResult != null)
      Log.e(getTag(), "Recognition result was already set!");
    this.recognitionResult = paramString;
    setVoiceConfig(VoiceConfig.OFF);
    View localView = getCancelTip();
    localView.setAlpha(0.0F);
    localView.setVisibility(0);
    localView.animate().alpha(1.0F).setDuration(500L);
    long l = VoiceMessageActivity.getResultDuration(paramString);
    getHandler().postDelayed(this.createTimelineItemRunnable, l);
  }

  protected boolean showProgressOnRecognitionResult()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.GlasswareVoiceInputActivity
 * JD-Core Version:    0.6.2
 */