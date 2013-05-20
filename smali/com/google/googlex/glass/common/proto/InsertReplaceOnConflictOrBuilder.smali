.class public interface abstract Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;
.super Ljava/lang/Object;
.source "InsertReplaceOnConflictOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getTimelineItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
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

.method public abstract hasTimelineItem()Z
.end method
