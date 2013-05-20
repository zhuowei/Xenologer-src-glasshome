.class Lcom/google/glass/voice/VoiceService$8;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->invalidateGrammars(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$8;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$8;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$8;->this$0:Lcom/google/glass/voice/VoiceService;

    #calls: Lcom/google/glass/voice/VoiceService;->compileDynamicGrammars()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$1500(Lcom/google/glass/voice/VoiceService;)V

    .line 565
    return-void
.end method
