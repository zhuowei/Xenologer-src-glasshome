.class public interface abstract Lcom/google/googlex/glass/common/proto/SubscriptionOrBuilder;
.super Ljava/lang/Object;
.source "SubscriptionOrBuilder.java"

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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getModifiedTime()J
.end method

.method public abstract getNotification()Lcom/google/googlex/glass/common/proto/Notification;
.end method

.method public abstract getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;
.end method

.method public abstract getOperation(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
.end method

.method public abstract getOperationCount()I
.end method

.method public abstract getOperationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubscriber()Ljava/lang/String;
.end method

.method public abstract getSubscriberBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract hasId()Z
.end method

.method public abstract hasModifiedTime()Z
.end method

.method public abstract hasNotification()Z
.end method

.method public abstract hasSubscriber()Z
.end method

.method public abstract hasUserToken()Z
.end method

.method public abstract hasVerifyToken()Z
.end method
