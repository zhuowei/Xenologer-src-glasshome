.class public interface abstract Lcom/google/glass/companion/Proto$ApiResponseOrBuilder;
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
    name = "ApiResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
.end method

.method public abstract getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;
.end method

.method public abstract hasTimelineItem()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasUserAction()Z
.end method
