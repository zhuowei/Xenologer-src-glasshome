.class Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceMainMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceMainMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMainMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    #calls: Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->access$100(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/connectivityReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->isConnected()Z

    move-result v0

    .line 59
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    #getter for: Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->access$000(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Lcom/google/glass/home/voice/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/VoiceMenu;->onConnectivityChanged(Z)V

    .line 60
    return-void
.end method
