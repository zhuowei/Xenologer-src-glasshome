package com.google.glass.home.voice.menu;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HangoutHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.googlex.glass.common.proto.Entity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public abstract class EntityMenuItem extends VoiceMenuItem
{
  private static final String TAG = EntityMenuItem.class.getSimpleName();
  public final Entity entity;

  EntityMenuItem(Entity paramEntity)
  {
    this.entity = paramEntity;
  }

  EntityMenuItem(Entity paramEntity, Requirement[] paramArrayOfRequirement)
  {
    super(Arrays.asList(paramArrayOfRequirement));
    this.entity = paramEntity;
  }

  public static List<EntityMenuItem> asContactMenuItems(List<Entity> paramList, VoiceCommand paramVoiceCommand)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(newContactMenuItem((Entity)localIterator.next(), paramVoiceCommand));
    return localArrayList;
  }

  public static List<EntityMenuItem> asPlusShareTargetMenuItems(List<Entity> paramList, VoiceCommand paramVoiceCommand)
  {
    if (paramVoiceCommand != VoiceCommand.HANGOUT_WITH)
      throw new IllegalArgumentException("Unexpected voice command triggered the share target list");
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(new HangOutWithItem((Entity)localIterator.next()));
    return localArrayList;
  }

  private static Requirement hasEmailAddress(Entity paramEntity)
  {
    return new Requirement()
    {
      public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return new GlassError().setPrimaryMessageId(R.string.error_no_email).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
      }

      public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return (this.val$entity.hasEmail()) && (!TextUtils.isEmpty(this.val$entity.getEmail()));
      }
    };
  }

  private static Requirement hasPhoneNumber(Entity paramEntity)
  {
    return new Requirement()
    {
      public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return new GlassError().setPrimaryMessageId(R.string.error_no_phone_number).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
      }

      public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return (this.val$entity.hasPhoneNumber()) && (!TextUtils.isEmpty(this.val$entity.getPhoneNumber()));
      }
    };
  }

  private static EntityMenuItem newContactMenuItem(Entity paramEntity, VoiceCommand paramVoiceCommand)
  {
    if (paramVoiceCommand == VoiceCommand.CALL)
      return new CallEntityItem(paramEntity);
    if (paramVoiceCommand == VoiceCommand.SEND_MESSAGE_TO)
    {
      if (Labs.isEnabled(Labs.Feature.SMS_FROM_VOICE_MENU))
        return new SendSmsWithEmailFallbackItem(paramEntity);
      return new SendEmailMessageItem(paramEntity);
    }
    throw new IllegalArgumentException("Unexpected voice command triggered the contact list");
  }

  private static void sendMessage(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    GlassActivity localGlassActivity = paramVoiceMenuEnvironment.getContext();
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("MESSAGE_TYPE", paramInt);
    localIntent.putExtra("TO_ID", paramString1);
    localIntent.putExtra("TO_NAME", paramString2);
    localIntent.putExtra("should_finish_turn_screen_off", true);
    Log.d(TAG, "Initiating send message");
    LogHelper.logPii(3, TAG, "Message type: " + paramInt + ", toId: " + paramString1);
    paramVoiceMenuEnvironment.setAnimateOnNextPause(false);
    paramVoiceMenuEnvironment.logUserEvent(UserEventAction.SEND_MESSAGE_INITIATED, null);
    localGlassActivity.startActivity(localIntent);
    localGlassActivity.overridePendingTransition(0, 0);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    EntityMenuItem localEntityMenuItem;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localEntityMenuItem = (EntityMenuItem)paramObject;
        if (this.entity != null)
          break;
      }
      while (localEntityMenuItem.entity == null);
      return false;
    }
    while (this.entity.equals(localEntityMenuItem.entity));
    return false;
  }

  public String getLabel(Context paramContext)
  {
    return this.entity.getDisplayName();
  }

  public int hashCode()
  {
    if (this.entity == null);
    for (int i = 0; ; i = this.entity.hashCode())
      return i + 31;
  }

  public boolean matches(VoiceCommand paramVoiceCommand)
  {
    String str = paramVoiceCommand.getSemanticTag();
    if (str == null)
    {
      Log.w(TAG, "VoiceCommand with null semantic tag compared against EntityMenuItem! Stack trace included for investigation, but this is not a crash.", new Throwable());
      LogHelper.logPii(5, TAG, "VoiceCommand with null semantic tag: " + paramVoiceCommand);
      return false;
    }
    return str.equals(this.entity.getId());
  }

  public String toString()
  {
    return "EntityMenuItem [entity=" + this.entity.getId() + "]";
  }

  private static class CallEntityItem extends EntityMenuItem
  {
    CallEntityItem(Entity paramEntity)
    {
      super(arrayOfRequirement);
    }

    public void onTrigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
    {
      if (paramBoolean);
      for (SoundManager.SoundId localSoundId = SoundManager.SoundId.VOICE_COMPLETED; ; localSoundId = SoundManager.SoundId.TAP)
      {
        paramVoiceMenuEnvironment.playSound(localSoundId);
        paramVoiceMenuEnvironment.setVoiceConfig(VoiceConfig.OFF);
        paramVoiceMenuEnvironment.selectSecondaryMenuItem(this, new Runnable()
        {
          public void run()
          {
            BluetoothHeadset.attemptDial(paramVoiceMenuEnvironment.getContext(), EntityMenuItem.CallEntityItem.this.entity.getPhoneNumber());
            paramVoiceMenuEnvironment.showProgressBar();
          }
        });
        return;
      }
    }
  }

  private static class HangOutWithItem extends EntityMenuItem
  {
    public HangOutWithItem(Entity paramEntity)
    {
      super();
    }

    public void onTrigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
    {
      if (paramBoolean);
      for (SoundManager.SoundId localSoundId = SoundManager.SoundId.VOICE_COMPLETED; ; localSoundId = SoundManager.SoundId.TAP)
      {
        paramVoiceMenuEnvironment.playSound(localSoundId);
        paramVoiceMenuEnvironment.setVoiceConfig(VoiceConfig.OFF);
        paramVoiceMenuEnvironment.selectSecondaryMenuItem(this, new Runnable()
        {
          public void run()
          {
            new HangoutHelper(paramVoiceMenuEnvironment.getContext()).startHangout(EntityMenuItem.HangOutWithItem.this.entity, true);
          }
        });
        return;
      }
    }
  }

  private static class SendEmailMessageItem extends EntityMenuItem
  {
    SendEmailMessageItem(Entity paramEntity)
    {
      super(arrayOfRequirement);
    }

    public void onTrigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, final boolean paramBoolean)
    {
      paramVoiceMenuEnvironment.playSoundForPendingOpenEndedInput(paramBoolean);
      paramVoiceMenuEnvironment.preloadVoiceConfig(VoiceConfig.VOICE_RECORD);
      paramVoiceMenuEnvironment.selectSecondaryMenuItem(this, new Runnable()
      {
        public void run()
        {
          EntityMenuItem.sendMessage(paramVoiceMenuEnvironment, paramBoolean, 1, EntityMenuItem.SendEmailMessageItem.this.entity.getEmail(), EntityMenuItem.SendEmailMessageItem.this.entity.getDisplayName());
        }
      });
    }
  }

  private static class SendSmsWithEmailFallbackItem extends EntityMenuItem
  {
    SendSmsWithEmailFallbackItem(Entity paramEntity)
    {
      super(arrayOfRequirement);
    }

    public void onTrigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, final boolean paramBoolean)
    {
      final int i = 1;
      int j;
      if ((TextUtils.isEmpty(this.entity.getPhoneNumber())) || (!HomeApplication.from(paramVoiceMenuEnvironment.getContext()).getCompanionState().isConnected()))
      {
        j = i;
        if (j == 0)
          break label98;
        label41: if (j == 0)
          break label103;
      }
      label98: label103: for (final String str = this.entity.getEmail(); ; str = this.entity.getPhoneNumber())
      {
        paramVoiceMenuEnvironment.playSoundForPendingOpenEndedInput(paramBoolean);
        paramVoiceMenuEnvironment.preloadVoiceConfig(VoiceConfig.VOICE_RECORD);
        paramVoiceMenuEnvironment.selectSecondaryMenuItem(this, new Runnable()
        {
          public void run()
          {
            EntityMenuItem.sendMessage(paramVoiceMenuEnvironment, paramBoolean, i, str, EntityMenuItem.SendSmsWithEmailFallbackItem.this.entity.getDisplayName());
          }
        });
        return;
        j = 0;
        break;
        i = 2;
        break label41;
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.menu.EntityMenuItem
 * JD-Core Version:    0.6.2
 */