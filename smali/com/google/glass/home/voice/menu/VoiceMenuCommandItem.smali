.class public abstract Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;
    }
.end annotation


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
    .line 44
    const-class v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 1
    .parameter "command"
    .parameter "stringId"
    .parameter "contextMenuStringId"
    .parameter "iconId"
    .parameter "requirements"

    .prologue
    .line 62
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 63
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    .line 64
    iput p2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    .line 65
    iput p3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->contextMenuStringId:I

    .line 66
    iput p4, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->iconId:I

    .line 67
    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 6
    .parameter "command"
    .parameter "stringId"
    .parameter "requirements"

    .prologue
    const/4 v3, 0x0

    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 75
    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 6
    .parameter "command"
    .parameter "requirements"

    .prologue
    const/4 v2, 0x0

    .line 78
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 79
    return-void
.end method

.method private static addMirrorCommands(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, mainMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-static {p1}, Lcom/google/glass/voice/VoiceService;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v3

    .line 467
    .local v3, mirrorCommandEntities:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;>;"
    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->mirrorApiCommands:Lcom/google/common/collect/BiMap;

    invoke-interface {v5}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v4

    .line 470
    .local v4, voiceCommandsByCommandType:Lcom/google/common/collect/BiMap;,"Lcom/google/common/collect/BiMap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/glass/voice/VoiceCommand;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 471
    .local v1, commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-interface {v3, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    .local v0, acceptingEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 474
    invoke-static {v1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newAdditionalCommandItem(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    .end local v0           #acceptingEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v1           #commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :cond_1
    return-void
.end method

.method public static getIncomingCallContextMenuItems(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newAnswerCallItem(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newIgnoreCallItem(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getMainMenuItems(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    .line 403
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    .line 405
    .local v2, settingsHelper:Lcom/google/glass/util/SettingsHelper;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 406
    .local v1, mainMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newGoogleItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newTakePhotoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newRecordVideoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newNavigationItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 417
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newVideoCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_1
    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 421
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    invoke-static {v1, p0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->addMirrorCommands(Ljava/util/List;Landroid/content/Context;)V

    .line 425
    :cond_2
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 426
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    .line 427
    .local v3, trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    invoke-static {v3}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    :cond_3
    return-object v1
.end method

.method public static getNotificationContextMenuItems(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "helper"
    .parameter "timelineItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/NotificationVoiceCommandHelper;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 439
    .local v1, supportedActions:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-static {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newReadAloudItem(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-static {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newReplyItem(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_1
    return-object v0
.end method

.method public static getShareContextMenuItems(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "timelineItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/home/voice/menu/ShareMenuItem;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/ShareMenuItem;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->TAG:Ljava/lang/String;

    const-string v1, "null command in getUserEventDataId!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, ""

    .line 398
    :goto_0
    return-object v0

    .line 383
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const-string v0, "2"

    goto :goto_0

    .line 385
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string v0, "3"

    goto :goto_0

    .line 387
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    const-string v0, "4"

    goto :goto_0

    .line 389
    :cond_3
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    const-string v0, "11"

    goto :goto_0

    .line 391
    :cond_4
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    const-string v0, "5"

    goto :goto_0

    .line 393
    :cond_5
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    const-string v0, "7"

    goto :goto_0

    .line 395
    :cond_6
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    const-string v0, "6"

    goto :goto_0

    .line 398
    :cond_7
    const-string v0, ""

    goto :goto_0
.end method

.method static logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 4
    .parameter "command"
    .parameter "spoken"
    .parameter "environment"

    .prologue
    .line 298
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, userEventDataId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    sget-object v1, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->TAG:Ljava/lang/String;

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

    .line 306
    :goto_0
    return-void

    .line 304
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

.method private static newAdditionalCommandItem(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 1
    .parameter "commandType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, acceptingEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    new-instance v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)V

    return-object v0
.end method

.method public static newAnswerCallItem(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 351
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$11;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_answer_call:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$11;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)V

    return-object v0
.end method

.method public static newCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 265
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$6;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$6;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$6;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newGoogleItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 155
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_google:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_google:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_search_small:I

    new-array v5, v8, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newIgnoreCallItem(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 365
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$12;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->REJECT_CALL:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_reject_call:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$12;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)V

    return-object v0
.end method

.method private static newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
    .locals 3
    .parameter "trigger"

    .prologue
    .line 486
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->newVoiceCommand(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 487
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    new-instance v1, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;-><init>(Lcom/google/glass/voice/VoiceCommand;[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)V

    return-object v1
.end method

.method public static newNavigationItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 219
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newReadAloudItem(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6
    .parameter "context"
    .parameter "helper"
    .parameter "timelineItem"

    .prologue
    .line 310
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$8;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_read_aloud:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/home/voice/menu/Requirement;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$8;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-object v0
.end method

.method public static newRecordVideoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6

    .prologue
    .line 200
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$3;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_record_video:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_record_video:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_video_small:I

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$3;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$3;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newReplyItem(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6
    .parameter "context"
    .parameter "helper"
    .parameter "timelineItem"

    .prologue
    .line 322
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_reply:I

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/home/voice/menu/Requirement;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-object v0
.end method

.method public static newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 249
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$5;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$5;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$5;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/ShareMenuItem;
    .locals 7
    .parameter "context"
    .parameter "timelineItem"

    .prologue
    const/4 v6, 0x1

    .line 333
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$10;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_share:I

    new-array v3, v6, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/glass/home/voice/menu/Requirements;->HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$10;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 344
    .local v0, item:Lcom/google/glass/home/voice/menu/ShareMenuItem;
    invoke-virtual {v0, v6}, Lcom/google/glass/home/voice/menu/ShareMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 345
    invoke-virtual {v0, v6}, Lcom/google/glass/home/voice/menu/ShareMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 346
    return-object v0
.end method

.method public static newTakePhotoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 6

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$2;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_take_photo:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_take_photo:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_camera_small:I

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$2;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$2;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newVideoCallItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 282
    new-instance v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$7;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/home/R$string;->voice_menu_item_video_call:I

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_video_call:I

    sget v4, Lcom/google/glass/home/R$drawable;->ic_video_call_small:I

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/glass/home/voice/menu/Requirements;->HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$7;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$7;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

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

    .line 131
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 138
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;

    .line 141
    .local v0, other:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v3, :cond_4

    .line 142
    iget-object v3, v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-eqz v3, :cond_5

    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_5
    iget v3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    iget v4, v0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public getContextIconId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->iconId:I

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->contextMenuStringId:I

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->contextMenuStringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, prime:I
    const/4 v1, 0x1

    .line 124
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->stringId:I

    add-int v1, v2, v3

    .line 126
    return v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceCommand;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "voiceCommand"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v0, p2, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 112
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainMenuCommandItem [command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
