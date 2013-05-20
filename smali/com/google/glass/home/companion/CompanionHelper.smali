.class public Lcom/google/glass/home/companion/CompanionHelper;
.super Ljava/lang/Object;
.source "CompanionHelper.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/home/companion/CompanionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 39
    sget-object v3, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t append Glass signature to null text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local p1
    :goto_0
    return-object p1

    .line 44
    .restart local p1
    :cond_0
    sget v3, Lcom/google/glass/home/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, signature:Ljava/lang/String;
    sget v3, Lcom/google/glass/home/R$string;->timeline_sms_signature_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, signedText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    goto :goto_0
.end method

.method public static getItem(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 12
    .parameter "apiRequest"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->hasTimelineItem()Z

    move-result v9

    if-nez v9, :cond_1

    .line 139
    sget-object v9, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    const-string v10, "No timeline item to insert"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v6, 0x0

    .line 197
    :cond_0
    :goto_0
    return-object v6

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 144
    .local v6, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    .line 148
    .local v7, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getAttachmentContentCount()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 149
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 150
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 151
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 152
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, contentType:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/glass/companion/Proto$ApiRequest;->getAttachmentContent(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 155
    .local v3, content:Lcom/google/protobuf/ByteString;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 157
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    sget-object v8, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 167
    .local v8, type:Lcom/google/glass/util/CachedFilesManager$Type;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, cacheFileName:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v9

    new-instance v10, Lcom/google/glass/home/companion/CompanionHelper$2;

    invoke-direct {v10, v3}, Lcom/google/glass/home/companion/CompanionHelper$2;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v9, v8, v2, v10}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 181
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v9

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v10

    invoke-virtual {v10, v8, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 150
    .end local v2           #cacheFileName:Ljava/lang/String;
    .end local v8           #type:Lcom/google/glass/util/CachedFilesManager$Type;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 160
    :cond_2
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    sget-object v8, Lcom/google/glass/util/CachedFilesManager$Type;->VIDEO:Lcom/google/glass/util/CachedFilesManager$Type;

    .restart local v8       #type:Lcom/google/glass/util/CachedFilesManager$Type;
    goto :goto_2

    .line 164
    .end local v8           #type:Lcom/google/glass/util/CachedFilesManager$Type;
    :cond_3
    sget-object v9, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip attachment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Can\'t handle content type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    :cond_4
    sget-object v9, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip attachment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " since the content is null or empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 189
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v3           #content:Lcom/google/protobuf/ByteString;
    .end local v4           #contentType:Ljava/lang/String;
    .end local v5           #i:I
    :cond_5
    sget-object v9, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip all attachments due to inconsistent attachment number: the number of attachments is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " while the number of attachment content is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getAttachmentContentCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 195
    :cond_6
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static sendApiResponse(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;)Z
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "userAction"

    .prologue
    .line 120
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    .line 121
    .local v0, apiResponseBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    if-eqz p2, :cond_0

    .line 122
    sget-object v1, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setType(Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 123
    invoke-virtual {v0, p2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 125
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 126
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/HomeApplication;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    return v1
.end method

.method public static sendTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/google/glass/home/companion/CompanionHelper;->appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 107
    .local v0, itemToSend:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/HomeApplication;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    return v1
.end method

.method public static stripGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 59
    sget-object v3, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t strip Glass signature from null text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 63
    .restart local p1
    :cond_1
    sget v3, Lcom/google/glass/home/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, signature:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, strippedText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Z)V
    .locals 4
    .parameter "context"
    .parameter "itemId"
    .parameter "syncStatus"
    .parameter "async"

    .prologue
    .line 80
    sget-object v1, Lcom/google/glass/home/companion/CompanionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating sync status of item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/google/glass/home/companion/CompanionHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/home/companion/CompanionHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)V

    .line 94
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    if-eqz p3, :cond_0

    .line 95
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    goto :goto_0
.end method
