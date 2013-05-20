.class public interface abstract Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;
.super Ljava/lang/Object;
.source "DeleteOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getTimelineItemId()Ljava/lang/String;
.end method

.method public abstract getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
.end method

.method public abstract getUserActionCount()I
.end method

.method public abstract getUserActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
.end method

.method public abstract getUserActionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasTimelineItemId()Z
.end method
