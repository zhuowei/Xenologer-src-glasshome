.class Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;
.super Ljava/lang/Object;
.source "GlasswareVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;->this$1:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;->this$1:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;

    iget-object v0, v0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;->this$1:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;

    iget-object v1, v1, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    #getter for: Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recipient:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v1}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->access$100(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;->this$1:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;

    iget-object v2, v2, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->val$currentRecognitionResult:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->access$200(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V

    .line 169
    return-void
.end method
