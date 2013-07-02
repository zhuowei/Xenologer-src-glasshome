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
    .line 152
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private triggerReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 112
    const-string v2, "Cannot trigger read aloud on null item"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v3, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 115
    const-string v2, "9"

    invoke-direct {p0, v2}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 123
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method private triggerReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 131
    const-string v1, "Cannot trigger reply on null item"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->stopSpeaking()V

    .line 134
    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassVoiceActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 135
    const-string v1, "10"

    invoke-direct {p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 144
    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 147
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "command"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 55
    const-string v1, "Cannot trigger voice command on null item"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p2, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->triggerOkGlass(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 62
    :cond_0
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-direct {p0, p2}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->triggerReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 64
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-direct {p0, p2}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->triggerReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized voice command from screen off notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public triggerOkGlass(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
    .locals 5
    .parameter "item"
    .parameter "fromScreenOff"

    .prologue
    const/4 v4, 0x1

    .line 82
    const-string v2, "Cannot trigger ok glass on null item"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->stopSpeaking()V

    .line 85
    if-nez p2, :cond_1

    .line 86
    const-string v2, "12"

    invoke-direct {p0, v2}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 108
    .end local v1           #supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    :goto_0
    return v4

    .line 98
    .restart local v1       #supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 102
    .end local v1           #supportedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v3, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassVoiceActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.VOICE_CONTEXT_MENU"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, contextMenu:Landroid/content/Intent;
    const-string v2, "voice_config"

    sget-object v3, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v2, "timeline_item"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassVoiceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
