.class Lcom/google/glass/input/InputDetector$1;
.super Ljava/lang/Object;
.source "InputDetector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/InputDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/InputDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 110
    invoke-static {}, Lcom/google/glass/input/InputDetector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->releaseVoiceServiceBinder()V
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$100(Lcom/google/glass/input/InputDetector;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    check-cast p2, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .end local p2
    #setter for: Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v0, p2}, Lcom/google/glass/input/InputDetector;->access$202(Lcom/google/glass/input/InputDetector;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .line 113
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$200(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v1}, Lcom/google/glass/input/InputDetector;->access$300(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$300(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceServiceConnected()V

    .line 115
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 119
    invoke-static {}, Lcom/google/glass/input/InputDetector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->releaseVoiceServiceBinder()V
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$100(Lcom/google/glass/input/InputDetector;)V

    .line 121
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$300(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceServiceDisconnected()V

    .line 122
    return-void
.end method
