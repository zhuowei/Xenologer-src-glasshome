.class final Lcom/google/glass/home/voice/menu/EntityMenuItem$2;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/Requirement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 2
    .parameter "environment"

    .prologue
    .line 317
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/home/R$string;->error_no_email:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->error_edit_contacts:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 1
    .parameter "environment"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
