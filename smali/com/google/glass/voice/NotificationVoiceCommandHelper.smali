.class public Lcom/google/glass/voice/NotificationVoiceCommandHelper;
.super Ljava/lang/Object;
.source "NotificationVoiceCommandHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassVoiceActivity;

.field private final app:Lcom/google/glass/app/GlassApplication;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V
    .locals 1
    .parameter "activity"
    .parameter "timelineOptionsHelper"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 37
    iput-object p2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    .line 39
    invoke-virtual {p1}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 40
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 42
    return-void
.end method

.method private logVoiceCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter "command"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 58
    sget-object v4, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 60
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassApplication;->stopSpeaking()V

    .line 61
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v5, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 62
    const-string v4, "1"

    invoke-direct {p0, v4}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 95
    :goto_0
    return v3

    .line 64
    :cond_0
    sget-object v4, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v5, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 66
    const-string v4, "9"

    invoke-direct {p0, v4}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 74
    iget-object v3, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v3

    goto :goto_0

    .line 76
    :cond_2
    sget-object v4, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v4, :cond_6

    .line 77
    const-string v4, "10"

    invoke-direct {p0, v4}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 81
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemList()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 84
    .local v1, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v4, v5, :cond_3

    .line 85
    iget-object v3, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 86
    iget-object v3, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v3

    goto :goto_0

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v2           #menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 90
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    :cond_5
    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized voice command from screen off notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
