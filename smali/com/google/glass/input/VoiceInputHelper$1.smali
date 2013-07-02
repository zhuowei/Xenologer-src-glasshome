.class Lcom/google/glass/input/VoiceInputHelper$1;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "binder"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 104
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Voice service connected"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper;->access$100(Lcom/google/glass/input/VoiceInputHelper;)V

    .line 107
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v2

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    invoke-static {v1, v2}, Lcom/google/glass/input/VoiceInputHelper;->access$202(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/IVoiceService;)Lcom/google/glass/voice/IVoiceService;

    .line 108
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBound:Z
    invoke-static {v1, v5}, Lcom/google/glass/input/VoiceInputHelper;->access$302(Lcom/google/glass/input/VoiceInputHelper;Z)Z

    .line 111
    :try_start_0
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attaching listener to VoiceService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    invoke-static {v3}, Lcom/google/glass/input/VoiceInputHelper;->access$400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper;->access$200(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    invoke-static {v2}, Lcom/google/glass/input/VoiceInputHelper;->access$400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper;->access$400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->onVoiceServiceConnected()V

    .line 121
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to attach listener to VoiceService"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v1}, Lcom/google/glass/input/VoiceInputHelper;->unbindVoiceService()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 125
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 127
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice service disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$100(Lcom/google/glass/input/VoiceInputHelper;)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$1;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->onVoiceServiceDisconnected()V

    .line 130
    return-void
.end method
