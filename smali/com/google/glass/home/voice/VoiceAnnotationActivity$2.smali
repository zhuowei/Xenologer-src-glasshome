.class Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceAnnotationActivity;->confirmAnnotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

.field final synthetic val$textToReturn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceAnnotationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->val$textToReturn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->finish()V

    .line 169
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/home/voice/VoiceAnnotationActivity;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;->val$textToReturn:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->access$100(Lcom/google/glass/home/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    .line 174
    return-void
.end method
