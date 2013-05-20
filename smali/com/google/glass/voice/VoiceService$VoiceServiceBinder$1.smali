.class Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$1;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->updateConfigs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$1;->this$1:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$1;->this$1:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #calls: Lcom/google/glass/voice/VoiceService;->updateConfigs()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$600(Lcom/google/glass/voice/VoiceService;)V

    .line 294
    return-void
.end method
