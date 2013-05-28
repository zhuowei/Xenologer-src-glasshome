package com.google.glass.home.voice.menu;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.glass.app.VoiceTriggerManager.Trigger;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassActivity;
import com.google.glass.camera.CameraHelper;
import com.google.glass.entity.EntityHelper;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.string;
import com.google.glass.home.search.VoiceNavigationActivity;
import com.google.glass.home.search.VoiceSearchActivity;
import com.google.glass.home.voice.GlasswareVoiceInputActivity;
import com.google.glass.home.voice.NativeAppVoiceMenuHelper;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.googlex.glass.common.proto.Entity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class MainMenuCommandItem extends VoiceMenuItem
{
  private static final String TAG = MainMenuCommandItem.class.getSimpleName();
  public final VoiceCommand command;
  private final int contextMenuStringId;
  private final int iconId;
  private final int stringId;

  private MainMenuCommandItem(VoiceCommand paramVoiceCommand)
  {
    this(paramVoiceCommand, 0, 0, 0, new Requirement[0]);
  }

  private MainMenuCommandItem(VoiceCommand paramVoiceCommand, int paramInt1, int paramInt2, int paramInt3, Requirement[] paramArrayOfRequirement)
  {
    super(Arrays.asList(paramArrayOfRequirement));
    this.command = paramVoiceCommand;
    this.stringId = paramInt1;
    this.contextMenuStringId = paramInt2;
    this.iconId = paramInt3;
  }

  public static List<? extends VoiceMenuItem> getMainMenuItems(Context paramContext)
  {
    ArrayList localArrayList1 = Lists.newArrayList();
    ArrayList localArrayList2 = Lists.newArrayList();
    localArrayList1.addAll(EntityHelper.getSharedInstance().getSpeakableCommunicationTargets().values());
    localArrayList2.addAll(EntityHelper.getSharedInstance().getSpeakablePlusShareTargets(null).values());
    SettingsHelper localSettingsHelper = new SettingsHelper(paramContext);
    ArrayList localArrayList3 = Lists.newArrayList();
    localArrayList3.add(newGoogleItem());
    localArrayList3.add(newTakePhotoItem());
    localArrayList3.add(newRecordVideoItem());
    localArrayList3.add(newNavigationItem());
    localArrayList3.add(newSendMessageItem(localArrayList1));
    if ((Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET)) && (!localSettingsHelper.isGuestModeEnabled()))
      localArrayList3.add(newCallItem(localArrayList1));
    if (!localSettingsHelper.isGuestModeEnabled())
      localArrayList3.add(newHangOutWithItem(localArrayList2));
    if (!localSettingsHelper.isGuestModeEnabled())
    {
      if (Labs.isEnabled(Labs.Feature.THIRD_PARTY_VOICE))
      {
        Iterator localIterator2 = VoiceCommand.additionalCommands.iterator();
        while (localIterator2.hasNext())
          localArrayList3.add(newAdditionalCommandItem((VoiceCommand)localIterator2.next()));
      }
      if (Labs.isEnabled(Labs.Feature.NATIVE_APP_VOICE))
      {
        Iterator localIterator1 = NativeAppVoiceMenuHelper.getInstance().getTriggers(paramContext).iterator();
        while (localIterator1.hasNext())
          localArrayList3.add(newNativeAppCommandItem((VoiceTriggerManager.Trigger)localIterator1.next()));
      }
    }
    return localArrayList3;
  }

  private static String getUserEventDataId(VoiceCommand paramVoiceCommand)
  {
    if (paramVoiceCommand == VoiceCommand.GOOGLE)
      return "2";
    if (paramVoiceCommand == VoiceCommand.TAKE_PHOTO)
      return "3";
    if (paramVoiceCommand == VoiceCommand.RECORD_VIDEO)
      return "4";
    if (paramVoiceCommand == VoiceCommand.HANGOUT_WITH)
      return "8";
    if (paramVoiceCommand == VoiceCommand.NAVIGATION)
      return "5";
    if (paramVoiceCommand == VoiceCommand.CALL)
      return "7";
    if (paramVoiceCommand == VoiceCommand.SEND_MESSAGE_TO)
      return "6";
    return "";
  }

  static void logMainMenuCommandEvent(VoiceCommand paramVoiceCommand, boolean paramBoolean, VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    String str = getUserEventDataId(paramVoiceCommand);
    if (TextUtils.isEmpty(str))
    {
      Log.w(TAG, "No user event log data id for command: " + paramVoiceCommand + "; ignoring.");
      return;
    }
    if (paramBoolean);
    for (UserEventAction localUserEventAction = UserEventAction.VOICE_MENU_COMMAND_SPOKEN; ; localUserEventAction = UserEventAction.VOICE_MENU_COMMAND_TAPPED)
    {
      paramVoiceMenuEnvironment.logUserEvent(localUserEventAction, str);
      return;
    }
  }

  private static MainMenuCommandItem newAdditionalCommandItem(VoiceCommand paramVoiceCommand)
  {
    // Byte code:
    //   0: new 266	com/google/glass/home/voice/menu/MainMenuCommandItem$8
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 267	com/google/glass/home/voice/menu/MainMenuCommandItem$8:<init>	(Lcom/google/glass/voice/VoiceCommand;)V
    //   8: areturn
  }

  public static MainMenuCommandItem newCallItem(final List<Entity> paramList)
  {
    VoiceCommand localVoiceCommand = VoiceCommand.CALL;
    int i = R.string.voice_menu_item_call;
    int j = R.string.voice_menu_context_item_call;
    int k = R.drawable.ic_phone_out_small;
    Requirement[] arrayOfRequirement = new Requirement[3];
    arrayOfRequirement[0] = Requirements.HAS_CONTACTS;
    arrayOfRequirement[1] = Requirements.IS_HEADSET_CONNECTED;
    arrayOfRequirement[2] = Requirements.IS_PHONE_AVAILABLE;
    return new MainMenuCommandItem(localVoiceCommand, i, j, k, arrayOfRequirement, paramList)
    {
      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
        paramAnonymousVoiceMenuEnvironment.setVoiceConfig(VoiceConfig.CONTACTS);
        if (paramAnonymousBoolean);
        for (SoundManager.SoundId localSoundId = SoundManager.SoundId.VOICE_PENDING; ; localSoundId = SoundManager.SoundId.TAP)
        {
          paramAnonymousVoiceMenuEnvironment.playSound(localSoundId);
          paramAnonymousVoiceMenuEnvironment.selectMenuItem(this, EntityMenuItem.asContactMenuItems(paramList, this.command));
          return;
        }
      }
    };
  }

  public static MainMenuCommandItem newGoogleItem()
  {
    // Byte code:
    //   0: getstatic 181	com/google/glass/voice/VoiceCommand:GOOGLE	Lcom/google/glass/voice/VoiceCommand;
    //   3: astore_0
    //   4: getstatic 300	com/google/glass/home/R$string:voice_menu_item_google	I
    //   7: istore_1
    //   8: getstatic 303	com/google/glass/home/R$string:voice_menu_context_item_google	I
    //   11: istore_2
    //   12: getstatic 306	com/google/glass/home/R$drawable:ic_search_small	I
    //   15: istore_3
    //   16: iconst_1
    //   17: anewarray 26	com/google/glass/home/voice/menu/Requirement
    //   20: astore 4
    //   22: aload 4
    //   24: iconst_0
    //   25: getstatic 309	com/google/glass/home/voice/menu/Requirements:IS_CONNECTED	Lcom/google/glass/home/voice/menu/Requirement;
    //   28: aastore
    //   29: new 311	com/google/glass/home/voice/menu/MainMenuCommandItem$1
    //   32: dup
    //   33: aload_0
    //   34: iload_1
    //   35: iload_2
    //   36: iload_3
    //   37: aload 4
    //   39: invokespecial 312	com/google/glass/home/voice/menu/MainMenuCommandItem$1:<init>	(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    //   42: areturn
  }

  public static MainMenuCommandItem newHangOutWithItem(final List<Entity> paramList)
  {
    VoiceCommand localVoiceCommand = VoiceCommand.HANGOUT_WITH;
    int i = R.string.voice_menu_item_hangout;
    int j = R.string.voice_menu_context_item_hangout;
    int k = R.drawable.ic_hangout_small;
    Requirement[] arrayOfRequirement = new Requirement[2];
    arrayOfRequirement[0] = Requirements.IS_CONNECTED;
    arrayOfRequirement[1] = Requirements.HAS_PLUS_SHARE_TARGETS;
    return new MainMenuCommandItem(localVoiceCommand, i, j, k, arrayOfRequirement, paramList)
    {
      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
        paramAnonymousVoiceMenuEnvironment.setVoiceConfig(VoiceConfig.PLUS_SHARE_TARGETS);
        if (paramAnonymousBoolean);
        for (SoundManager.SoundId localSoundId = SoundManager.SoundId.VOICE_PENDING; ; localSoundId = SoundManager.SoundId.TAP)
        {
          paramAnonymousVoiceMenuEnvironment.playSound(localSoundId);
          paramAnonymousVoiceMenuEnvironment.selectMenuItem(this, EntityMenuItem.asPlusShareTargetMenuItems(paramList, this.command));
          return;
        }
      }
    };
  }

  private static MainMenuCommandItem newNativeAppCommandItem(final VoiceTriggerManager.Trigger paramTrigger)
  {
    return new MainMenuCommandItem(new VoiceCommand(paramTrigger.getKeyword()), paramTrigger)
    {
      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        paramAnonymousVoiceMenuEnvironment.getContext().startActivity(new Intent().setComponent(paramTrigger.getComponent()));
        paramAnonymousVoiceMenuEnvironment.getContext().finish();
      }
    };
  }

  public static MainMenuCommandItem newNavigationItem()
  {
    // Byte code:
    //   0: getstatic 201	com/google/glass/voice/VoiceCommand:NAVIGATION	Lcom/google/glass/voice/VoiceCommand;
    //   3: astore_0
    //   4: getstatic 341	com/google/glass/home/R$string:voice_menu_item_navigation_on	I
    //   7: istore_1
    //   8: getstatic 344	com/google/glass/home/R$string:voice_menu_context_item_navigation_on	I
    //   11: istore_2
    //   12: getstatic 347	com/google/glass/home/R$drawable:ic_nav_small	I
    //   15: istore_3
    //   16: iconst_2
    //   17: anewarray 26	com/google/glass/home/voice/menu/Requirement
    //   20: astore 4
    //   22: aload 4
    //   24: iconst_0
    //   25: getstatic 309	com/google/glass/home/voice/menu/Requirements:IS_CONNECTED	Lcom/google/glass/home/voice/menu/Requirement;
    //   28: aastore
    //   29: aload 4
    //   31: iconst_1
    //   32: getstatic 350	com/google/glass/home/voice/menu/Requirements:IS_NAVIGATION_ALLOWED	Lcom/google/glass/home/voice/menu/Requirement;
    //   35: aastore
    //   36: new 352	com/google/glass/home/voice/menu/MainMenuCommandItem$4
    //   39: dup
    //   40: aload_0
    //   41: iload_1
    //   42: iload_2
    //   43: iload_3
    //   44: aload 4
    //   46: invokespecial 353	com/google/glass/home/voice/menu/MainMenuCommandItem$4:<init>	(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    //   49: areturn
  }

  public static MainMenuCommandItem newRecordVideoItem()
  {
    // Byte code:
    //   0: new 355	com/google/glass/home/voice/menu/MainMenuCommandItem$3
    //   3: dup
    //   4: getstatic 191	com/google/glass/voice/VoiceCommand:RECORD_VIDEO	Lcom/google/glass/voice/VoiceCommand;
    //   7: getstatic 358	com/google/glass/home/R$string:voice_menu_item_record_video	I
    //   10: getstatic 361	com/google/glass/home/R$string:voice_menu_context_item_record_video	I
    //   13: getstatic 364	com/google/glass/home/R$drawable:ic_video_small	I
    //   16: iconst_0
    //   17: anewarray 26	com/google/glass/home/voice/menu/Requirement
    //   20: invokespecial 365	com/google/glass/home/voice/menu/MainMenuCommandItem$3:<init>	(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    //   23: areturn
  }

  public static MainMenuCommandItem newSendMessageItem(final List<Entity> paramList)
  {
    VoiceCommand localVoiceCommand = VoiceCommand.SEND_MESSAGE_TO;
    int i = R.string.voice_menu_item_send_message;
    int j = R.string.voice_menu_context_item_send_message;
    int k = R.drawable.ic_msg_small;
    Requirement[] arrayOfRequirement = new Requirement[2];
    arrayOfRequirement[0] = Requirements.IS_CONNECTED;
    arrayOfRequirement[1] = Requirements.HAS_CONTACTS;
    return new MainMenuCommandItem(localVoiceCommand, i, j, k, arrayOfRequirement, paramList)
    {
      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
        paramAnonymousVoiceMenuEnvironment.setVoiceConfig(VoiceConfig.CONTACTS);
        SoundManager.SoundId localSoundId;
        ArrayList localArrayList1;
        if (paramAnonymousBoolean)
        {
          localSoundId = SoundManager.SoundId.VOICE_PENDING;
          paramAnonymousVoiceMenuEnvironment.playSound(localSoundId);
          GlassActivity localGlassActivity = paramAnonymousVoiceMenuEnvironment.getContext();
          SettingsHelper localSettingsHelper = new SettingsHelper(localGlassActivity);
          localArrayList1 = Lists.newArrayList();
          if (!localSettingsHelper.isGuestModeEnabled())
            break label131;
          ArrayList localArrayList2 = new ArrayList();
          Entity localEntity = EntityHelper.getSharedInstance().getFirstEntityForUser(localGlassActivity, false);
          if (localEntity != null)
          {
            localArrayList2.add(localEntity);
            localArrayList1.addAll(EntityMenuItem.asContactMenuItems(localArrayList2, this.command));
          }
        }
        while (true)
        {
          paramAnonymousVoiceMenuEnvironment.selectMenuItem(this, localArrayList1);
          return;
          localSoundId = SoundManager.SoundId.TAP;
          break;
          label131: localArrayList1.addAll(EntityMenuItem.asContactMenuItems(paramList, this.command));
        }
      }
    };
  }

  public static MainMenuCommandItem newTakePhotoItem()
  {
    // Byte code:
    //   0: new 379	com/google/glass/home/voice/menu/MainMenuCommandItem$2
    //   3: dup
    //   4: getstatic 186	com/google/glass/voice/VoiceCommand:TAKE_PHOTO	Lcom/google/glass/voice/VoiceCommand;
    //   7: getstatic 382	com/google/glass/home/R$string:voice_menu_item_take_photo	I
    //   10: getstatic 385	com/google/glass/home/R$string:voice_menu_context_item_take_photo	I
    //   13: getstatic 388	com/google/glass/home/R$drawable:ic_camera_small	I
    //   16: iconst_0
    //   17: anewarray 26	com/google/glass/home/voice/menu/Requirement
    //   20: invokespecial 389	com/google/glass/home/voice/menu/MainMenuCommandItem$2:<init>	(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    //   23: areturn
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    MainMenuCommandItem localMainMenuCommandItem;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localMainMenuCommandItem = (MainMenuCommandItem)paramObject;
      if (this.command == null)
      {
        if (localMainMenuCommandItem.command != null)
          return false;
      }
      else if (!this.command.equals(localMainMenuCommandItem.command))
        return false;
    }
    while (this.stringId == localMainMenuCommandItem.stringId);
    return false;
  }

  public int getContextIconId()
  {
    return this.iconId;
  }

  public String getContextLabel(Context paramContext)
  {
    if (this.contextMenuStringId == 0)
      return this.command.getLiteral();
    return paramContext.getString(this.contextMenuStringId);
  }

  public String getLabel(Context paramContext)
  {
    if (this.stringId == 0)
      return this.command.getLiteral();
    return paramContext.getString(this.stringId);
  }

  public int hashCode()
  {
    if (this.command == null);
    for (int i = 0; ; i = this.command.hashCode())
      return 31 * (i + 31) + this.stringId;
  }

  public final boolean matches(VoiceCommand paramVoiceCommand)
  {
    return this.command.equals(paramVoiceCommand);
  }

  public void onTrigger(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
  {
    logMainMenuCommandEvent(this.command, paramBoolean, paramVoiceMenuEnvironment);
    paramVoiceMenuEnvironment.selectMenuItem(this, (Runnable)null);
  }

  public String toString()
  {
    return "MainMenuCommandItem [command=" + this.command + "]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.menu.MainMenuCommandItem
 * JD-Core Version:    0.6.2
 */