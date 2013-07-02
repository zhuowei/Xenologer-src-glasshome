.class Lcom/google/glass/voice/VoiceEngine$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$300(Lcom/google/glass/voice/VoiceEngine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method
