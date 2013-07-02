.class public Lcom/google/glass/timeline/AttachmentHelper;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment; = null

.field private static final PHOTOS_SERVICE_ID_PREFIX:Ljava/lang/String; = "ps:"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "attachment"

    .prologue
    .line 101
    invoke-static {p2}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;
    .locals 4
    .parameter "attachment"
    .parameter "cachedFilesManager"

    .prologue
    .line 238
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 240
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ps:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, attachments1:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .local p1, attachments2:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .local v3, mergedAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 277
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 278
    .local v0, attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 282
    .local v1, attachment2:Lcom/google/googlex/glass/common/proto/Attachment;
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    if-ne v1, v4, :cond_1

    .line 276
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 287
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v1           #attachment2:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 288
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 294
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v5, "Removed one instance of an empty attachment."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 289
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 296
    :cond_6
    return-object v3
.end method

.method public static shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 3
    .parameter "item"
    .parameter "attachment"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cloneAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 27
    .parameter "item"

    .prologue
    .line 164
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v23

    if-nez v23, :cond_0

    .line 166
    const/16 v23, 0x1

    .line 229
    :goto_0
    return v23

    .line 169
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v12

    .line 172
    .local v12, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    const/16 v18, 0x0

    .line 173
    .local v18, numToCopy:I
    const-wide/16 v6, 0x0

    .line 174
    .local v6, bytesRequired:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 175
    .local v3, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 176
    invoke-static {v3, v12}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 177
    .local v13, file:Ljava/io/File;
    if-eqz v13, :cond_1

    .line 178
    add-int/lit8 v18, v18, 0x1

    .line 179
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v23

    add-long v6, v6, v23

    goto :goto_1

    .line 184
    .end local v3           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v13           #file:Ljava/io/File;
    :cond_2
    new-instance v22, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 185
    .local v22, storageHelper:Lcom/google/glass/util/StorageHelper;
    const-wide/32 v23, 0x400000

    add-long v8, v6, v23

    .line 186
    .local v8, bytesToReserve:J
    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v4

    .line 187
    .local v4, bytesFree:J
    cmp-long v23, v4, v8

    if-gez v23, :cond_3

    .line 188
    sub-long v10, v8, v4

    .line 189
    .local v10, bytesToTrim:J
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Trying to trim "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes from CachedFilesManager"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v12, v10, v11}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v23

    if-nez v23, :cond_3

    .line 191
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Insufficient space to copy "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes of attachments for item "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Free bytes: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 194
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 199
    .end local v10           #bytesToTrim:J
    :cond_3
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Copying "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " attachments, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 202
    .local v20, startTime:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_7

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    .line 204
    .restart local v3       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 205
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Not copying photo service attachment "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 207
    :cond_4
    invoke-static {v3, v12}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 208
    .restart local v13       #file:Ljava/io/File;
    if-eqz v13, :cond_6

    .line 210
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 211
    .local v17, name:Ljava/lang/String;
    sget-object v23, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v13}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 212
    sget-object v23, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 213
    .local v19, pathToCopy:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clearId()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    goto :goto_3

    .line 218
    .end local v19           #pathToCopy:Ljava/lang/String;
    :cond_5
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to copy attachment "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " on "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    add-int/lit8 v15, v14, -0x1

    .end local v14           #i:I
    .local v15, i:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .end local v17           #name:Ljava/lang/String;
    :goto_4
    move v14, v15

    .end local v15           #i:I
    .restart local v14       #i:I
    goto/16 :goto_3

    .line 222
    :cond_6
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Could not find attachment "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " on "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    add-int/lit8 v15, v14, -0x1

    .end local v14           #i:I
    .restart local v15       #i:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_4

    .line 228
    .end local v3           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v13           #file:Ljava/io/File;
    .end local v15           #i:I
    .restart local v14       #i:I
    :cond_7
    sget-object v23, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Copied attachments in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method public getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B
    .locals 7
    .parameter "fileName"
    .parameter "type"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 318
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, filePath:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 346
    .end local v2           #filePath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 322
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 323
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    invoke-virtual {v0, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 325
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 331
    .local v1, content:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, p2, p1, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 339
    .end local v1           #content:Lcom/google/protobuf/ByteString;
    :cond_2
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v2           #filePath:Ljava/lang/String;
    .restart local v1       #content:Lcom/google/protobuf/ByteString;
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get attachment from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 10
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting attachment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from server."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v3

    .line 124
    .local v3, requestBuilder:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 125
    .local v6, windowService:Landroid/view/WindowManager;
    if-eqz v6, :cond_0

    .line 126
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 127
    .local v1, display:Landroid/view/Display;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 131
    .end local v1           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v2

    .line 134
    .local v2, request:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v7

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v7, v8, v2, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    .line 138
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_2

    .line 151
    :cond_1
    :goto_0
    return-object v0

    .line 144
    :cond_2
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    .line 145
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    sget-object v7, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 146
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 147
    .local v0, content:Lcom/google/protobuf/ByteString;
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully get attachment from server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method
