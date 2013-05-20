.class public interface abstract Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;
.super Ljava/lang/Object;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachmentContent(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAttachmentContentCount()I
.end method

.method public abstract getAttachmentContentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProjectId()Ljava/lang/String;
.end method

.method public abstract getProjectIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
.end method

.method public abstract hasProjectId()Z
.end method

.method public abstract hasTimelineItem()Z
.end method

.method public abstract hasToken()Z
.end method

.method public abstract hasType()Z
.end method
