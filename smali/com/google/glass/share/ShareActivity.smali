.class public Lcom/google/glass/share/ShareActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/glass/share/ShareHorizontalScrollView$Listener;


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EXTRA_ALLOW_VOICE_ANNOTATION:Ljava/lang/String; = "voice_annotation"

.field public static final EXTRA_CONFIRMED_KEY:Ljava/lang/String; = "confirmed_string"

.field public static final EXTRA_DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field public static final EXTRA_PROGRESS_KEY:Ljava/lang/String; = "progress_string"

.field public static final EXTRA_RETURNED_SHARE_TARGET:Ljava/lang/String; = "share_target"

.field public static final EXTRA_SHARE_TARGETS:Ljava/lang/String; = "valid_share_targets"

.field public static final EXTRA_UPDATE_TIMELINE_SHARE:Ljava/lang/String; = "update_timeline_share"

.field private static final INITIAL_RETRY_DELAY_MS:I = 0x3e8

.field private static final MAX_RETRIES_FOR_ITEM_TO_BE_READY:I = 0x5

.field private static final REQUEST_CODE_VOICE_ANNOTATION:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

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
    .line 82
    const-class v0, Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/glass/share/ShareActivity;->onShareTargetConfirmed(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/share/ShareActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method

.method private static cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    .locals 26
    .parameter "context"
    .parameter "item"

    .prologue
    .line 544
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v22

    if-nez v22, :cond_0

    .line 546
    const/16 v22, 0x1

    .line 609
    :goto_0
    return v22

    .line 549
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v12

    .line 552
    .local v12, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    const-wide/16 v6, 0x0

    .line 553
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

    .line 554
    .local v3, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3, v12}, Lcom/google/glass/share/ShareActivity;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 555
    .local v13, file:Ljava/io/File;
    if-eqz v13, :cond_1

    .line 556
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v6, v6, v22

    goto :goto_1

    .line 561
    .end local v3           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v13           #file:Ljava/io/File;
    :cond_2
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_3

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 563
    const/16 v22, 0x1

    goto :goto_0

    .line 566
    :cond_3
    new-instance v21, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 567
    .local v21, storageHelper:Lcom/google/glass/util/StorageHelper;
    const-wide/32 v22, 0x400000

    add-long v8, v6, v22

    .line 568
    .local v8, bytesToReserve:J
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v4

    .line 569
    .local v4, bytesFree:J
    cmp-long v22, v4, v8

    if-gez v22, :cond_4

    .line 570
    sub-long v10, v8, v4

    .line 571
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

    .line 572
    invoke-virtual {v12, v10, v11}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v22

    if-nez v22, :cond_4

    .line 573
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

    .line 575
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 576
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 587
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

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 589
    .local v19, startTime:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 590
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    .line 591
    .restart local v3       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v3, v12}, Lcom/google/glass/share/ShareActivity;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v13

    .line 592
    .restart local v13       #file:Ljava/io/File;
    if-eqz v13, :cond_6

    .line 594
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

    .line 595
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

    .line 596
    sget-object v22, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 597
    .local v18, pathToCopy:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 589
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #pathToCopy:Ljava/lang/String;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 599
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

    .line 600
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

    .line 603
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

    .line 604
    add-int/lit8 v15, v14, -0x1

    .end local v14           #i:I
    .restart local v15       #i:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_4

    .line 608
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

    .line 609
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
    .line 659
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 660
    invoke-static {p0, p1}, Lcom/google/glass/share/ShareActivity;->cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v0

    return v0
.end method

.method private static copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 1
    .parameter "source"
    .parameter "target"

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 521
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 527
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 531
    return-void
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;
    .locals 4
    .parameter "attachment"
    .parameter "cachedFilesManager"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 628
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 7
    .parameter "context"
    .parameter "timelineItem"

    .prologue
    .line 640
    const-string v2, "0"

    .line 641
    .local v2, sharedType:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const-string v2, "1"

    .line 649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "1"

    .line 651
    .local v0, annotated:Ljava/lang/String;
    :goto_1
    const-string v3, "t"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v2, v4}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, data:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 655
    return-void

    .line 644
    .end local v0           #annotated:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    const-string v2, "2"

    goto :goto_0

    .line 649
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method private onShareTargetConfirmed(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    .locals 6
    .parameter "shareTarget"
    .parameter "annotation"

    .prologue
    const/4 v5, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share confirmed [id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 406
    .local v1, returnedIntent:Landroid/content/Intent;
    const-string v2, "update_timeline_share"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Inserting new TimelineItem on behalf of calling activity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, itemIdToShare:Landroid/net/Uri;
    invoke-direct {p0, p1, v0, p2, v5}, Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 412
    .end local v0           #itemIdToShare:Landroid/net/Uri;
    :cond_0
    const-string v2, "share_target"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 415
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Set result, finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finishAndTurnScreenOffIfRequested()V

    .line 418
    return-void
.end method

.method private shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 7
    .parameter "shareTarget"
    .parameter "itemIdToShare"
    .parameter "annotation"
    .parameter "attemptNumber"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 432
    .local v4, context:Landroid/content/Context;
    new-instance v0, Lcom/google/glass/share/ShareActivity$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/share/ShareActivity$2;-><init>(Lcom/google/glass/share/ShareActivity;ILcom/google/googlex/glass/common/proto/Entity;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 505
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 506
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 321
    const/16 v2, 0x64

    if-ne v2, p1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v2, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->onActivityResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, annotation:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Annotation was empty, chances are user cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0           #annotation:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 328
    .restart local v0       #annotation:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "share_target"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    .line 329
    .local v1, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-direct {p0, v1, v0}, Lcom/google/glass/share/ShareActivity;->onShareTargetConfirmed(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 224
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
    .line 158
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;

    .line 161
    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 166
    sget v2, Lcom/google/glass/common/R$anim;->show_contextual:I

    invoke-static {p0, v2}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    .line 169
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    .line 176
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 177
    .local v1, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v1           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    sget v2, Lcom/google/glass/common/R$id;->share_container:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    sget v2, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->showMessage(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load share targets!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "valid_share_targets"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "valid_share_targets"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 185
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

    .line 187
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_3

    .line 188
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/entity/EntityHelper;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 190
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    goto :goto_0

    .line 201
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_4
    sget v2, Lcom/google/glass/common/R$id;->share_targets:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/share/ShareHorizontalScrollView;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    .line 202
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2, p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->init(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V

    goto :goto_1
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->finish()V

    .line 315
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/share/ShareHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 308
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
    .line 152
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

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareActivity;->setIntent(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->deactivate()V

    .line 272
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 273
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
    .line 280
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/share/ShareHorizontalScrollView;->onPrepareSwipe(IFFFFII)Z

    .line 284
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/share/ShareHorizontalScrollView;->activate()V

    .line 235
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/glass/share/ShareHorizontalScrollView;->setShareTargets(Ljava/util/List;)V

    .line 236
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

    .line 238
    sget v2, Lcom/google/glass/common/R$id;->share_menu_slider:I

    invoke-virtual {p0, v2}, Lcom/google/glass/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 239
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 240
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->shareTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 244
    iget-object v2, p0, Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 246
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_0

    .line 247
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 249
    .local v1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/share/ShareActivity;->iconPath:Ljava/lang/String;

    .line 259
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {v2, v3}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 261
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 262
    return-void
.end method

.method public onShareTargetSelected(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 9
    .parameter "shareTarget"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 335
    if-nez p1, :cond_0

    .line 392
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v6, p0, Lcom/google/glass/share/ShareActivity;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 345
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "progress_string"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, progressMessage:Ljava/lang/String;
    const-string v6, "confirmed_string"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, confirmedMessage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 348
    sget v6, Lcom/google/glass/common/R$string;->sharing_menu_share_confirming:I

    invoke-virtual {p0, v6}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 351
    sget v6, Lcom/google/glass/common/R$string;->sharing_menu_share_confirmed:I

    invoke-virtual {p0, v6}, Lcom/google/glass/share/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    :cond_3
    const-string v6, "voice_annotation"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v5

    .line 358
    .local v0, allowAnnotate:Z
    :cond_4
    new-instance v6, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v6, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/glass/share/ShareActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/google/glass/share/ShareActivity$1;-><init>(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;)V

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 386
    .local v1, builder:Lcom/google/glass/widget/MessageDialog$Builder;
    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {p0}, Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Adding text."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget v6, Lcom/google/glass/common/R$string;->sharing_menu_tap_to_annotate:I

    invoke-virtual {v1, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 391
    :cond_5
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/glass/share/ShareActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    move v0, v5

    .line 392
    goto/16 :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    if-nez v1, :cond_0

    .line 300
    :goto_0
    return v0

    .line 294
    :cond_0
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity;->shareTargetsView:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/share/ShareHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/google/glass/common/R$layout;->share_activity:I

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
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
