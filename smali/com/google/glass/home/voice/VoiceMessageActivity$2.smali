.class Lcom/google/glass/home/voice/VoiceMessageActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "VoiceMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMessageActivity;->confirmSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

.field final synthetic val$messageToSend:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->val$messageToSend:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finish()V

    .line 287
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$2;->val$messageToSend:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->onMessageCommitted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$100(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;)V

    .line 292
    return-void
.end method
