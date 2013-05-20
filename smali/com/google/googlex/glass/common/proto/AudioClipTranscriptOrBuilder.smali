.class public interface abstract Lcom/google/googlex/glass/common/proto/AudioClipTranscriptOrBuilder;
.super Ljava/lang/Object;
.source "AudioClipTranscriptOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getToken(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
.end method

.method public abstract getTokenCount()I
.end method

.method public abstract getTokenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTokenOrBuilder(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;
.end method

.method public abstract getTokenOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;",
            ">;"
        }
    .end annotation
.end method
