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
    .line 149
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$500(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    invoke-static {v1, v0}, Lcom/google/glass/input/VoiceInputHelper;->access$700(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceCommand;)Z

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchAudioData([BII)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;[BII)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchResampledAudioData([BII)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;->access$900(Lcom/google/glass/input/VoiceInputHelper;[BII)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceAmplitude()V
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1000(Lcom/google/glass/input/VoiceInputHelper;)V

    goto :goto_0

    .line 172
    :pswitch_6
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$2;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    #calls: Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    invoke-static {v1, v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1100(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
