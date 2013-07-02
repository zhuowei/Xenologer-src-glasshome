.class public final Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SyncResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SyncResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

.field private insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

.field private responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

.field private selectContinuationToken_:Lcom/google/protobuf/ByteString;

.field private selectMaxWriteTimestamp_:J

.field private selectStartTime_:J

.field private selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItems_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private syncContinuationToken_:Lcom/google/protobuf/ByteString;

.field private syncEndTime_:J

.field private syncStartTime_:J

.field private updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1138
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1519
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1648
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1777
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 2034
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2153
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 886
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 887
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1138
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1519
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1648
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1777
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 2034
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2153
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 892
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 893
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 900
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1779
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1780
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1781
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1783
    :cond_0
    return-void
.end method

.method private ensureInsertFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1522
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1525
    :cond_0
    return-void
.end method

.method private ensureSelectedItemsIsMutable()V
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1194
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1196
    :cond_0
    return-void
.end method

.method private ensureUpdateFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1650
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1651
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1652
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1654
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1508
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1508
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 895
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 898
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDeleteFailedItemIds(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1869
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1870
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1872
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1873
    return-object p0
.end method

.method public addAllInsertFailedItemIds(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1611
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1612
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1614
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1615
    return-object p0
.end method

.method public addAllSelectedItems(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1378
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1379
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1380
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1386
    :goto_0
    return-object p0

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllUpdateFailedItemIds(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1740
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1741
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1743
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1744
    return-object p0
.end method

.method public addDeleteFailedItemIds(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1852
    if-nez p1, :cond_0

    .line 1853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1855
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1856
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1857
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1858
    return-object p0
.end method

.method public addDeleteFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1897
    if-nez p1, :cond_0

    .line 1898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1900
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1901
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1902
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1903
    return-object p0
.end method

.method public addInsertFailedItemIds(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1594
    if-nez p1, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1597
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1600
    return-object p0
.end method

.method public addInsertFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1642
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1643
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1645
    return-object p0
.end method

.method public addSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1360
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1361
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1366
    :goto_0
    return-object p0

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1319
    if-nez p2, :cond_0

    .line 1320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1322
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1323
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1324
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1328
    :goto_0
    return-object p0

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1342
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1347
    :goto_0
    return-object p0

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItems(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1297
    if-nez p1, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1300
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1301
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1306
    :goto_0
    return-object p0

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItemsBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    return-object v0
.end method

.method public addSelectedItemsBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    return-object v0
.end method

.method public addUpdateFailedItemIds(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1723
    if-nez p1, :cond_0

    .line 1724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1726
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1727
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1729
    return-object p0
.end method

.method public addUpdateFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1768
    if-nez p1, :cond_0

    .line 1769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1771
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1772
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1773
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1774
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    .line 949
    .local v0, result:Lcom/google/googlex/glass/common/proto/SyncResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 952
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 5

    .prologue
    .line 956
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V

    .line 957
    .local v1, result:Lcom/google/googlex/glass/common/proto/SyncResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 958
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 959
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 960
    or-int/lit8 v2, v2, 0x1

    .line 962
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$502(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 963
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 964
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 965
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 966
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 968
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$602(Lcom/google/googlex/glass/common/proto/SyncResponse;Ljava/util/List;)Ljava/util/List;

    .line 972
    :goto_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 973
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 975
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 977
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$702(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 978
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 979
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 981
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 983
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$802(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 984
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 985
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 987
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 989
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$902(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 990
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 991
    or-int/lit8 v2, v2, 0x2

    .line 993
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1002(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 994
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 995
    or-int/lit8 v2, v2, 0x4

    .line 997
    :cond_6
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1102(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 998
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 999
    or-int/lit8 v2, v2, 0x8

    .line 1001
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1202(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1002
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1003
    or-int/lit8 v2, v2, 0x10

    .line 1005
    :cond_8
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1302(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 1006
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1007
    or-int/lit8 v2, v2, 0x20

    .line 1009
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1402(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1010
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1011
    or-int/lit8 v2, v2, 0x40

    .line 1013
    :cond_a
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1502(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 1014
    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1602(Lcom/google/googlex/glass/common/proto/SyncResponse;I)I

    .line 1015
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onBuilt()V

    .line 1016
    return-object v1

    .line 970
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$602(Lcom/google/googlex/glass/common/proto/SyncResponse;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 905
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 907
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 908
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 909
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 913
    :goto_0
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 914
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 915
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 916
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 917
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 918
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 919
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 920
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 921
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 922
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 923
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 924
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 925
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 926
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 927
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 929
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 930
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 931
    return-object p0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeleteFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1883
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1884
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1885
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1886
    return-object p0
.end method

.method public clearInsertFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1625
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1626
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1627
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1628
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1184
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1185
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1186
    return-object p0
.end method

.method public clearSelectContinuationToken()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 2202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2203
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2204
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2205
    return-object p0
.end method

.method public clearSelectMaxWriteTimestamp()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 2260
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2261
    return-object p0
.end method

.method public clearSelectStartTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 2149
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2150
    return-object p0
.end method

.method public clearSelectedItems()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1400
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1404
    :goto_0
    return-object p0

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSyncContinuationToken()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 2091
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2092
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2093
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2094
    return-object p0
.end method

.method public clearSyncEndTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2028
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2029
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 2030
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2031
    return-object p0
.end method

.method public clearSyncStartTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 1964
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1965
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 1966
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1967
    return-object p0
.end method

.method public clearUpdateFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1754
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1755
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1756
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1757
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 935
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

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
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1

    .prologue
    .line 944
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteFailedItemIdsList()Ljava/util/List;
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
    .line 1793
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 940
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInsertFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInsertFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertFailedItemIdsList()Ljava/util/List;
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
    .line 1535
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method

.method public getSelectContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 2231
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public getSelectStartTime()J
    .locals 2

    .prologue
    .line 2120
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    return-wide v0
.end method

.method public getSelectedItems(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public getSelectedItemsBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    return-object v0
.end method

.method public getSelectedItemsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemsOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    .line 1448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    goto :goto_0
.end method

.method public getSelectedItemsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1464
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSyncContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncEndTime()J
    .locals 2

    .prologue
    .line 1997
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    return-wide v0
.end method

.method public getSyncStartTime()J
    .locals 2

    .prologue
    .line 1933
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    return-wide v0
.end method

.method public getUpdateFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateFailedItemIdsList()Ljava/util/List;
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
    .line 1664
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1147
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectContinuationToken()Z
    .locals 2

    .prologue
    .line 2163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method public hasSelectMaxWriteTimestamp()Z
    .locals 2

    .prologue
    .line 2219
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method public hasSelectStartTime()Z
    .locals 2

    .prologue
    .line 2108
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method public hasSyncContinuationToken()Z
    .locals 2

    .prologue
    .line 2046
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method public hasSyncEndTime()Z
    .locals 2

    .prologue
    .line 1983
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method public hasSyncStartTime()Z
    .locals 2

    .prologue
    .line 1919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 879
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->hasResponseCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1029
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1108
    :goto_0
    return-object p0

    .line 1030
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasResponseCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_d

    .line 1034
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1036
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1037
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1042
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1059
    :cond_2
    :goto_2
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1061
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1062
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1067
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1069
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1071
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1072
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1077
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1079
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1080
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1081
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1082
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1087
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1089
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncStartTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1090
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1092
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncEndTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1093
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1095
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1096
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1098
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectStartTime()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1099
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1101
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1102
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1104
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectMaxWriteTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1105
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1107
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1039
    :cond_c
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1045
    :cond_d
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1047
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1048
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1049
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1050
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1051
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1055
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1064
    :cond_10
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1065
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1074
    :cond_11
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1075
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1084
    :cond_12
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1085
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    const/4 v2, 0x0

    .line 1125
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/SyncResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    if-eqz v2, :cond_0

    .line 1131
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1134
    :cond_0
    return-object p0

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v2, v0

    .line 1128
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1130
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1131
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1020
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    if-eqz v0, :cond_0

    .line 1021
    check-cast p1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object p0

    .line 1024
    .end local p0
    :goto_0
    return-object p0

    .line 1023
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
    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

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
    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

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
    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

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
    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSelectedItems(I)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1416
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1417
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1418
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1422
    :goto_0
    return-object p0

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setDeleteFailedItemIds(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1835
    if-nez p2, :cond_0

    .line 1836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1838
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1839
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1840
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1841
    return-object p0
.end method

.method public setInsertFailedItemIds(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1577
    if-nez p2, :cond_0

    .line 1578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1580
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1581
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1583
    return-object p0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1167
    if-nez p1, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1171
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1172
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1173
    return-object p0
.end method

.method public setSelectContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2185
    if-nez p1, :cond_0

    .line 2186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2188
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2189
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2191
    return-object p0
.end method

.method public setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2243
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2244
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 2245
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2246
    return-object p0
.end method

.method public setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2132
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2133
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 2134
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2135
    return-object p0
.end method

.method public setSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1280
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1281
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1285
    :goto_0
    return-object p0

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1257
    if-nez p2, :cond_0

    .line 1258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1260
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1261
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1266
    :goto_0
    return-object p0

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSyncContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2072
    if-nez p1, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2075
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2076
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2077
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2078
    return-object p0
.end method

.method public setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2011
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2012
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 2013
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2014
    return-object p0
.end method

.method public setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1947
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1948
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 1949
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1950
    return-object p0
.end method

.method public setUpdateFailedItemIds(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1706
    if-nez p2, :cond_0

    .line 1707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1709
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1710
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1712
    return-object p0
.end method
