.class Lcom/google/glass/voice/VoiceService$7;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$7;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$7;->this$0:Lcom/google/glass/voice/VoiceService;

    #calls: Lcom/google/glass/voice/VoiceService;->initialize()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$1400(Lcom/google/glass/voice/VoiceService;)V

    .line 460
    return-void
.end method
