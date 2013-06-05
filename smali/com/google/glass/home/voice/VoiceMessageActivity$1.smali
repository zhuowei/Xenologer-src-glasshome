.class Lcom/google/glass/home/voice/VoiceMessageActivity$1;
.super Landroid/os/Handler;
.source "VoiceMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->confirmSend()V
    invoke-static {v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$000(Lcom/google/glass/home/voice/VoiceMessageActivity;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
