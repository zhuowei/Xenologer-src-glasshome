.class public interface abstract Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;
.super Ljava/lang/Object;
.source "NotificationOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getCallbackUrl()Ljava/lang/String;
.end method

.method public abstract getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCollection()Ljava/lang/String;
.end method

.method public abstract getCollectionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getItemId()Ljava/lang/String;
.end method

.method public abstract getItemIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMenuAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMenuActionCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMenuActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMenuActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMenuActionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
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

.method public abstract getUserId()J
.end method

.method public abstract getUserToken()Ljava/lang/String;
.end method

.method public abstract getUserTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVerifyToken()Ljava/lang/String;
.end method

.method public abstract getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasCallbackUrl()Z
.end method

.method public abstract hasCollection()Z
.end method

.method public abstract hasItemId()Z
.end method

.method public abstract hasOperation()Z
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasUserId()Z
.end method

.method public abstract hasUserToken()Z
.end method

.method public abstract hasVerifyToken()Z
.end method
