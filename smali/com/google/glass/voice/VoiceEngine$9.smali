.class Lcom/google/glass/voice/VoiceEngine$9;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->overrideControllerForTesting(Lcom/google/glass/voice/network/RecognizerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$rc:Lcom/google/glass/voice/network/RecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$9;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$9;->val$rc:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$9;->val$rc:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$802(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/RecognizerController;

    .line 396
    return-void
.end method
