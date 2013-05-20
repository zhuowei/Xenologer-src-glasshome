.class Lcom/google/glass/input/InputDetector$2;
.super Landroid/os/Handler;
.source "InputDetector.java"


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
    .line 129
    iput-object p1, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->dispatchVoiceServiceConnected()V
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$400(Lcom/google/glass/input/InputDetector;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->dispatchVoiceServiceDisconnected()V
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$500(Lcom/google/glass/input/InputDetector;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    #calls: Lcom/google/glass/input/InputDetector;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    invoke-static {v1, v0}, Lcom/google/glass/input/InputDetector;->access$600(Lcom/google/glass/input/InputDetector;Lcom/google/glass/voice/VoiceCommand;)Z

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/input/InputDetector;->dispatchAudioData([BII)V

    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/input/InputDetector;->dispatchResampledAudioData([BII)V

    goto :goto_0

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$2;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->dispatchVoiceAmplitude()V
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$700(Lcom/google/glass/input/InputDetector;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
