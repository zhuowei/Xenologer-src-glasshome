.class public interface abstract Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;
.super Ljava/lang/Object;
.source "UpdateOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;
.end method

.method public abstract getMutationsOrBuilder()Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;
.end method

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

.method public abstract hasMutations()Z
.end method

.method public abstract hasTimelineItemId()Z
.end method
