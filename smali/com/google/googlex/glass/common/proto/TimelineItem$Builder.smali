.class public final Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "TimelineItem.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;"
    }
.end annotation


# instance fields
.field private attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            "Lcom/google/googlex/glass/common/proto/Attachment$Builder;",
            "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attachment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private bitField1_:I

.field private bundleId_:Ljava/lang/Object;

.field private canonicalUrl_:Ljava/lang/Object;

.field private cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

.field private cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field private companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

.field private companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field private creationTime_:J

.field private creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private creator_:Lcom/google/googlex/glass/common/proto/Entity;

.field private displayTime_:J

.field private htmlPage_:Lcom/google/protobuf/LazyStringList;

.field private html_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private inReplyTo_:Ljava/lang/Object;

.field private isBundleCover_:Z

.field private isDeleted_:Z

.field private isPinned_:Z

.field private locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            "Lcom/google/googlex/glass/common/proto/Location$Builder;",
            "Lcom/google/googlex/glass/common/proto/LocationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/googlex/glass/common/proto/Location;

.field private menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private menuItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedTime_:J

.field private notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/NotificationConfig;",
            "Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;",
            "Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

.field private pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private pinScore_:I

.field private pinTime_:J

.field private sendToPhoneUrl_:Ljava/lang/Object;

.field private shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private shareTarget_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

.field private sourceAccountId_:Ljava/lang/Object;

.field private sourceItemId_:Ljava/lang/Object;

.field private sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

.field private source_:Ljava/lang/Object;

.field private speakableText_:Ljava/lang/Object;

.field private speakableType_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2955
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 4296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4456
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 5279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5697
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 6052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 6626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 7144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 7492
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7653
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7708
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7759
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7794
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7829
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7864
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2956
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->maybeForceBuilderInitialization()V

    .line 2957
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2961
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 4296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4456
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 5279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5697
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 6052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 6626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 7144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 7492
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7653
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7708
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7759
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7794
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7829
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7864
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2962
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->maybeForceBuilderInitialization()V

    .line 2963
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2938
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2976
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x100

    .line 6317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 6318
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 6319
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6321
    :cond_0
    return-void
.end method

.method private ensureHtmlPageIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x20

    .line 5699
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 5700
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5703
    :cond_0
    return-void
.end method

.method private ensureMenuItemIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x400

    .line 6781
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 6782
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6783
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6785
    :cond_0
    return-void
.end method

.method private ensurePendingActionIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x800

    .line 7147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 7148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 7149
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7151
    :cond_0
    return-void
.end method

.method private ensureShareTargetIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x1

    .line 4970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 4971
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4974
    :cond_0
    return-void
.end method

.method private getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            "Lcom/google/googlex/glass/common/proto/Attachment$Builder;",
            "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x100

    .line 6614
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6615
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 6623
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6615
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCreatorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4956
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4957
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4964
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2944
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            "Lcom/google/googlex/glass/common/proto/Location$Builder;",
            "Lcom/google/googlex/glass/common/proto/LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6767
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6768
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6775
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x400

    .line 7132
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7133
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 7141
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 7133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/NotificationConfig;",
            "Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;",
            "Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7642
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7643
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 7648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7650
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x800

    .line 7480
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7481
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 7489
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 7481
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x1

    .line 5267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5268
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 5276
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 5268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2965
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getCreatorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2967
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2968
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2969
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2970
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2971
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2972
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2974
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;"
        }
    .end annotation

    .prologue
    .line 6493
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Attachment;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6494
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6495
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6501
    :goto_0
    return-object p0

    .line 6499
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllHtmlPage(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;"
        }
    .end annotation

    .prologue
    .line 5803
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5806
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5807
    return-object p0
.end method

.method public addAllMenuItem(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;"
        }
    .end annotation

    .prologue
    .line 6987
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6988
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6989
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6991
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6995
    :goto_0
    return-object p0

    .line 6993
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllPendingAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7343
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7344
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7345
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7347
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7351
    :goto_0
    return-object p0

    .line 7349
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;"
        }
    .end annotation

    .prologue
    .line 5146
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5147
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5148
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5150
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5154
    :goto_0
    return-object p0

    .line 5152
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachment(ILcom/google/googlex/glass/common/proto/Attachment$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6476
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6478
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6482
    :goto_0
    return-object p0

    .line 6480
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachment(ILcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6436
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6437
    if-nez p2, :cond_0

    .line 6438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6440
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6441
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6442
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6446
    :goto_0
    return-object p0

    .line 6444
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachment(Lcom/google/googlex/glass/common/proto/Attachment$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6458
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6459
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6460
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6464
    :goto_0
    return-object p0

    .line 6462
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6415
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6416
    if-nez p1, :cond_0

    .line 6417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6419
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6420
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6421
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6425
    :goto_0
    return-object p0

    .line 6423
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachmentBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 6585
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    return-object v0
.end method

.method public addAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 6597
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    return-object v0
.end method

.method public addHtmlPage(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5784
    if-nez p1, :cond_0

    .line 5785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5787
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5788
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5789
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5790
    return-object p0
.end method

.method public addHtmlPageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5835
    if-nez p1, :cond_0

    .line 5836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5838
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5839
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 5840
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5841
    return-object p0
.end method

.method public addMenuItem(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6966
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6967
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6968
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6969
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6973
    :goto_0
    return-object p0

    .line 6971
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItem(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6921
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6922
    if-nez p2, :cond_0

    .line 6923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6925
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6926
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6931
    :goto_0
    return-object p0

    .line 6929
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6945
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6946
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6947
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6948
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6952
    :goto_0
    return-object p0

    .line 6950
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6897
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6898
    if-nez p1, :cond_0

    .line 6899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6901
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6902
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6903
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6907
    :goto_0
    return-object p0

    .line 6905
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2

    .prologue
    .line 7097
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addMenuItemBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 7112
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addPendingAction(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7323
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7324
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7325
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7326
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7330
    :goto_0
    return-object p0

    .line 7328
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPendingAction(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7280
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7281
    if-nez p2, :cond_0

    .line 7282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7284
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7285
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7290
    :goto_0
    return-object p0

    .line 7288
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPendingAction(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7303
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7304
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7305
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7306
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7310
    :goto_0
    return-object p0

    .line 7308
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPendingAction(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7257
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7258
    if-nez p1, :cond_0

    .line 7259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7261
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7262
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7267
    :goto_0
    return-object p0

    .line 7265
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPendingActionBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7447
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addPendingActionBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7461
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addShareTarget(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5128
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5129
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5130
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5131
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5135
    :goto_0
    return-object p0

    .line 5133
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTarget(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5089
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5090
    if-nez p2, :cond_0

    .line 5091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5093
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5094
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5095
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5099
    :goto_0
    return-object p0

    .line 5097
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTarget(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5111
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5112
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5113
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5117
    :goto_0
    return-object p0

    .line 5115
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5068
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5069
    if-nez p1, :cond_0

    .line 5070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5072
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5073
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5074
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5078
    :goto_0
    return-object p0

    .line 5076
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTargetBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 5238
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public addShareTargetBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 5250
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 2

    .prologue
    .line 3096
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 3097
    .local v0, result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3098
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3100
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 11

    .prologue
    const/high16 v10, 0x8

    const/high16 v9, 0x4

    const/high16 v8, 0x2

    const/high16 v7, 0x1

    const v6, 0x8000

    .line 3104
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V

    .line 3105
    .local v2, result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3106
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3107
    .local v1, from_bitField1_:I
    const/4 v3, 0x0

    .line 3108
    .local v3, to_bitField0_:I
    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 3109
    or-int/lit8 v3, v3, 0x1

    .line 3111
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3113
    or-int/lit8 v3, v3, 0x2

    .line 3115
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$602(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 3117
    or-int/lit8 v3, v3, 0x4

    .line 3119
    :cond_2
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$702(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 3120
    and-int/lit8 v4, v0, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 3121
    or-int/lit8 v3, v3, 0x8

    .line 3123
    :cond_3
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$802(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 3124
    and-int/lit8 v4, v0, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 3125
    or-int/lit8 v3, v3, 0x10

    .line 3127
    :cond_4
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$902(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 3128
    and-int/lit8 v4, v0, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 3129
    or-int/lit8 v3, v3, 0x20

    .line 3131
    :cond_5
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1002(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 3132
    and-int/lit8 v4, v0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 3133
    or-int/lit8 v3, v3, 0x40

    .line 3135
    :cond_6
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1102(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 3136
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 3137
    or-int/lit16 v3, v3, 0x80

    .line 3139
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1202(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I

    .line 3140
    and-int/lit16 v4, v0, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 3141
    or-int/lit16 v3, v3, 0x100

    .line 3143
    :cond_8
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1302(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 3144
    and-int/lit16 v4, v0, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 3145
    or-int/lit16 v3, v3, 0x200

    .line 3147
    :cond_9
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1402(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 3148
    and-int/lit16 v4, v0, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 3149
    or-int/lit16 v3, v3, 0x400

    .line 3151
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    and-int/lit16 v4, v0, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 3153
    or-int/lit16 v3, v3, 0x800

    .line 3155
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 3156
    and-int/lit16 v4, v0, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 3157
    or-int/lit16 v3, v3, 0x1000

    .line 3159
    :cond_c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    and-int/lit16 v4, v0, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 3161
    or-int/lit16 v3, v3, 0x2000

    .line 3163
    :cond_d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    and-int/lit16 v4, v0, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_e

    .line 3165
    or-int/lit16 v3, v3, 0x4000

    .line 3167
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    and-int v4, v0, v6

    if-ne v4, v6, :cond_f

    .line 3169
    or-int/2addr v3, v6

    .line 3171
    :cond_f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_23

    .line 3172
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    .line 3176
    :goto_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_24

    .line 3177
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_10

    .line 3178
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3179
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x10001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3181
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 3185
    :goto_1
    and-int v4, v0, v8

    if-ne v4, v8, :cond_11

    .line 3186
    or-int/2addr v3, v7

    .line 3188
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    and-int v4, v0, v9

    if-ne v4, v9, :cond_12

    .line 3190
    or-int/2addr v3, v8

    .line 3192
    :cond_12
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2302(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    and-int v4, v0, v10

    if-ne v4, v10, :cond_13

    .line 3194
    or-int/2addr v3, v9

    .line 3196
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2402(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_14

    .line 3198
    or-int/2addr v3, v10

    .line 3200
    :cond_14
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_15

    .line 3202
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 3204
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x200001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3206
    :cond_15
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3207
    const/high16 v4, 0x40

    and-int/2addr v4, v0

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_16

    .line 3208
    const/high16 v4, 0x10

    or-int/2addr v3, v4

    .line 3210
    :cond_16
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    const/high16 v4, 0x80

    and-int/2addr v4, v0

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_17

    .line 3212
    const/high16 v4, 0x20

    or-int/2addr v3, v4

    .line 3214
    :cond_17
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_25

    .line 3216
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_18

    .line 3217
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3218
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x1000001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3220
    :cond_18
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 3224
    :goto_2
    const/high16 v4, 0x200

    and-int/2addr v4, v0

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_19

    .line 3225
    const/high16 v4, 0x40

    or-int/2addr v3, v4

    .line 3227
    :cond_19
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_26

    .line 3228
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    .line 3232
    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_27

    .line 3233
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_1a

    .line 3234
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3235
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x4000001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3237
    :cond_1a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 3241
    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_28

    .line 3242
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1b

    .line 3243
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3244
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x8000001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3246
    :cond_1b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 3250
    :goto_5
    const/high16 v4, 0x1000

    and-int/2addr v4, v0

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_1c

    .line 3251
    const/high16 v4, 0x80

    or-int/2addr v3, v4

    .line 3253
    :cond_1c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_29

    .line 3254
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3302(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 3258
    :goto_6
    const/high16 v4, 0x2000

    and-int/2addr v4, v0

    const/high16 v5, 0x2000

    if-ne v4, v5, :cond_1d

    .line 3259
    const/high16 v4, 0x100

    or-int/2addr v3, v4

    .line 3261
    :cond_1d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3402(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3262
    const/high16 v4, 0x4000

    and-int/2addr v4, v0

    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_1e

    .line 3263
    const/high16 v4, 0x200

    or-int/2addr v3, v4

    .line 3265
    :cond_1e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3266
    const/high16 v4, -0x8000

    and-int/2addr v4, v0

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_1f

    .line 3267
    const/high16 v4, 0x400

    or-int/2addr v3, v4

    .line 3269
    :cond_1f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3270
    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 3271
    const/high16 v4, 0x800

    or-int/2addr v3, v4

    .line 3273
    :cond_20
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3702(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3274
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 3275
    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    .line 3277
    :cond_21
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3802(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 3278
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_22

    .line 3279
    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    .line 3281
    :cond_22
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3282
    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I
    invoke-static {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4002(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I

    .line 3283
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onBuilt()V

    .line 3284
    return-object v2

    .line 3174
    :cond_23
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    goto/16 :goto_0

    .line 3183
    :cond_24
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_1

    .line 3222
    :cond_25
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 3230
    :cond_26
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    goto/16 :goto_3

    .line 3239
    :cond_27
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 3248
    :cond_28
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_5

    .line 3256
    :cond_29
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3302(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto/16 :goto_6
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2980
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 2982
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 2984
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2985
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 2986
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2987
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 2988
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2989
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 2990
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2991
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 2992
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2993
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 2994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2995
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 2996
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2997
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 2998
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2999
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 3000
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 3002
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3003
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 3004
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 3006
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3007
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 3008
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 3010
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3011
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3012
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 3016
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3017
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3019
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3023
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 3024
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 3026
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 3028
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 3030
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3031
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 3032
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 3034
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3035
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 3036
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3037
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 3038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3039
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3043
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 3044
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 3048
    :goto_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3049
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_4

    .line 3050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3051
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3055
    :goto_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_5

    .line 3056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3061
    :goto_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 3062
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 3066
    :goto_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3067
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3069
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3070
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3071
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3072
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3073
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3074
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3075
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 3076
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 3078
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3079
    return-object p0

    .line 3014
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_0

    .line 3021
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_1

    .line 3041
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_2

    .line 3046
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_3

    .line 3053
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_4

    .line 3059
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_5

    .line 3064
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_6
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6511
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 6513
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6514
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6518
    :goto_0
    return-object p0

    .line 6516
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearBundleId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3785
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3786
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3787
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3788
    return-object p0
.end method

.method public clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4792
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4794
    return-object p0
.end method

.method public clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7788
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7789
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7790
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7791
    return-object p0
.end method

.method public clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7702
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7703
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7704
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7705
    return-object p0
.end method

.method public clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 7823
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7824
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7825
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7826
    return-object p0
.end method

.method public clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7753
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7754
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7755
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7756
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3954
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3955
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 3956
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3957
    return-object p0
.end method

.method public clearCreator()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4911
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4912
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4913
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4917
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4918
    return-object p0

    .line 4915
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDisplayTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4066
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4067
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 4068
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4069
    return-object p0
.end method

.method public clearHtml()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5674
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5676
    return-object p0
.end method

.method public clearHtmlPage()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5819
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5820
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5821
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5822
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3643
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3645
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3646
    return-object p0
.end method

.method public clearInReplyTo()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5367
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5369
    return-object p0
.end method

.method public clearIsBundleCover()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3902
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 3904
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3905
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 4292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4293
    return-object p0
.end method

.method public clearIsPinned()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4242
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 4244
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4245
    return-object p0
.end method

.method public clearLocation()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6722
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6723
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6724
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6728
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6729
    return-object p0

    .line 6726
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearMenuItem()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7008
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7009
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 7010
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7011
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7015
    :goto_0
    return-object p0

    .line 7013
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4006
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4007
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 4008
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4009
    return-object p0
.end method

.method public clearNotification()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7594
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7595
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7596
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7600
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7601
    return-object p0

    .line 7598
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearPendingAction()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7363
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 7365
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7370
    :goto_0
    return-object p0

    .line 7368
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPinScore()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4186
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4187
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 4188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4189
    return-object p0
.end method

.method public clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4126
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 4128
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4129
    return-object p0
.end method

.method public clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7946
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7947
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7948
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7949
    return-object p0
.end method

.method public clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5164
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 5166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5167
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5171
    :goto_0
    return-object p0

    .line 5169
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7859
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7860
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7861
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4424
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4426
    return-object p0
.end method

.method public clearSourceAccountId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4686
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4687
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4688
    return-object p0
.end method

.method public clearSourceItemId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4578
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4579
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4581
    return-object p0
.end method

.method public clearSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4485
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4486
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4487
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4488
    return-object p0
.end method

.method public clearSpeakableText()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6264
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6265
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6266
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6267
    return-object p0
.end method

.method public clearSpeakableType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6011
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6012
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 6013
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6014
    return-object p0
.end method

.method public clearText()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5568
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5569
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5570
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5571
    return-object p0
.end method

.method public clearTitle()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5468
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5469
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5470
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5471
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3083
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 6362
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6363
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 6365
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    goto :goto_0
.end method

.method public getAttachmentBuilder(I)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6546
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    return-object v0
.end method

.method public getAttachmentBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6609
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6349
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6351
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6334
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6335
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttachmentOrBuilder(I)Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6557
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6558
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;

    .line 6559
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;

    goto :goto_0
.end method

.method public getAttachmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6571
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6572
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3703
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3704
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3705
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3707
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3708
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3709
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3713
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getBundleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3733
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3734
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3735
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3738
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3741
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4730
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4731
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 4732
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4734
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4735
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4736
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4740
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4753
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4754
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4755
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4758
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4761
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 7770
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 7674
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 7805
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 7727
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 3929
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4837
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4839
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getCreatorBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 4928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4929
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4930
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getCreatorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public getCreatorOrBuilder()Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4941
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 4943
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 3092
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3088
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 4037
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5612
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5613
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 5614
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5616
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5617
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5618
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5622
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5635
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5636
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5637
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5640
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5643
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getHtmlPage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlPageBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 5752
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlPageCount()I
    .locals 1

    .prologue
    .line 5727
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getHtmlPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5715
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3579
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3580
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3581
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3583
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3584
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3585
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3589
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3603
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3604
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3605
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3608
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3611
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5302
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5303
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 5304
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5306
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5307
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5308
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5312
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getInReplyToBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5326
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5327
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5328
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5331
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5334
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getIsBundleCover()Z
    .locals 1

    .prologue
    .line 3857
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 4267
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 4215
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 6647
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6648
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6650
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0
.end method

.method public getLocationBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 6739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6740
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6741
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location$Builder;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
    .locals 1

    .prologue
    .line 6751
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6752
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationOrBuilder;

    .line 6754
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0
.end method

.method public getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 6835
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 6838
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    goto :goto_0
.end method

.method public getMenuItemBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 7049
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public getMenuItemBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7127
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 6818
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6819
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6821
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMenuItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6801
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6802
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 7063
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7064
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 7065
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    goto :goto_0
.end method

.method public getMenuItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7080
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 7081
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 7083
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 3981
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 1

    .prologue
    .line 7515
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7516
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7518
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto :goto_0
.end method

.method public getNotificationBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 2

    .prologue
    .line 7612
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7613
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7614
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;
    .locals 1

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 7626
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;

    .line 7628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto :goto_0
.end method

.method public getPendingAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7198
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7199
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 7201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    goto :goto_0
.end method

.method public getPendingActionBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7402
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public getPendingActionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7475
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingActionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7182
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPendingActionList()Ljava/util/List;
    .locals 1
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

    .prologue
    .line 7166
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPendingActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7415
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7416
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 7417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    goto :goto_0
.end method

.method public getPendingActionOrBuilderList()Ljava/util/List;
    .locals 1
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

    .prologue
    .line 7431
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 7432
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 7434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 4157
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 4097
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    return-wide v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7885
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7886
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 7887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7889
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7890
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7891
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7895
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7908
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7909
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7910
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7913
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7916
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 5015
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5016
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 5018
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getShareTargetBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5199
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public getShareTargetBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5262
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareTargetCount()I
    .locals 1

    .prologue
    .line 5001
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5002
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5004
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getShareTargetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4987
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4988
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4990
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareTargetOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 5212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    goto :goto_0
.end method

.method public getShareTargetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5224
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 5225
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 5227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7840
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4335
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4336
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 4337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4339
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4340
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4341
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4345
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4624
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4625
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 4626
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4628
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4629
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4630
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4634
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSourceAccountIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4647
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4648
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4649
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4652
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4655
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4367
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4368
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4369
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4372
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4375
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4514
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4515
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 4516
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4518
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4519
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4520
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4524
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSourceItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4538
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4539
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4540
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4543
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4546
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    .locals 1

    .prologue
    .line 4467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    return-object v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6125
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6126
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 6127
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6129
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6130
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6131
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6135
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSpeakableTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6174
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6175
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6176
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6179
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6182
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSpeakableType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5899
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 5900
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 5901
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5903
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5904
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5905
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 5909
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSpeakableTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5939
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 5940
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5941
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5944
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 5947
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5510
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5511
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 5512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5514
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5515
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5516
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5520
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5532
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5533
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5534
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5537
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5540
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5410
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5411
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 5412
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5414
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5415
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5416
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5420
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5432
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5437
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5440
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasBundleId()Z
    .locals 2

    .prologue
    .line 3685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanonicalUrl()Z
    .locals 2

    .prologue
    .line 4719
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 7764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 7663
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncProtocol()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7799
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 7717
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 2

    .prologue
    .line 3918
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreator()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 4826
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayTime()Z
    .locals 2

    .prologue
    .line 4024
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtml()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 5601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3567
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInReplyTo()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 5290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsBundleCover()Z
    .locals 2

    .prologue
    .line 3836
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDeleted()Z
    .locals 2

    .prologue
    .line 4257
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPinned()Z
    .locals 2

    .prologue
    .line 4203
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 6637
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 2

    .prologue
    .line 3970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotification()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 7504
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinScore()Z
    .locals 2

    .prologue
    .line 4144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinTime()Z
    .locals 2

    .prologue
    .line 4084
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSendToPhoneUrl()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmsType()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7834
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 2

    .prologue
    .line 4315
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceAccountId()Z
    .locals 2

    .prologue
    .line 4613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceItemId()Z
    .locals 2

    .prologue
    .line 4502
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceType()Z
    .locals 2

    .prologue
    .line 4461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 6088
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 5871
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 5500
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 5400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 2949
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const-class v2, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3533
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 4888
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4889
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4891
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4896
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4900
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4901
    return-object p0

    .line 4894
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 4898
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 8
    .parameter "other"

    .prologue
    const v7, -0x10001

    const v6, -0x1000001

    const v5, -0x4000001

    const v4, -0x8000001

    const/4 v1, 0x0

    .line 3297
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3529
    :goto_0
    return-object p0

    .line 3298
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3299
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3300
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3301
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3303
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3305
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3306
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3308
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3309
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3311
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3312
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3314
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasModifiedTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3315
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3317
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3318
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3320
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3321
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3323
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinScore()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3324
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinScore()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3326
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsPinned()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3327
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3329
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3330
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3332
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3333
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3334
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 3335
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3337
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSourceType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3338
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3340
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSourceItemId()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3341
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3342
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 3343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3345
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSourceAccountId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3347
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1800(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 3348
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3350
    :cond_e
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3352
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 3353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3355
    :cond_f
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3356
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3358
    :cond_10
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_25

    .line 3359
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3360
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3361
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v7

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3367
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3384
    :cond_11
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasInReplyTo()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3385
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3386
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 3387
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3389
    :cond_12
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3390
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x4

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3391
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2300(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 3392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3394
    :cond_13
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3395
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x8

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3396
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2400(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 3397
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3399
    :cond_14
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3401
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 3402
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3404
    :cond_15
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3405
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3406
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 3407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3412
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3414
    :cond_16
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableType()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3415
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x40

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3416
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 3417
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3419
    :cond_17
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3420
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x80

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3421
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2800(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 3422
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3424
    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2a

    .line 3425
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3426
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3427
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3428
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3433
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3450
    :cond_19
    :goto_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3451
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3453
    :cond_1a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2e

    .line 3454
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3455
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3456
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3462
    :goto_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3479
    :cond_1b
    :goto_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_32

    .line 3480
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3481
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3482
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3488
    :goto_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3505
    :cond_1c
    :goto_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3506
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3508
    :cond_1d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCloudSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3509
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3511
    :cond_1e
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCompanionSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3512
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3514
    :cond_1f
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCloudSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3515
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3517
    :cond_20
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3518
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3520
    :cond_21
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSmsType()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3521
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSmsType(Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3523
    :cond_22
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSendToPhoneUrl()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3524
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3525
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 3526
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3528
    :cond_23
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 3364
    :cond_24
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 3365
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 3370
    :cond_25
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3371
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3372
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3373
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3374
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3375
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v7

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3376
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_26
    move-object v0, v1

    goto :goto_a

    .line 3380
    :cond_27
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 3409
    :cond_28
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 3410
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 3430
    :cond_29
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 3431
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 3436
    :cond_2a
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3437
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3438
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3439
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3440
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3441
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3442
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4200()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_5

    :cond_2b
    move-object v0, v1

    goto :goto_b

    .line 3446
    :cond_2c
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_5

    .line 3459
    :cond_2d
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 3460
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 3465
    :cond_2e
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3466
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3468
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3469
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3471
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_7

    :cond_2f
    move-object v0, v1

    goto :goto_c

    .line 3475
    :cond_30
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_7

    .line 3485
    :cond_31
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 3486
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 3491
    :cond_32
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3492
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3494
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3495
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3497
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_33
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_9

    .line 3501
    :cond_34
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_9
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3540
    const/4 v2, 0x0

    .line 3542
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    if-eqz v2, :cond_0

    .line 3548
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3551
    :cond_0
    return-object p0

    .line 3543
    :catch_0
    move-exception v1

    .line 3544
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v2, v0

    .line 3545
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3547
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3548
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3288
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-eqz v0, :cond_0

    .line 3289
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object p0

    .line 3292
    .end local p0
    :goto_0
    return-object p0

    .line 3291
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2938
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2938
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 6699
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6700
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6702
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6707
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6711
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6712
    return-object p0

    .line 6705
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0

    .line 6709
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 7570
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7571
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7573
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->newBuilder(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7578
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7582
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7583
    return-object p0

    .line 7576
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto :goto_0

    .line 7580
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6528
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6529
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6535
    :goto_0
    return-object p0

    .line 6533
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeMenuItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 7028
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7029
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 7030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7031
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7035
    :goto_0
    return-object p0

    .line 7033
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removePendingAction(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7383
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7384
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7385
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7389
    :goto_0
    return-object p0

    .line 7387
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeShareTarget(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5182
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5184
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5188
    :goto_0
    return-object p0

    .line 5186
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAttachment(ILcom/google/googlex/glass/common/proto/Attachment$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6398
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6399
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6400
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6401
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6405
    :goto_0
    return-object p0

    .line 6403
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAttachment(ILcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6377
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6378
    if-nez p2, :cond_0

    .line 6379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6381
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 6382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6383
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6387
    :goto_0
    return-object p0

    .line 6385
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3761
    if-nez p1, :cond_0

    .line 3762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3764
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3765
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3767
    return-object p0
.end method

.method public setBundleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3807
    if-nez p1, :cond_0

    .line 3808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3810
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3811
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3812
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3813
    return-object p0
.end method

.method public setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4774
    if-nez p1, :cond_0

    .line 4775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4777
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4778
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4779
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4780
    return-object p0
.end method

.method public setCanonicalUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4806
    if-nez p1, :cond_0

    .line 4807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4809
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4810
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4811
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4812
    return-object p0
.end method

.method public setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7776
    if-nez p1, :cond_0

    .line 7777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7779
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7780
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7781
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7782
    return-object p0
.end method

.method public setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7685
    if-nez p1, :cond_0

    .line 7686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7688
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7689
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7690
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7691
    return-object p0
.end method

.method public setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7811
    if-nez p1, :cond_0

    .line 7812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7814
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7815
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7816
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7817
    return-object p0
.end method

.method public setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7737
    if-nez p1, :cond_0

    .line 7738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7740
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7741
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7742
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7743
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3940
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3941
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 3942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3943
    return-object p0
.end method

.method public setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4871
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4872
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4873
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4877
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4878
    return-object p0

    .line 4875
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4851
    if-nez p1, :cond_0

    .line 4852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4854
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4855
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4859
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4860
    return-object p0

    .line 4857
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4050
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4051
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 4052
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4053
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5656
    if-nez p1, :cond_0

    .line 5657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5659
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5660
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5661
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5662
    return-object p0
.end method

.method public setHtmlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5688
    if-nez p1, :cond_0

    .line 5689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5691
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5692
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5693
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5694
    return-object p0
.end method

.method public setHtmlPage(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5765
    if-nez p2, :cond_0

    .line 5766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5768
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5769
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5770
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5771
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3625
    if-nez p1, :cond_0

    .line 3626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3628
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3629
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3630
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3631
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3659
    if-nez p1, :cond_0

    .line 3660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3662
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3663
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3665
    return-object p0
.end method

.method public setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5348
    if-nez p1, :cond_0

    .line 5349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5351
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5352
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5354
    return-object p0
.end method

.method public setInReplyToBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5382
    if-nez p1, :cond_0

    .line 5383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5385
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5386
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 5387
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5388
    return-object p0
.end method

.method public setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3878
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3879
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 3880
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3881
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4277
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4278
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 4279
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4280
    return-object p0
.end method

.method public setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4228
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 4229
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4230
    return-object p0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/Location$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6682
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6683
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6688
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6689
    return-object p0

    .line 6686
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6661
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6662
    if-nez p1, :cond_0

    .line 6663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6665
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6666
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6670
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6671
    return-object p0

    .line 6668
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMenuItem(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6877
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6878
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6879
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6880
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6884
    :goto_0
    return-object p0

    .line 6882
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMenuItem(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6854
    if-nez p2, :cond_0

    .line 6855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6857
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6858
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6859
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6863
    :goto_0
    return-object p0

    .line 6861
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3992
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3993
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 3994
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3995
    return-object p0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7553
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->build()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7554
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7558
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7559
    return-object p0

    .line 7556
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->build()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7531
    if-nez p1, :cond_0

    .line 7532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7534
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 7535
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7539
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7540
    return-object p0

    .line 7537
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPendingAction(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7238
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7239
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7240
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7241
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7245
    :goto_0
    return-object p0

    .line 7243
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPendingAction(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7215
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7216
    if-nez p2, :cond_0

    .line 7217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7219
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 7220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7221
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7225
    :goto_0
    return-object p0

    .line 7223
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4170
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4171
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 4172
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4173
    return-object p0
.end method

.method public setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4111
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 4112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4113
    return-object p0
.end method

.method public setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7929
    if-nez p1, :cond_0

    .line 7930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7932
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7933
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7934
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7935
    return-object p0
.end method

.method public setSendToPhoneUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7961
    if-nez p1, :cond_0

    .line 7962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7964
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7965
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7966
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7967
    return-object p0
.end method

.method public setShareTarget(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5052
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5058
    :goto_0
    return-object p0

    .line 5056
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setShareTarget(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5031
    if-nez p2, :cond_0

    .line 5032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5034
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 5035
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5036
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5040
    :goto_0
    return-object p0

    .line 5038
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSmsType(Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7846
    if-nez p1, :cond_0

    .line 7847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7849
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7850
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7851
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7852
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4397
    if-nez p1, :cond_0

    .line 4398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4400
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4401
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4402
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4403
    return-object p0
.end method

.method public setSourceAccountId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4668
    if-nez p1, :cond_0

    .line 4669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4671
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4672
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4673
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4674
    return-object p0
.end method

.method public setSourceAccountIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4700
    if-nez p1, :cond_0

    .line 4701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4703
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4704
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceAccountId_:Ljava/lang/Object;

    .line 4705
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4706
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4447
    if-nez p1, :cond_0

    .line 4448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4450
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4451
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4452
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4453
    return-object p0
.end method

.method public setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4560
    if-nez p1, :cond_0

    .line 4561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4563
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4564
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4566
    return-object p0
.end method

.method public setSourceItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4594
    if-nez p1, :cond_0

    .line 4595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4597
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4598
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4600
    return-object p0
.end method

.method public setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4473
    if-nez p1, :cond_0

    .line 4474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4476
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4477
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4478
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4479
    return-object p0
.end method

.method public setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6221
    if-nez p1, :cond_0

    .line 6222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6224
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6225
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6226
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6227
    return-object p0
.end method

.method public setSpeakableTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6305
    if-nez p1, :cond_0

    .line 6306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6308
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6309
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 6310
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6311
    return-object p0
.end method

.method public setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5977
    if-nez p1, :cond_0

    .line 5978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5980
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5981
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 5982
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5983
    return-object p0
.end method

.method public setSpeakableTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6043
    if-nez p1, :cond_0

    .line 6044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6046
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6047
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableType_:Ljava/lang/Object;

    .line 6048
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6049
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5552
    if-nez p1, :cond_0

    .line 5553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5555
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5556
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5557
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5558
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5582
    if-nez p1, :cond_0

    .line 5583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5585
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5586
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5587
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5588
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5452
    if-nez p1, :cond_0

    .line 5453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5455
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5456
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5457
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5458
    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5482
    if-nez p1, :cond_0

    .line 5483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5485
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5486
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5487
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5488
    return-object p0
.end method
