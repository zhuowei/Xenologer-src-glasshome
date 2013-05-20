.class public Lcom/google/glass/share/ShareActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/glass/share/ShareHorizontalScrollView$Listener;


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EXTRA_CONFIRMED_KEY:Ljava/lang/String; = "confirmed_string"

.field public static final EXTRA_DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field public static final EXTRA_DISABLE_VOICE_INPUT_KEY:Ljava/lang/String; = "disable_voice"

.field public static final EXTRA_PROGRESS_KEY:Ljava/lang/String; = "progress_string"

.field public static final EXTRA_RETURNED_SHARE_TARGET:Ljava/lang/String; = "share_target"

.field public static final EXTRA_SHARE_TARGETS:Ljava/lang/String; = "valid_share_targets"

.field public static final EXTRA_UPDATE_TIMELINE_SHARE:Ljava/lang/String; = "update_timeline_share"

.field private static final INITIAL_RETRY_DELAY_MS:I = 0x3e8

.field private static final MAX_RETRIES_FOR_ITEM_TO_BE_READY:I = 0x5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private iconPath:Ljava/lang/String;

.field private shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

.field private showMenuAnimation:Landroid/view/animation/Animation;

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/share/ShareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finishAndTurnScreenOffIfRequested()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/share/ShareActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v0

    return v0
.end method

.method private static cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 26
    .parameter "context"
    .parameter "item"

    .prologue
    .line 481
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v22

    if-nez v22, :cond_0

    .line 483
    const/16 v22, 0x1

    .line 546
    :goto_0
    return v22

    .line 486
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v12

    .line 489
    .local v12, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    const-wide/16 v6, 0x0

    .line 490
    .local v6, bytesRequired:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 491
    .local v3, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3, v12}, Lcom/google/glass/share/ShareActivity;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 492
    .local v13, file:Ljava/io/File;
    if-eqz v13, :cond_1

    .line 493
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v6, v6, v22

    goto :goto_1

    .line 498
    .end local v3           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v13           #file:Ljava/io/File;
    :cond_2
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_3

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 500
    const/16 v22, 0x1

    goto :goto_0

    .line 503
    :cond_3
    new-instance v21, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 504
    .local v21, storageHelper:Lcom/google/glass/util/StorageHelper;
    const-wide/32 v22, 0x400000

    add-long v8, v6, v22

    .line 505
    .local v8, bytesToReserve:J
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v4

    .line 506
    .local v4, bytesFree:J
    cmp-long v22, v4, v8

    if-gez v22, :cond_4

    .line 507
    sub-long v10, v8, v4

    .line 508
    .local v10, bytesToTrim:J
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Trying to trim "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes from CachedFilesManager"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v12, v10, v11}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v22

    if-nez v22, :cond_4

    .line 510
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Insufficient space to copy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes of attachments for item "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Free bytes: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 513
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 524
    .end local v10           #bytesToTrim:J
    :cond_4
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Copying "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes of attachments for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 526
    .local v19, startTime:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    .line 528
    .restart local v3       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3, v12}, Lcom/google/glass/share/ShareActivity;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 529
    .restart local v13       #file:Ljava/io/File;
    if-eqz v13, :cond_6

    .line 531
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 532
    .local v17, name:Ljava/lang/String;
    sget-object v22, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v13}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 533
    sget-object v22, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 534
    .local v18, pathToCopy:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 526
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #pathToCopy:Ljava/lang/String;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 536
    .restart local v17       #name:Ljava/lang/String;
    :cond_5
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to copy attachment "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
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
    goto :goto_3

    .line 540
    :cond_6
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Could not find attachment "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    add-int/lit8 v15, v14, -0x1

    .end local v14           #i:I
    .restart local v15       #i:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_4

    .line 545
    .end local v3           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v13           #file:Ljava/io/File;
    .end local v15           #i:I
    .restart local v14       #i:I
    :cond_7
    sget-object v22, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Copied attachments in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v24, v24, v19

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method public static cloneAttachmentsInCacheForTest(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 1
    .parameter "context"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 592
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v0

    return v0
.end method

.method private static copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 1
    .parameter "source"
    .parameter "target"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 464
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 468
    return-void
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;
    .locals 4
    .parameter "attachment"
    .parameter "cachedFilesManager"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 3
    .parameter "context"
    .parameter "timelineItem"

    .prologue
    .line 577
    const-string v0, "0"

    .line 578
    .local v0, sharedType:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const-string v0, "1"

    .line 585
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 587
    return-void

    .line 581
    :cond_1
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v0, "2"

    goto :goto_0
.end method

.method private shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V
    .locals 6
    .parameter "shareTarget"
    .parameter "itemIdToShare"
    .parameter "attemptNumber"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 384
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/google/glass/share/ShareActivity$2;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/share/ShareActivity$2;-><init>(Lcom/google/glass/share/ShareActivity;Landroid/content/Context;Landroid/net/Uri;ILcom/google/googlex/glass/common/proto/Entity;)V

    .line 442
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 443
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/share/ShareHorizontalScrollView;->onConfirm(Lcom/google/glass/app/GlassActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 152
    sget v2, Lcom/google/glass/common/R$anim;->show_contextual:I

    invoke-static {p0, v2}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    .line 155
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    .line 162
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 163
    .local v1, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v1           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    sget v2, Lcom/google/glass/common/R$id;->share_container:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    sget v2, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->showMessage(I)V

    .line 185
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load share targets!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_1
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "valid_share_targets"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "valid_share_targets"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 173
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_3

    .line 174
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/entity/EntityHelper;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 176
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 187
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_4
    sget v2, Lcom/google/glass/common/R$id;->share_targets:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/share/ShareHorizontalScrollView;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    .line 188
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2, p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->init(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V

    goto :goto_1
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finish()V

    .line 313
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/share/ShareHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareActivity;->setIntent(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->deactivate()V

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 271
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/share/ShareHorizontalScrollView;->onPrepareSwipe(IFFFFII)Z

    .line 282
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/share/ShareHorizontalScrollView;->activate()V

    .line 233
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/glass/share/ShareHorizontalScrollView;->setShareTargets(Ljava/util/List;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOptionMenu has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " share targets to show."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget v2, Lcom/google/glass/common/R$id;->share_menu_slider:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 237
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 238
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 244
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_0

    .line 245
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->iconPath:Ljava/lang/String;

    .line 257
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {v2, v3}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 259
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 260
    return-void
.end method

.method public onShareTargetConfirm(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 5
    .parameter "shareTarget"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    const/4 v2, 0x0

    .line 370
    :goto_0
    return v2

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "progress_string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, progressMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirmed_string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, confirmedMessage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    sget v2, Lcom/google/glass/common/R$string;->sharing_menu_share_confirming:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    sget v2, Lcom/google/glass/common/R$string;->sharing_menu_share_confirmed:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_3
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/share/ShareActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/share/ShareActivity$1;-><init>(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 370
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return v0

    .line 292
    :cond_0
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/share/ShareHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 211
    sget v0, Lcom/google/glass/common/R$layout;->share_activity:I

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disable_camera"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disable_voice"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
