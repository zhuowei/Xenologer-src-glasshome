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
    .line 882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1135
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1516
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1645
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1774
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 2031
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2150
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 883
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 884
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 888
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1135
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1516
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1645
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1774
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 2031
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2150
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 889
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 890
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 897
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1777
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1778
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1780
    :cond_0
    return-void
.end method

.method private ensureInsertFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1518
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1519
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1520
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1522
    :cond_0
    return-void
.end method

.method private ensureSelectedItemsIsMutable()V
    .locals 2

    .prologue
    .line 1189
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1191
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1193
    :cond_0
    return-void
.end method

.method private ensureUpdateFailedItemIdsIsMutable()V
    .locals 2

    .prologue
    .line 1647
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1648
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1649
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1651
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 871
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
    .line 1504
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1505
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

    .line 1511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1505
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 892
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 895
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
    .line 1866
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1867
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1869
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1870
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
    .line 1608
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1609
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1611
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1612
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
    .line 1375
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1376
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1377
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1379
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1383
    :goto_0
    return-object p0

    .line 1381
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
    .line 1737
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1738
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1740
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1741
    return-object p0
.end method

.method public addDeleteFailedItemIds(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1849
    if-nez p1, :cond_0

    .line 1850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1852
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1855
    return-object p0
.end method

.method public addDeleteFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1894
    if-nez p1, :cond_0

    .line 1895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1897
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1898
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1899
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1900
    return-object p0
.end method

.method public addInsertFailedItemIds(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1591
    if-nez p1, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1594
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1595
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1596
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1597
    return-object p0
.end method

.method public addInsertFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1636
    if-nez p1, :cond_0

    .line 1637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1639
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1640
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1642
    return-object p0
.end method

.method public addSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1357
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1358
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1359
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1363
    :goto_0
    return-object p0

    .line 1361
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
    .line 1315
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1316
    if-nez p2, :cond_0

    .line 1317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1319
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1320
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1321
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1325
    :goto_0
    return-object p0

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1338
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1339
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1344
    :goto_0
    return-object p0

    .line 1342
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
    .line 1293
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1294
    if-nez p1, :cond_0

    .line 1295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1298
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1303
    :goto_0
    return-object p0

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSelectedItemsBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2

    .prologue
    .line 1473
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
    .line 1486
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
    .line 1720
    if-nez p1, :cond_0

    .line 1721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1723
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1724
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1726
    return-object p0
.end method

.method public addUpdateFailedItemIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1765
    if-nez p1, :cond_0

    .line 1766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1768
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1769
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1770
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1771
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 2

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    .line 946
    .local v0, result:Lcom/google/googlex/glass/common/proto/SyncResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 949
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 5

    .prologue
    .line 953
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V

    .line 954
    .local v1, result:Lcom/google/googlex/glass/common/proto/SyncResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 955
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 956
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 957
    or-int/lit8 v2, v2, 0x1

    .line 959
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$502(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 960
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 961
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 962
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 963
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 965
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$602(Lcom/google/googlex/glass/common/proto/SyncResponse;Ljava/util/List;)Ljava/util/List;

    .line 969
    :goto_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 970
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 972
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 974
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$702(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 975
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 976
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 978
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 980
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$802(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 981
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 982
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 984
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 986
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$902(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 987
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 988
    or-int/lit8 v2, v2, 0x2

    .line 990
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1002(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 991
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 992
    or-int/lit8 v2, v2, 0x4

    .line 994
    :cond_6
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1102(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 995
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 996
    or-int/lit8 v2, v2, 0x8

    .line 998
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1202(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 999
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1000
    or-int/lit8 v2, v2, 0x10

    .line 1002
    :cond_8
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1302(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 1003
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1004
    or-int/lit8 v2, v2, 0x20

    .line 1006
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1402(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1007
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1008
    or-int/lit8 v2, v2, 0x40

    .line 1010
    :cond_a
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1502(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J

    .line 1011
    #setter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1602(Lcom/google/googlex/glass/common/proto/SyncResponse;I)I

    .line 1012
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onBuilt()V

    .line 1013
    return-object v1

    .line 967
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
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 901
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 902
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 903
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 904
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 910
    :goto_0
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 911
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 912
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 913
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 914
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 915
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 916
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 917
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 918
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 920
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 921
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 922
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 923
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 924
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 925
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 926
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 927
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 928
    return-object p0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeleteFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1880
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1881
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1882
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1883
    return-object p0
.end method

.method public clearInsertFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1622
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1623
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1624
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1625
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1181
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1182
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1183
    return-object p0
.end method

.method public clearSelectContinuationToken()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 2199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2200
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2201
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2202
    return-object p0
.end method

.method public clearSelectMaxWriteTimestamp()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2255
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 2257
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2258
    return-object p0
.end method

.method public clearSelectStartTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 2146
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2147
    return-object p0
.end method

.method public clearSelectedItems()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1397
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1401
    :goto_0
    return-object p0

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSyncContinuationToken()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2089
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2090
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2091
    return-object p0
.end method

.method public clearSyncEndTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 2025
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2026
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 2027
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2028
    return-object p0
.end method

.method public clearSyncStartTime()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 1961
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1962
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 1963
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1964
    return-object p0
.end method

.method public clearUpdateFailedItemIds()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 1751
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1753
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1754
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2

    .prologue
    .line 932
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
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 865
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
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1

    .prologue
    .line 941
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1810
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
    .line 1821
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1800
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
    .line 1790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 937
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInsertFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1552
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
    .line 1563
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1542
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
    .line 1532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method

.method public getSelectContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 2228
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public getSelectStartTime()J
    .locals 2

    .prologue
    .line 2117
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    return-wide v0
.end method

.method public getSelectedItems(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1240
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
    .line 1431
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
    .line 1499
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1225
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
    .line 1207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1210
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
    .line 1443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    .line 1445
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
    .line 1458
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1461
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
    .line 2056
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncEndTime()J
    .locals 2

    .prologue
    .line 1994
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    return-wide v0
.end method

.method public getSyncStartTime()J
    .locals 2

    .prologue
    .line 1930
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    return-wide v0
.end method

.method public getUpdateFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1681
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
    .line 1692
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 1671
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
    .line 1661
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1144
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
    .line 2160
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
    .line 2216
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
    .line 2105
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
    .line 2043
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
    .line 1980
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
    .line 1916
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
    .line 876
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
    .line 1109
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->hasResponseCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    const/4 v0, 0x0

    .line 1113
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

    .line 1026
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1105
    :goto_0
    return-object p0

    .line 1027
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasResponseCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_d

    .line 1031
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1033
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1034
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1039
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1056
    :cond_2
    :goto_2
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1058
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1059
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1064
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1066
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1068
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1069
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1074
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1076
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1077
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1078
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 1079
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1084
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1086
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncStartTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1087
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1089
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncEndTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1090
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1092
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSyncContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1093
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSyncContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSyncContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1095
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectStartTime()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1096
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1098
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1099
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1101
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasSelectMaxWriteTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1102
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1104
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1036
    :cond_c
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1037
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1042
    :cond_d
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1044
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1045
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1046
    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    .line 1047
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1048
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->getSelectedItemsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1052
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1061
    :cond_10
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1062
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1071
    :cond_11
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1072
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1081
    :cond_12
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1082
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
    .line 1120
    const/4 v2, 0x0

    .line 1122
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

    .line 1127
    if-eqz v2, :cond_0

    .line 1128
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    .line 1131
    :cond_0
    return-object p0

    .line 1123
    :catch_0
    move-exception v1

    .line 1124
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v2, v0

    .line 1125
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1128
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1017
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    if-eqz v0, :cond_0

    .line 1018
    check-cast p1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object p0

    .line 1021
    .end local p0
    :goto_0
    return-object p0

    .line 1020
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
    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
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
    .line 865
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
    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
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
    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSelectedItems(I)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1413
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1414
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1415
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1419
    :goto_0
    return-object p0

    .line 1417
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
    .line 1832
    if-nez p2, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureDeleteFailedItemIdsIsMutable()V

    .line 1836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1837
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1838
    return-object p0
.end method

.method public setInsertFailedItemIds(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1574
    if-nez p2, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1577
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureInsertFailedItemIdsIsMutable()V

    .line 1578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1580
    return-object p0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1164
    if-nez p1, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1167
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1168
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 1169
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1170
    return-object p0
.end method

.method public setSelectContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2182
    if-nez p1, :cond_0

    .line 2183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2185
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2186
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2187
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2188
    return-object p0
.end method

.method public setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2241
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectMaxWriteTimestamp_:J

    .line 2242
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2243
    return-object p0
.end method

.method public setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2129
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2130
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectStartTime_:J

    .line 2131
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2132
    return-object p0
.end method

.method public setSelectedItems(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1282
    :goto_0
    return-object p0

    .line 1280
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
    .line 1253
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1254
    if-nez p2, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1257
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureSelectedItemsIsMutable()V

    .line 1258
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1263
    :goto_0
    return-object p0

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->selectedItemsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSyncContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2069
    if-nez p1, :cond_0

    .line 2070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2072
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2073
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 2074
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2075
    return-object p0
.end method

.method public setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2008
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 2009
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncEndTime_:J

    .line 2010
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 2011
    return-object p0
.end method

.method public setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1944
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->bitField0_:I

    .line 1945
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->syncStartTime_:J

    .line 1946
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1947
    return-object p0
.end method

.method public setUpdateFailedItemIds(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1703
    if-nez p2, :cond_0

    .line 1704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1706
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->ensureUpdateFailedItemIdsIsMutable()V

    .line 1707
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1708
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->onChanged()V

    .line 1709
    return-object p0
.end method
