.class Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;
.super Landroid/os/Handler;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceAnnotationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceAnnotationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    #calls: Lcom/google/glass/home/voice/VoiceAnnotationActivity;->confirmAnnotation()V
    invoke-static {v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->access$000(Lcom/google/glass/home/voice/VoiceAnnotationActivity;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
