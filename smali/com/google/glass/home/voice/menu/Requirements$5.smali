.class final Lcom/google/glass/home/voice/menu/Requirements$5;
.super Ljava/lang/Object;
.source "Requirements.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/Requirement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/Requirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 3
    .parameter "environment"

    .prologue
    const/4 v2, 0x1

    .line 89
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/home/R$string;->error_phone_in_use:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 1
    .parameter "environment"

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
