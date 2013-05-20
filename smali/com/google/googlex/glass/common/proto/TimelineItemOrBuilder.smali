.class public interface abstract Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
.super Ljava/lang/Object;
.source "TimelineItemOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;
.end method

.method public abstract getAttachmentCount()I
.end method

.method public abstract getAttachmentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttachmentOrBuilder(I)Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;
.end method

.method public abstract getAttachmentOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBundleId()Ljava/lang/String;
.end method

.method public abstract getBundleIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCanonicalUrl()Ljava/lang/String;
.end method

.method public abstract getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
.end method

.method public abstract getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
.end method

.method public abstract getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
.end method

.method public abstract getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
.end method

.method public abstract getCreationTime()J
.end method

.method public abstract getCreator()Lcom/google/googlex/glass/common/proto/Entity;
.end method

.method public abstract getCreatorOrBuilder()Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
.end method

.method public abstract getDisplayTime()J
.end method

.method public abstract getHtml()Ljava/lang/String;
.end method

.method public abstract getHtmlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHtmlPage(I)Ljava/lang/String;
.end method

.method public abstract getHtmlPageBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHtmlPageCount()I
.end method

.method public abstract getHtmlPageList()Ljava/util/List;
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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInReplyTo()Ljava/lang/String;
.end method

.method public abstract getInReplyToBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIsBundleCover()Z
.end method

.method public abstract getIsDeleted()Z
.end method

.method public abstract getIsPinned()Z
.end method

.method public abstract getLocation()Lcom/google/googlex/glass/common/proto/Location;
.end method

.method public abstract getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
.end method

.method public abstract getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;
.end method

.method public abstract getMenuItemCount()I
.end method

.method public abstract getMenuItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
.end method

.method public abstract getMenuItemOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModifiedTime()J
.end method

.method public abstract getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;
.end method

.method public abstract getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;
.end method

.method public abstract getPendingAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPendingActionCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPendingActionList()Ljava/util/List;
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

.method public abstract getPendingActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPendingActionOrBuilderList()Ljava/util/List;
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

.method public abstract getPinScore()I
.end method

.method public abstract getPinTime()J
.end method

.method public abstract getSendToPhoneUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;
.end method

.method public abstract getShareTargetCount()I
.end method

.method public abstract getShareTargetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShareTargetOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
.end method

.method public abstract getShareTargetOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSourceItemId()Ljava/lang/String;
.end method

.method public abstract getSourceItemIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
.end method

.method public abstract getSpeakableText()Ljava/lang/String;
.end method

.method public abstract getSpeakableTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasBundleId()Z
.end method

.method public abstract hasCanonicalUrl()Z
.end method

.method public abstract hasCloudSyncProtocol()Z
.end method

.method public abstract hasCloudSyncStatus()Z
.end method

.method public abstract hasCompanionSyncProtocol()Z
.end method

.method public abstract hasCompanionSyncStatus()Z
.end method

.method public abstract hasCreationTime()Z
.end method

.method public abstract hasCreator()Z
.end method

.method public abstract hasDisplayTime()Z
.end method

.method public abstract hasHtml()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasInReplyTo()Z
.end method

.method public abstract hasIsBundleCover()Z
.end method

.method public abstract hasIsDeleted()Z
.end method

.method public abstract hasIsPinned()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasModifiedTime()Z
.end method

.method public abstract hasNotification()Z
.end method

.method public abstract hasPinScore()Z
.end method

.method public abstract hasPinTime()Z
.end method

.method public abstract hasSendToPhoneUrl()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasSmsType()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasSourceItemId()Z
.end method

.method public abstract hasSourceType()Z
.end method

.method public abstract hasSpeakableText()Z
.end method

.method public abstract hasText()Z
.end method

.method public abstract hasTitle()Z
.end method
