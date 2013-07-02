.class Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;
.super Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
.source "GlasswareMessagesLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/GlasswareMessagesLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 4
    .parameter "data"

    .prologue
    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to parse message proto"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    goto :goto_0
.end method

.method bridge synthetic decode([B)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;->decode([B)Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method
