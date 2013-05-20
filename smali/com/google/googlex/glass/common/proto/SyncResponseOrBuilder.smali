.class public interface abstract Lcom/google/googlex/glass/common/proto/SyncResponseOrBuilder;
.super Ljava/lang/Object;
.source "SyncResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getDeleteFailedItemIds(I)Ljava/lang/String;
.end method

.method public abstract getDeleteFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeleteFailedItemIdsCount()I
.end method

.method public abstract getDeleteFailedItemIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInsertFailedItemIds(I)Ljava/lang/String;
.end method

.method public abstract getInsertFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInsertFailedItemIdsCount()I
.end method

.method public abstract getInsertFailedItemIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
.end method

.method public abstract getSelectContinuationToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSelectMaxWriteTimestamp()J
.end method

.method public abstract getSelectStartTime()J
.end method

.method public abstract getSelectedItems(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getSelectedItemsCount()I
.end method

.method public abstract getSelectedItemsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedItemsOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
.end method

.method public abstract getSelectedItemsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncContinuationToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSyncEndTime()J
.end method

.method public abstract getSyncStartTime()J
.end method

.method public abstract getUpdateFailedItemIds(I)Ljava/lang/String;
.end method

.method public abstract getUpdateFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUpdateFailedItemIdsCount()I
.end method

.method public abstract getUpdateFailedItemIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasResponseCode()Z
.end method

.method public abstract hasSelectContinuationToken()Z
.end method

.method public abstract hasSelectMaxWriteTimestamp()Z
.end method

.method public abstract hasSelectStartTime()Z
.end method

.method public abstract hasSyncContinuationToken()Z
.end method

.method public abstract hasSyncEndTime()Z
.end method

.method public abstract hasSyncStartTime()Z
.end method
