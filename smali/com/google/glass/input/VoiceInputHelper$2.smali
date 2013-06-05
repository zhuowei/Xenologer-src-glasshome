.class Lcom/google/glass/input/VoiceInputHelper$2;
.super Landroid/os/Handler;
.source "VoiceInputHelper.java"


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
    .line 82
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$400(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$500(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    invoke-static {v1, v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceCommand;)Z

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;->dispatchAudioData([BII)V

    goto :goto_0

    .line 99
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;->dispatchResampledAudioData([BII)V

    goto :goto_0

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceAmplitude()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$700(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 85
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
