.class Lcom/google/glass/voice/VoiceEngine$12;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->invalidateGrammars(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$12;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 532
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$12;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #calls: Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1000(Lcom/google/glass/voice/VoiceEngine;)V

    .line 534
    return-void
.end method
