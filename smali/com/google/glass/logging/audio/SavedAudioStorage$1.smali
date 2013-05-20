.class Lcom/google/glass/logging/audio/SavedAudioStorage$1;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabledLabs:Ljava/util/List;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$sampleRate:J

.field final synthetic val$sensoryResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iput-object p2, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sensoryResults:Ljava/util/List;

    iput-wide p5, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sampleRate:J

    iput-object p7, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$enabledLabs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sensoryResults:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sampleRate:J

    iget-object v6, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$enabledLabs:Ljava/util/List;

    #calls: Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    invoke-static/range {v0 .. v6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->access$000(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v7

    .line 192
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to store audio"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
