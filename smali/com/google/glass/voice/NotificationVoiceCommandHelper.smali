.class public Lcom/google/glass/voice/NotificationVoiceCommandHelper;
.super Ljava/lang/Object;
.source "NotificationVoiceCommandHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final app:Lcom/google/glass/app/GlassApplication;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V
    .locals 1
    .parameter "activity"
    .parameter "timelineOptionsHelper"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 31
    iput-object p2, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    .line 33
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 34
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 36
    return-void
.end method

.method private logVoiceCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "command"
    .parameter "item"

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->app:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->stopSpeaking()V

    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 56
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 58
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 60
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 61
    const-string v0, "9"

    invoke-direct {p0, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 65
    const-string v0, "10"

    invoke-direct {p0, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->logVoiceCommand(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->timelineOptionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized voice command from screen off notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method
