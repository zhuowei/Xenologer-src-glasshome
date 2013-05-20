.class public interface abstract Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;
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
    name = "TimelineItemResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasSyncStatus()Z
.end method
