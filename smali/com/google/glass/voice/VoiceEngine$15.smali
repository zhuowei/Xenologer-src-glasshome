.class Lcom/google/glass/voice/VoiceEngine$15;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$15;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$15;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->pauseReading()V

    .line 783
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$15;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #calls: Lcom/google/glass/voice/VoiceEngine;->blockingSetConfigToTarget()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1300(Lcom/google/glass/voice/VoiceEngine;)V

    .line 784
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$15;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->resumeReading()V

    .line 785
    return-void
.end method
