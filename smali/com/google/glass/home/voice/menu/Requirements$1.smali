.class final Lcom/google/glass/home/voice/menu/Requirements$1;
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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 2
    .parameter "environment"

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/home/R$string;->voice_network_connectivity:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->error_tap_connection_settings:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 1
    .parameter "environment"

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->isConnected()Z

    move-result v0

    return v0
.end method
