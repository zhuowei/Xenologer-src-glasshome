.class Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;
.super Lcom/google/glass/home/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendSmsWithEmailFallbackItem"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 4
    .parameter "entity"

    .prologue
    const/4 v3, 0x1

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;

    invoke-direct {v1, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 184
    invoke-virtual {p0, v3}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 185
    return-void
.end method


# virtual methods
.method protected onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 7
    .parameter "environment"
    .parameter "spoken"

    .prologue
    const/4 v4, 0x1

    .line 192
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v6, v4

    .line 196
    .local v6, fallbackToEmail:Z
    :goto_0
    if-eqz v6, :cond_2

    .line 198
    .local v4, messageType:I
    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, toId:Ljava/lang/String;
    :goto_2
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 201
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;-><init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 207
    return-void

    .line 192
    .end local v4           #messageType:I
    .end local v5           #toId:Ljava/lang/String;
    .end local v6           #fallbackToEmail:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 196
    .restart local v6       #fallbackToEmail:Z
    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    .line 198
    .restart local v4       #messageType:I
    :cond_3
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
