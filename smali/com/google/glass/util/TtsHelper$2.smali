.class Lcom/google/glass/util/TtsHelper$2;
.super Ljava/lang/Object;
.source "TtsHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 142
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextToSpeech initialization status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z
    invoke-static {v0, v1}, Lcom/google/glass/util/TtsHelper;->access$602(Lcom/google/glass/util/TtsHelper;Z)Z

    .line 145
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$700(Lcom/google/glass/util/TtsHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to initialize TextToSpeech."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
