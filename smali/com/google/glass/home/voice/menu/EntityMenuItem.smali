.class public abstract Lcom/google/glass/home/voice/menu/EntityMenuItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final entity:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 46
    return-void
.end method

.method varargs constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 1
    .parameter "entity"
    .parameter "requirements"

    .prologue
    .line 49
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 50
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asContactMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, contactEntities:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 329
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 330
    .local v0, contactEntity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v0           #contactEntity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v2
.end method

.method public static asShareTargetMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "command"
    .parameter "timelineItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, shareTargets:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 347
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    new-instance v3, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    invoke-direct {v3, v2, p2}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v1
.end method

.method private static hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "entity"

    .prologue
    .line 309
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method private static hasPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "entity"

    .prologue
    .line 292
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$1;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method public static newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;
    .locals 2
    .parameter "contactEntity"
    .parameter "command"

    .prologue
    .line 356
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->CALL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne p1, v0, :cond_0

    .line 357
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 365
    :goto_0
    return-object v0

    .line 358
    :cond_0
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne p1, v0, :cond_2

    .line 359
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->VIDEO_CALL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne p1, v0, :cond_3

    .line 365
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0

    .line 368
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected voice command triggered the contact list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "environment"
    .parameter "spoken"
    .parameter "messageType"
    .parameter "toId"
    .parameter "toName"

    .prologue
    const/4 v6, 0x0

    .line 217
    invoke-interface {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 218
    .local v0, context:Landroid/app/Activity;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2, p2, p3, p4}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 223
    .local v1, voiceMessageIntent:Landroid/content/Intent;
    sget-object v2, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    const-string v3, "Initiating send message"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", toId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-interface {p0, v6}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 227
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 230
    return-void

    .line 218
    .end local v1           #voiceMessageIntent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 100
    check-cast v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;

    .line 101
    .local v0, other:Lcom/google/glass/home/voice/menu/EntityMenuItem;
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v3, :cond_4

    .line 102
    iget-object v3, v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v3, :cond_0

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getEntity()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0x1f

    .line 84
    .local v0, prime:I
    const/4 v1, 0x1

    .line 85
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 86
    return v1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "voiceCommand"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, semanticTag:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    sget-object v2, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    const-string v3, "VoiceCommand with null semantic tag compared against EntityMenuItem! Stack trace included for investigation, but this is not a crash."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceCommand with null semantic tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityMenuItem [entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
