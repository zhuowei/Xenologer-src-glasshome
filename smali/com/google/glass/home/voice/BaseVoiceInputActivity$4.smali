.class Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;
    invoke-static {v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$1800(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/search/MicrophoneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/search/MicrophoneView;->showListening()V

    .line 499
    return-void
.end method
