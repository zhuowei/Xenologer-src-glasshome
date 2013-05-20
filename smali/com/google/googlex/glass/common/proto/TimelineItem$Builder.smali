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

.field private sourceItemId_:Ljava/lang/Object;

.field private sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

.field private source_:Ljava/lang/Object;

.field private speakableText_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 4018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4175
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5292
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 5920
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6072
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 6786
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6947
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7002
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7053
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7088
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7123
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2706
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->maybeForceBuilderInitialization()V

    .line 2707
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2711
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 4018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4175
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5292
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 5920
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6072
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 6786
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6947
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7002
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7053
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7088
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7123
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2712
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->maybeForceBuilderInitialization()V

    .line 2713
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2688
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2726
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x40

    .line 5611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 5612
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 5613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5615
    :cond_0
    return-void
.end method

.method private ensureHtmlPageIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x10

    .line 5294
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 5295
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5296
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5298
    :cond_0
    return-void
.end method

.method private ensureMenuItemIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x100

    .line 6075
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 6076
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6077
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6079
    :cond_0
    return-void
.end method

.method private ensurePendingActionIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x200

    .line 6441
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 6442
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 6443
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6445
    :cond_0
    return-void
.end method

.method private ensureShareTargetIsMutable()V
    .locals 3

    .prologue
    const v2, 0x8000

    .line 4577
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 4578
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4579
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4581
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
    const/high16 v3, 0x40

    .line 5908
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5909
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

    .line 5915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 5917
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 5909
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
    .line 4563
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4564
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4571
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2694
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
    .line 6061
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6062
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6069
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
    const/high16 v3, 0x100

    .line 6426
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6427
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

    .line 6433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6435
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6427
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
    .line 6936
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6937
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6944
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
    const/high16 v3, 0x200

    .line 6774
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6775
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

    .line 6781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 6783
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6775
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
    const v3, 0x8000

    .line 4874
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4875
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

    .line 4881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4883
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2715
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getCreatorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2717
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2718
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2719
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2720
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2721
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2722
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2724
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
    .line 5787
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Attachment;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5788
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5789
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5791
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5795
    :goto_0
    return-object p0

    .line 5793
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
    .line 5398
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5399
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5401
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5402
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
    .line 6281
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6282
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6283
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6289
    :goto_0
    return-object p0

    .line 6287
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
    .line 6637
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6638
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6639
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6645
    :goto_0
    return-object p0

    .line 6643
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
    .line 4753
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4754
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4755
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4761
    :goto_0
    return-object p0

    .line 4759
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
    .line 5769
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5770
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5771
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5772
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5776
    :goto_0
    return-object p0

    .line 5774
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
    .line 5730
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5731
    if-nez p2, :cond_0

    .line 5732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5734
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5735
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5740
    :goto_0
    return-object p0

    .line 5738
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachment(Lcom/google/googlex/glass/common/proto/Attachment$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5751
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5752
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5753
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5754
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5758
    :goto_0
    return-object p0

    .line 5756
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
    .line 5709
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5710
    if-nez p1, :cond_0

    .line 5711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5713
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5714
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5715
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5719
    :goto_0
    return-object p0

    .line 5717
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAttachmentBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 5879
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
    .line 5891
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
    .line 5379
    if-nez p1, :cond_0

    .line 5380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5382
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5383
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5385
    return-object p0
.end method

.method public addHtmlPageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5430
    if-nez p1, :cond_0

    .line 5431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5433
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5434
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 5435
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5436
    return-object p0
.end method

.method public addMenuItem(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6260
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6261
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6262
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6267
    :goto_0
    return-object p0

    .line 6265
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
    .line 6215
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6216
    if-nez p2, :cond_0

    .line 6217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6219
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6221
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6225
    :goto_0
    return-object p0

    .line 6223
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6239
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6240
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6241
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6242
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6246
    :goto_0
    return-object p0

    .line 6244
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
    .line 6191
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6192
    if-nez p1, :cond_0

    .line 6193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6195
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6196
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6197
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6201
    :goto_0
    return-object p0

    .line 6199
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2

    .prologue
    .line 6391
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
    .line 6406
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
    .line 6617
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6618
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6619
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6620
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6624
    :goto_0
    return-object p0

    .line 6622
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
    .line 6574
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6575
    if-nez p2, :cond_0

    .line 6576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6578
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6579
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6584
    :goto_0
    return-object p0

    .line 6582
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
    .line 6597
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6598
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6599
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6600
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6604
    :goto_0
    return-object p0

    .line 6602
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
    .line 6551
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6552
    if-nez p1, :cond_0

    .line 6553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6555
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6556
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6557
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6561
    :goto_0
    return-object p0

    .line 6559
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
    .line 6741
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
    .line 6755
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
    .line 4735
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4736
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4737
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4738
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4742
    :goto_0
    return-object p0

    .line 4740
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
    .line 4696
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4697
    if-nez p2, :cond_0

    .line 4698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4700
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4701
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4702
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4706
    :goto_0
    return-object p0

    .line 4704
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTarget(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4718
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4719
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4720
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4724
    :goto_0
    return-object p0

    .line 4722
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
    .line 4675
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4676
    if-nez p1, :cond_0

    .line 4677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4679
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4681
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4685
    :goto_0
    return-object p0

    .line 4683
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShareTargetBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 4845
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
    .line 4857
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
    .line 2842
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 2843
    .local v0, result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2844
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2846
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2688
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

    .line 2850
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V

    .line 2851
    .local v2, result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2852
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 2853
    .local v1, from_bitField1_:I
    const/4 v3, 0x0

    .line 2854
    .local v3, to_bitField0_:I
    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2855
    or-int/lit8 v3, v3, 0x1

    .line 2857
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 2859
    or-int/lit8 v3, v3, 0x2

    .line 2861
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$602(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 2863
    or-int/lit8 v3, v3, 0x4

    .line 2865
    :cond_2
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$702(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 2866
    and-int/lit8 v4, v0, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 2867
    or-int/lit8 v3, v3, 0x8

    .line 2869
    :cond_3
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$802(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 2870
    and-int/lit8 v4, v0, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 2871
    or-int/lit8 v3, v3, 0x10

    .line 2873
    :cond_4
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$902(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 2874
    and-int/lit8 v4, v0, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 2875
    or-int/lit8 v3, v3, 0x20

    .line 2877
    :cond_5
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1002(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 2878
    and-int/lit8 v4, v0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 2879
    or-int/lit8 v3, v3, 0x40

    .line 2881
    :cond_6
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J
    invoke-static {v2, v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1102(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    .line 2882
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 2883
    or-int/lit16 v3, v3, 0x80

    .line 2885
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1202(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I

    .line 2886
    and-int/lit16 v4, v0, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 2887
    or-int/lit16 v3, v3, 0x100

    .line 2889
    :cond_8
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1302(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 2890
    and-int/lit16 v4, v0, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 2891
    or-int/lit16 v3, v3, 0x200

    .line 2893
    :cond_9
    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1402(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 2894
    and-int/lit16 v4, v0, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 2895
    or-int/lit16 v3, v3, 0x400

    .line 2897
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2898
    and-int/lit16 v4, v0, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 2899
    or-int/lit16 v3, v3, 0x800

    .line 2901
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 2902
    and-int/lit16 v4, v0, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 2903
    or-int/lit16 v3, v3, 0x1000

    .line 2905
    :cond_c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    and-int/lit16 v4, v0, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 2907
    or-int/lit16 v3, v3, 0x2000

    .line 2909
    :cond_d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    and-int/lit16 v4, v0, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_e

    .line 2911
    or-int/lit16 v3, v3, 0x4000

    .line 2913
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_21

    .line 2914
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1902(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    .line 2918
    :goto_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_22

    .line 2919
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_f

    .line 2920
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 2921
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x8001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2923
    :cond_f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 2927
    :goto_1
    and-int v4, v0, v7

    if-ne v4, v7, :cond_10

    .line 2928
    or-int/2addr v3, v6

    .line 2930
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    and-int v4, v0, v8

    if-ne v4, v8, :cond_11

    .line 2932
    or-int/2addr v3, v7

    .line 2934
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    and-int v4, v0, v9

    if-ne v4, v9, :cond_12

    .line 2936
    or-int/2addr v3, v8

    .line 2938
    :cond_12
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2302(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    and-int v4, v0, v10

    if-ne v4, v10, :cond_13

    .line 2940
    or-int/2addr v3, v9

    .line 2942
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2402(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_14

    .line 2944
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 2946
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x100001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2948
    :cond_14
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2949
    const/high16 v4, 0x20

    and-int/2addr v4, v0

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_15

    .line 2950
    or-int/2addr v3, v10

    .line 2952
    :cond_15
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2602(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_23

    .line 2954
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_16

    .line 2955
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 2956
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2958
    :cond_16
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 2962
    :goto_2
    const/high16 v4, 0x80

    and-int/2addr v4, v0

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_17

    .line 2963
    const/high16 v4, 0x10

    or-int/2addr v3, v4

    .line 2965
    :cond_17
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_24

    .line 2966
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2802(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    .line 2970
    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_25

    .line 2971
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_18

    .line 2972
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 2973
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x1000001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2975
    :cond_18
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 2979
    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v4, :cond_26

    .line 2980
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_19

    .line 2981
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 2982
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v5, -0x2000001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2984
    :cond_19
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    .line 2988
    :goto_5
    const/high16 v4, 0x400

    and-int/2addr v4, v0

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_1a

    .line 2989
    const/high16 v4, 0x20

    or-int/2addr v3, v4

    .line 2991
    :cond_1a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v4, :cond_27

    .line 2992
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 2996
    :goto_6
    const/high16 v4, 0x800

    and-int/2addr v4, v0

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1b

    .line 2997
    const/high16 v4, 0x40

    or-int/2addr v3, v4

    .line 2999
    :cond_1b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3202(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3000
    const/high16 v4, 0x1000

    and-int/2addr v4, v0

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_1c

    .line 3001
    const/high16 v4, 0x80

    or-int/2addr v3, v4

    .line 3003
    :cond_1c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3302(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 3004
    const/high16 v4, 0x2000

    and-int/2addr v4, v0

    const/high16 v5, 0x2000

    if-ne v4, v5, :cond_1d

    .line 3005
    const/high16 v4, 0x100

    or-int/2addr v3, v4

    .line 3007
    :cond_1d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3402(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3008
    const/high16 v4, 0x4000

    and-int/2addr v4, v0

    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_1e

    .line 3009
    const/high16 v4, 0x200

    or-int/2addr v3, v4

    .line 3011
    :cond_1e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 3012
    const/high16 v4, -0x8000

    and-int/2addr v4, v0

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_1f

    .line 3013
    const/high16 v4, 0x400

    or-int/2addr v3, v4

    .line 3015
    :cond_1f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 3016
    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 3017
    const/high16 v4, 0x800

    or-int/2addr v3, v4

    .line 3019
    :cond_20
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I
    invoke-static {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3802(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I

    .line 3021
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onBuilt()V

    .line 3022
    return-object v2

    .line 2916
    :cond_21
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1902(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    goto/16 :goto_0

    .line 2925
    :cond_22
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_1

    .line 2960
    :cond_23
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 2968
    :cond_24
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2802(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    goto/16 :goto_3

    .line 2977
    :cond_25
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 2986
    :cond_26
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_5

    .line 2994
    :cond_27
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    #setter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    invoke-static {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto/16 :goto_6
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2730
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 2732
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 2734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2735
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 2736
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2737
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 2738
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2739
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 2740
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2741
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 2742
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2743
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 2744
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2745
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 2746
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2747
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 2748
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2749
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 2750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 2752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2753
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 2754
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 2756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2757
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 2758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2759
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2760
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 2764
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2765
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 2767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2771
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 2772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 2774
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 2776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 2778
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2779
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 2780
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 2782
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2783
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 2784
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 2785
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2789
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 2790
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 2794
    :goto_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2795
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_4

    .line 2796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 2797
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2801
    :goto_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_5

    .line 2802
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 2803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2807
    :goto_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 2808
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 2812
    :goto_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2813
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2815
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2816
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2817
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2818
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2819
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2820
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2821
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 2822
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 2823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2824
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 2825
    return-object p0

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_0

    .line 2769
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_1

    .line 2787
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_2

    .line 2792
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_3

    .line 2799
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_4

    .line 2805
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto/16 :goto_5

    .line 2810
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_6
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5805
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 5807
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5808
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5812
    :goto_0
    return-object p0

    .line 5810
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearBundleId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3507
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3508
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3510
    return-object p0
.end method

.method public clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4399
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4400
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4401
    return-object p0
.end method

.method public clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7082
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7083
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7084
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7085
    return-object p0
.end method

.method public clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6996
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6997
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 6998
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6999
    return-object p0
.end method

.method public clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7117
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7118
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7120
    return-object p0
.end method

.method public clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 7047
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7048
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7049
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7050
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3676
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3677
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 3678
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3679
    return-object p0
.end method

.method public clearCreator()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4519
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4520
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4524
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4525
    return-object p0

    .line 4522
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDisplayTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3788
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3789
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 3790
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3791
    return-object p0
.end method

.method public clearHtml()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5268
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5269
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5271
    return-object p0
.end method

.method public clearHtmlPage()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5414
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 5415
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5417
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3368
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3369
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3370
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3371
    return-object p0
.end method

.method public clearInReplyTo()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4971
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4972
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4973
    return-object p0
.end method

.method public clearIsBundleCover()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 3626
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3627
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4012
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 4014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4015
    return-object p0
.end method

.method public clearIsPinned()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3964
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 3966
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3967
    return-object p0
.end method

.method public clearLocation()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6016
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6017
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6018
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6022
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6023
    return-object p0

    .line 6020
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearMenuItem()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6302
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 6304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6305
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6309
    :goto_0
    return-object p0

    .line 6307
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3728
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3729
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 3730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3731
    return-object p0
.end method

.method public clearNotification()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6889
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6890
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6894
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6895
    return-object p0

    .line 6892
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
    .line 6657
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6658
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 6659
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6660
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6664
    :goto_0
    return-object p0

    .line 6662
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPinScore()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 3908
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3909
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 3910
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3911
    return-object p0
.end method

.method public clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 3848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 3850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3851
    return-object p0
.end method

.method public clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7238
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7239
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7240
    return-object p0
.end method

.method public clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 4771
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 4773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4778
    :goto_0
    return-object p0

    .line 4776
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7152
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7153
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7154
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7155
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4142
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4143
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4144
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4145
    return-object p0
.end method

.method public clearSourceItemId()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4294
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4295
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4296
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4297
    return-object p0
.end method

.method public clearSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 4204
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4205
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4206
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4207
    return-object p0
.end method

.method public clearSpeakableText()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5573
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5574
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5576
    return-object p0
.end method

.method public clearText()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5167
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5169
    return-object p0
.end method

.method public clearTitle()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 5069
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5070
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5071
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5072
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 2829
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
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2688
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
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5657
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 5659
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
    .line 5840
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
    .line 5903
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 5642
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5643
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5645
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
    .line 5628
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5631
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
    .line 5851
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;

    .line 5853
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
    .line 5865
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 5866
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 5868
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3429
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3430
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3432
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3435
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getBundleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3455
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3456
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3457
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3460
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3463
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
    .locals 3

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4341
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4342
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4344
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4347
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4360
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4361
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4362
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4365
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4368
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
    .line 7064
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 6968
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 7099
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 7021
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 3651
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 4443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4444
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4446
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
    .locals 1

    .prologue
    .line 4535
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4537
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
    .line 4547
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4548
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 4550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 2838
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2834
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 3759
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5211
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5212
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5214
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5217
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5230
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5231
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5232
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5235
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5238
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
    .line 5334
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
    .line 5347
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlPageCount()I
    .locals 1

    .prologue
    .line 5322
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
    .line 5310
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3308
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3309
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3311
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3314
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3328
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3329
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3330
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3336
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
    .locals 3

    .prologue
    .line 4909
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4910
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4911
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4913
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4916
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getInReplyToBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4930
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4931
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4932
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4935
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4938
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
    .line 3579
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 3989
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 3937
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 5941
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5942
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 5944
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
    .line 6033
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6034
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6035
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
    .line 6045
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6046
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationOrBuilder;

    .line 6048
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
    .line 6129
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6130
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 6132
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
    .line 6343
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
    .line 6421
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 6112
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6113
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6115
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
    .line 6095
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6096
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6098
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
    .line 6357
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6358
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 6359
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
    .line 6374
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6375
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6377
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
    .line 3703
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 1

    .prologue
    .line 6809
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6810
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6812
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
    .line 6906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6908
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
    .line 6919
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6920
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;

    .line 6922
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
    .line 6492
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 6495
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
    .line 6696
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
    .line 6769
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
    .line 6476
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6479
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
    .line 6460
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6463
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
    .line 6709
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6710
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 6711
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
    .line 6725
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6726
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6728
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
    .line 3879
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 3819
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    return-wide v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7179
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7180
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7181
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7183
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7186
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7199
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7200
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7201
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7204
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7207
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
    .line 4622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4623
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 4625
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
    .line 4806
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
    .line 4869
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareTargetCount()I
    .locals 1

    .prologue
    .line 4608
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4609
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4611
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
    .line 4594
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4595
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4597
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
    .line 4817
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4818
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 4819
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
    .line 4831
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4832
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4834
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
    .line 7134
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4058
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4059
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4061
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4064
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4086
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4087
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4088
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4091
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4094
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
    .locals 3

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4234
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4235
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4237
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4240
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSourceItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4254
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4255
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4256
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4262
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
    .line 4186
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    return-object v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5482
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5483
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5486
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5489
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSpeakableTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5513
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5514
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5515
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5518
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5521
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
    .locals 3

    .prologue
    .line 5111
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5112
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5113
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5115
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5118
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5130
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5131
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5132
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5138
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
    .locals 3

    .prologue
    .line 5014
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5015
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5016
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5018
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5021
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5033
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5034
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5035
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5038
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5041
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
    .line 3410
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
    .line 4329
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

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 7058
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
    const/high16 v1, 0x800

    .line 6957
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
    const/high16 v1, 0x4000

    .line 7093
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

.method public hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 7011
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
    .line 3640
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
    .line 4433
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

.method public hasDisplayTime()Z
    .locals 2

    .prologue
    .line 3746
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
    const/high16 v1, 0x8

    .line 5199
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

    .line 3295
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
    const/high16 v1, 0x1

    .line 4897
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
    .line 3558
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
    .line 3979
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
    .line 3925
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
    const/high16 v1, 0x80

    .line 5931
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
    .line 3692
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
    const/high16 v1, 0x400

    .line 6798
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
    .line 3866
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
    .line 3806
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
    const/4 v0, 0x1

    .line 7168
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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
    const/high16 v1, -0x8000

    .line 7128
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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 4037
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

.method public hasSourceItemId()Z
    .locals 2

    .prologue
    .line 4221
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
    .line 4180
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
    const/high16 v1, 0x20

    .line 5460
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
    const/high16 v1, 0x4

    .line 5101
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
    const/high16 v1, 0x2

    .line 5004
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
    .line 2699
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
    .line 3261
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4498
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4503
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4507
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4508
    return-object p0

    .line 4501
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 4505
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 8
    .parameter "other"

    .prologue
    const v7, -0x8001

    const v6, -0x400001

    const v5, -0x1000001

    const v4, -0x2000001

    const/4 v1, 0x0

    .line 3035
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3257
    :goto_0
    return-object p0

    .line 3036
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3037
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3038
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3039
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3041
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3042
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3043
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3044
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3046
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3047
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3049
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3050
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3052
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasModifiedTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3053
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3055
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3056
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3058
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3059
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3061
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinScore()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3062
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinScore()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3064
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsPinned()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3065
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3067
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3068
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3070
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3071
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3072
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 3073
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3075
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSourceType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3076
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3078
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSourceItemId()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3079
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3080
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 3081
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3083
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3084
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3085
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$1800(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 3086
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3088
    :cond_e
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3089
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3091
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_23

    .line 3092
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3093
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3094
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3095
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v7

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3100
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3117
    :cond_10
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasInReplyTo()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3118
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3119
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 3120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3122
    :cond_11
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3124
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 3125
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3127
    :cond_12
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x4

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3129
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2300(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 3130
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3132
    :cond_13
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3133
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x8

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3134
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2400(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 3135
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3137
    :cond_14
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3138
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3139
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 3140
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const v2, -0x100001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3145
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3147
    :cond_15
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3148
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v2, 0x20

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3149
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 3150
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3152
    :cond_16
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_28

    .line 3153
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3154
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3155
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3156
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3161
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3178
    :cond_17
    :goto_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3179
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3181
    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2c

    .line 3182
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3184
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3185
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3190
    :goto_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3207
    :cond_19
    :goto_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_30

    .line 3208
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3209
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3210
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3211
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3216
    :goto_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3233
    :cond_1a
    :goto_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3234
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3236
    :cond_1b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCloudSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3237
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3239
    :cond_1c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCompanionSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3240
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3242
    :cond_1d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCloudSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3243
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3245
    :cond_1e
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3246
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3248
    :cond_1f
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSmsType()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3249
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSmsType(Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3251
    :cond_20
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSendToPhoneUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3252
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 3253
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 3254
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3256
    :cond_21
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 3097
    :cond_22
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 3098
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 3103
    :cond_23
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3104
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3105
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3106
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3107
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    .line 3108
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v7

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3109
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_24
    move-object v0, v1

    goto :goto_a

    .line 3113
    :cond_25
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 3142
    :cond_26
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 3143
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 3158
    :cond_27
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 3159
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 3164
    :cond_28
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3166
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3167
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3168
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    .line 3169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3170
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4000()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getAttachmentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_5

    :cond_29
    move-object v0, v1

    goto :goto_b

    .line 3174
    :cond_2a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_5

    .line 3187
    :cond_2b
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 3188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 3193
    :cond_2c
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3194
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3195
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3196
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3197
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    .line 3198
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3199
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_7

    :cond_2d
    move-object v0, v1

    goto :goto_c

    .line 3203
    :cond_2e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_7

    .line 3213
    :cond_2f
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 3214
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 3219
    :cond_30
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3221
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3222
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3223
    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    .line 3224
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3225
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$4200()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_31
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_9

    .line 3229
    :cond_32
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

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
    .line 3268
    const/4 v2, 0x0

    .line 3270
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

    .line 3275
    if-eqz v2, :cond_0

    .line 3276
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 3279
    :cond_0
    return-object p0

    .line 3271
    :catch_0
    move-exception v1

    .line 3272
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v2, v0

    .line 3273
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3275
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3276
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3026
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-eqz v0, :cond_0

    .line 3027
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object p0

    .line 3030
    .end local p0
    :goto_0
    return-object p0

    .line 3029
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
    .line 2688
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2688
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
    .line 2688
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
    .line 2688
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2688
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
    .line 2688
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 5993
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5996
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 6001
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6005
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6006
    return-object p0

    .line 5999
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0

    .line 6003
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 6864
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6865
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6867
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->newBuilder(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6872
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6876
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6877
    return-object p0

    .line 6870
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    goto :goto_0

    .line 6874
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeAttachment(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5822
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5823
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5825
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5829
    :goto_0
    return-object p0

    .line 5827
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeMenuItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6323
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6329
    :goto_0
    return-object p0

    .line 6327
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
    .line 6676
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6677
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6678
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6679
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6683
    :goto_0
    return-object p0

    .line 6681
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeShareTarget(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4789
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4791
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4795
    :goto_0
    return-object p0

    .line 4793
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
    .line 5692
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5693
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5694
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5695
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5699
    :goto_0
    return-object p0

    .line 5697
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
    .line 5671
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5672
    if-nez p2, :cond_0

    .line 5673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5675
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureAttachmentIsMutable()V

    .line 5676
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5677
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5681
    :goto_0
    return-object p0

    .line 5679
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->attachmentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3483
    if-nez p1, :cond_0

    .line 3484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3486
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3487
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3488
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3489
    return-object p0
.end method

.method public setBundleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3529
    if-nez p1, :cond_0

    .line 3530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3532
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3533
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bundleId_:Ljava/lang/Object;

    .line 3534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3535
    return-object p0
.end method

.method public setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4381
    if-nez p1, :cond_0

    .line 4382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4384
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4385
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4386
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4387
    return-object p0
.end method

.method public setCanonicalUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4413
    if-nez p1, :cond_0

    .line 4414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4416
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4417
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->canonicalUrl_:Ljava/lang/Object;

    .line 4418
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4419
    return-object p0
.end method

.method public setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7070
    if-nez p1, :cond_0

    .line 7071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7073
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7074
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7075
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7076
    return-object p0
.end method

.method public setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6979
    if-nez p1, :cond_0

    .line 6980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6982
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6983
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 6984
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6985
    return-object p0
.end method

.method public setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7105
    if-nez p1, :cond_0

    .line 7106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7108
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7109
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 7110
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7111
    return-object p0
.end method

.method public setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7031
    if-nez p1, :cond_0

    .line 7032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7034
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7035
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 7036
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7037
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3662
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3663
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creationTime_:J

    .line 3664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3665
    return-object p0
.end method

.method public setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4479
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4484
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4485
    return-object p0

    .line 4482
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4458
    if-nez p1, :cond_0

    .line 4459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4461
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4462
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4466
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4467
    return-object p0

    .line 4464
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->creatorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3773
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->displayTime_:J

    .line 3774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3775
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5251
    if-nez p1, :cond_0

    .line 5252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5254
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5255
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5256
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5257
    return-object p0
.end method

.method public setHtmlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5283
    if-nez p1, :cond_0

    .line 5284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5286
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5287
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->html_:Ljava/lang/Object;

    .line 5288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5289
    return-object p0
.end method

.method public setHtmlPage(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5360
    if-nez p2, :cond_0

    .line 5361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5363
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureHtmlPageIsMutable()V

    .line 5364
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5365
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5366
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3350
    if-nez p1, :cond_0

    .line 3351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3353
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3354
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3356
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3384
    if-nez p1, :cond_0

    .line 3385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3387
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3388
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->id_:Ljava/lang/Object;

    .line 3389
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3390
    return-object p0
.end method

.method public setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4952
    if-nez p1, :cond_0

    .line 4953
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4955
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4956
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4957
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4958
    return-object p0
.end method

.method public setInReplyToBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4986
    if-nez p1, :cond_0

    .line 4987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4989
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4990
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->inReplyTo_:Ljava/lang/Object;

    .line 4991
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4992
    return-object p0
.end method

.method public setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3600
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3601
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isBundleCover_:Z

    .line 3602
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3603
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3999
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4000
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isDeleted_:Z

    .line 4001
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4002
    return-object p0
.end method

.method public setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3950
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->isPinned_:Z

    .line 3951
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3952
    return-object p0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/Location$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5976
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5977
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 5978
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5982
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5983
    return-object p0

    .line 5980
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
    .line 5955
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5956
    if-nez p1, :cond_0

    .line 5957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5959
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 5960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5964
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5965
    return-object p0

    .line 5962
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
    .line 6171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6172
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6173
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6174
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6178
    :goto_0
    return-object p0

    .line 6176
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
    .line 6147
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6148
    if-nez p2, :cond_0

    .line 6149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6151
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureMenuItemIsMutable()V

    .line 6152
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6153
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6157
    :goto_0
    return-object p0

    .line 6155
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->menuItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3714
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3715
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->modifiedTime_:J

    .line 3716
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3717
    return-object p0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6846
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6847
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->build()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6848
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6852
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6853
    return-object p0

    .line 6850
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
    .line 6824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6825
    if-nez p1, :cond_0

    .line 6826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6828
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 6829
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6833
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 6834
    return-object p0

    .line 6831
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
    .line 6532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6533
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6534
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6535
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6539
    :goto_0
    return-object p0

    .line 6537
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
    .line 6509
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6510
    if-nez p2, :cond_0

    .line 6511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6513
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensurePendingActionIsMutable()V

    .line 6514
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6515
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 6519
    :goto_0
    return-object p0

    .line 6517
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pendingActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3892
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3893
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinScore_:I

    .line 3894
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3895
    return-object p0
.end method

.method public setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3832
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 3833
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->pinTime_:J

    .line 3834
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 3835
    return-object p0
.end method

.method public setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7220
    if-nez p1, :cond_0

    .line 7221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7223
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7224
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7225
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7226
    return-object p0
.end method

.method public setSendToPhoneUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7252
    if-nez p1, :cond_0

    .line 7253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7255
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField1_:I

    .line 7256
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 7257
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7258
    return-object p0
.end method

.method public setShareTarget(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4658
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4659
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4660
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4661
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4665
    :goto_0
    return-object p0

    .line 4663
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
    .line 4637
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4638
    if-nez p2, :cond_0

    .line 4639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4641
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->ensureShareTargetIsMutable()V

    .line 4642
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4643
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4647
    :goto_0
    return-object p0

    .line 4645
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->shareTargetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSmsType(Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7140
    if-nez p1, :cond_0

    .line 7141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7143
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 7144
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 7145
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 7146
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4116
    if-nez p1, :cond_0

    .line 4117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4119
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4120
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4121
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4122
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4166
    if-nez p1, :cond_0

    .line 4167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4169
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4170
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->source_:Ljava/lang/Object;

    .line 4171
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4172
    return-object p0
.end method

.method public setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4276
    if-nez p1, :cond_0

    .line 4277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4279
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4280
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4281
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4282
    return-object p0
.end method

.method public setSourceItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4310
    if-nez p1, :cond_0

    .line 4311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4313
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4314
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceItemId_:Ljava/lang/Object;

    .line 4315
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4316
    return-object p0
.end method

.method public setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4192
    if-nez p1, :cond_0

    .line 4193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4195
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 4196
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 4197
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 4198
    return-object p0
.end method

.method public setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5545
    if-nez p1, :cond_0

    .line 5546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5548
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5549
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5550
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5551
    return-object p0
.end method

.method public setSpeakableTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5599
    if-nez p1, :cond_0

    .line 5600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5602
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5603
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->speakableText_:Ljava/lang/Object;

    .line 5604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5605
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5150
    if-nez p1, :cond_0

    .line 5151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5153
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5154
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5156
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5180
    if-nez p1, :cond_0

    .line 5181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5183
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5184
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->text_:Ljava/lang/Object;

    .line 5185
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5186
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5053
    if-nez p1, :cond_0

    .line 5054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5056
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5057
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5058
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5059
    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5083
    if-nez p1, :cond_0

    .line 5084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5086
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->bitField0_:I

    .line 5087
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->title_:Ljava/lang/Object;

    .line 5088
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->onChanged()V

    .line 5089
    return-object p0
.end method
