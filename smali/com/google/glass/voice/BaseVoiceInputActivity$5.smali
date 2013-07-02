.class Lcom/google/glass/voice/BaseVoiceInputActivity$5;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Lcom/google/glass/voice/network/SpeechLevelSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

.field final synthetic val$speechLevelSource:Lcom/google/glass/voice/network/ISpeechLevelSource;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->val$speechLevelSource:Lcom/google/glass/voice/network/ISpeechLevelSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->val$speechLevelSource:Lcom/google/glass/voice/network/ISpeechLevelSource;

    invoke-interface {v2}, Lcom/google/glass/voice/network/ISpeechLevelSource;->getSpeechLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to determine speech level"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
