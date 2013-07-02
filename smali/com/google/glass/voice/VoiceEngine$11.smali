.class Lcom/google/glass/voice/VoiceEngine$11;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->initializeAsynchronously()V
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
    .line 426
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #calls: Lcom/google/glass/voice/VoiceEngine;->initialize()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$900(Lcom/google/glass/voice/VoiceEngine;)V

    .line 430
    return-void
.end method
