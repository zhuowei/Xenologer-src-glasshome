.class public abstract Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.source "MainMenuCommandItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final command:Lcom/google/glass/voice/VoiceCommand;

.field private final contextMenuStringId:I

.field private final iconId:I

.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 6
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    .line 54
    new-array v5, v2, [Lcom/google/glass/home/voice/menu/Requirement;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 55
    return-void
.end method

.method private varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 1
    .parameter "command"
    .parameter "stringId"
    .parameter "contextMenuStringId"
    .parameter "iconId"
    .parameter "requirements"

    .prologue
    .line 46
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 47
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    .line 48
    iput p2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    .line 49
    iput p3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->contextMenuStringId:I

    .line 50
    iput p4, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->iconId:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    return-void
.end method

.method public static getMainMenuItems(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    .line 310
    .local v3, settingsHelper:Lcom/google/glass/util/SettingsHelper;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 311
    .local v2, mainMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newGoogleItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newTakePhotoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newRecordVideoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newNavigationItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 322
    invoke-static {}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newHangOutWithItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 326
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->additionalCommands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 328
    .local v0, additionalCommand:Lcom/google/glass/voice/VoiceCommand;
    invoke-static {v0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newAdditionalCommandItem(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v0           #additionalCommand:Lcom/google/glass/voice/VoiceCommand;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    .line 334
    .local v4, trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    invoke-static {v4}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/MainMenuCommandItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    :cond_3
    return-object v2
.end method

.method private static getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;
    .locals 1
    .parameter "command"

    .prologue
    .line 288
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_0

    .line 289
    const-string v0, "2"

    .line 303
    :goto_0
    return-object v0

    .line 290
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_1

    .line 291
    const-string v0, "3"

    goto :goto_0

    .line 292
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_2

    .line 293
    const-string v0, "4"

    goto :goto_0

    .line 294
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->HANGOUT_WITH:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_3

    .line 295
    const-string v0, "8"

    goto :goto_0

    .line 296
    :cond_3
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_4

    .line 297
    const-string v0, "5"

    goto :goto_0

    .line 298
    :cond_4
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_5

    .line 299
    const-string v0, "7"

    goto :goto_0

    .line 300
    :cond_5
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    if-ne p0, v0, :cond_6

    .line 301
    const-string v0, "6"

    goto :goto_0

    .line 303
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method static logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 4
    .parameter "command"
    .parameter "spoken"
    .parameter "environment"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, userEventDataId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    sget-object v1, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No user event log data id for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    :goto_1
    invoke-interface {p2, v1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    goto :goto_1
.end method

.method private static newAdditionalCommandItem(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 2
    .parameter "additionalCommand"

    .prologue
    .line 343
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 244
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$6;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_call:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_call:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_phone_out_small:I

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->HAS_CONTACTS:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/glass/home/voice/menu/Requirements;->IS_HEADSET_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_PHONE_AVAILABLE:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$6;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$6;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newGoogleItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 131
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_google:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_google:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_search_small:I

    new-array v5, v8, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newHangOutWithItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 261
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$7;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->HANGOUT_WITH:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_hangout:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_hangout:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_hangout_small:I

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/glass/home/voice/menu/Requirements;->HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$7;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$7;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private static newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
    .locals 2
    .parameter "trigger"

    .prologue
    .line 387
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->newVoiceCommand(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 388
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    new-instance v1, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$9;

    invoke-direct {v1, v0, p0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$9;-><init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)V

    return-object v1
.end method

.method public static newNavigationItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 198
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_navigation_on:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_navigation_on:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_nav_small:I

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/glass/home/voice/menu/Requirements;->IS_NAVIGATION_ALLOWED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newRecordVideoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6

    .prologue
    .line 178
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$3;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_record_video:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_record_video:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_video_small:I

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$3;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$3;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 228
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_send_message:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_send_message:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_msg_small:I

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/glass/home/voice/menu/Requirements;->HAS_CONTACTS:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newTakePhotoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6

    .prologue
    .line 159
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$2;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_take_photo:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_take_photo:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_camera_small:I

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$2;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$2;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;

    .line 117
    .local v0, other:Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v3, :cond_4

    .line 118
    iget-object v3, v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-eqz v3, :cond_5

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    iget v3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    iget v4, v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getContextIconId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->iconId:I

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    iget v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->contextMenuStringId:I

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->contextMenuStringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    iget v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    const/16 v0, 0x1f

    .line 99
    .local v0, prime:I
    const/4 v1, 0x1

    .line 100
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 101
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->stringId:I

    add-int v1, v2, v3

    .line 102
    return v1

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceCommand;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "voiceCommand"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v0, p2, p1}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 88
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainMenuCommandItem [command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
