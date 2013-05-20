.class public interface abstract Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MutationsOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachmentDeletions(I)Ljava/lang/String;
.end method

.method public abstract getAttachmentDeletionsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAttachmentDeletionsCount()I
.end method

.method public abstract getAttachmentDeletionsList()Ljava/util/List;
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

.method public abstract getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getItemFieldDeletions(I)I
.end method

.method public abstract getItemFieldDeletionsCount()I
.end method

.method public abstract getItemFieldDeletionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
.end method

.method public abstract hasItem()Z
.end method
