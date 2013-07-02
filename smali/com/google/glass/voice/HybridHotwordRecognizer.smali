.class public Lcom/google/glass/voice/HybridHotwordRecognizer;
.super Ljava/lang/Object;
.source "HybridHotwordRecognizer.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# instance fields
.field private final recognizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/glass/voice/HotwordRecognizer;)V
    .locals 1
    .parameter "recognizers"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 47
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V

    goto :goto_0

    .line 49
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 40
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    goto :goto_0

    .line 42
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 54
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    goto :goto_0

    .line 56
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "str"

    .prologue
    .line 60
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 4
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    .line 27
    iget-object v3, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 28
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1, p1, p2, p3}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v2

    .line 29
    .local v2, result:Lcom/google/glass/voice/HotwordResult;
    if-eqz v2, :cond_0

    .line 34
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v2           #result:Lcom/google/glass/voice/HotwordResult;
    :goto_1
    return-object v2

    .line 32
    .restart local v1       #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v2       #result:Lcom/google/glass/voice/HotwordResult;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 34
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v2           #result:Lcom/google/glass/voice/HotwordResult;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
