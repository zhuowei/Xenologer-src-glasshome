.class Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/Requirement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCompanionConnected(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 1
    .parameter "environment"

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 3
    .parameter "environment"

    .prologue
    .line 172
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/home/R$string;->error_edit_contacts:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 175
    .local v0, error:Lcom/google/glass/app/GlassError;
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;->isCompanionConnected(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget v1, Lcom/google/glass/home/R$string;->error_no_phone_or_email:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    sget v1, Lcom/google/glass/home/R$string;->error_no_email:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    goto :goto_0
.end method

.method public isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 5
    .parameter "environment"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 160
    .local v0, hasEmail:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 162
    .local v1, hasPhoneNumber:Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$1;->isCompanionConnected(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    return v2

    .end local v0           #hasEmail:Z
    .end local v1           #hasPhoneNumber:Z
    :cond_2
    move v0, v3

    .line 159
    goto :goto_0

    .restart local v0       #hasEmail:Z
    :cond_3
    move v1, v3

    .line 160
    goto :goto_1

    .restart local v1       #hasPhoneNumber:Z
    :cond_4
    move v2, v3

    .line 162
    goto :goto_2
.end method
