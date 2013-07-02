.class public final Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SyncRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SyncRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            "Lcom/google/googlex/glass/common/proto/Delete$Builder;",
            "Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private delete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId_:Ljava/lang/Object;

.field private insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private insertReplaceOnConflict_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation
.end field

.field private selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Select;",
            "Lcom/google/googlex/glass/common/proto/Select$Builder;",
            "Lcom/google/googlex/glass/common/proto/SelectOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lcom/google/googlex/glass/common/proto/Select;

.field private updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            "Lcom/google/googlex/glass/common/proto/Update$Builder;",
            "Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private update_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 769
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 515
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 516
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 769
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 521
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteIsMutable()V
    .locals 2

    .prologue
    .line 1368
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1369
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1372
    :cond_0
    return-void
.end method

.method private ensureInsertReplaceOnConflictIsMutable()V
    .locals 2

    .prologue
    .line 888
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 890
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 892
    :cond_0
    return-void
.end method

.method private ensureUpdateIsMutable()V
    .locals 2

    .prologue
    .line 1128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1130
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1132
    :cond_0
    return-void
.end method

.method private getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            "Lcom/google/googlex/glass/common/proto/Delete$Builder;",
            "Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1594
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1114
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Select;",
            "Lcom/google/googlex/glass/common/proto/Select$Builder;",
            "Lcom/google/googlex/glass/common/proto/SelectOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            "Lcom/google/googlex/glass/common/proto/Update$Builder;",
            "Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1354
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 524
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getSelectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 526
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 527
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 528
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDelete(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1504
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Delete;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1505
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1512
    :goto_0
    return-object p0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllInsertReplaceOnConflict(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1026
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1028
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1032
    :goto_0
    return-object p0

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllUpdate(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Update;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1266
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1268
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1272
    :goto_0
    return-object p0

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(ILcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1491
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1492
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1493
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1497
    :goto_0
    return-object p0

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(ILcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1460
    if-nez p2, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1464
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1465
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1469
    :goto_0
    return-object p0

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(Lcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1478
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1483
    :goto_0
    return-object p0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1443
    if-nez p1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1452
    :goto_0
    return-object p0

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDeleteBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    return-object v0
.end method

.method public addDeleteBuilder(I)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1580
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    return-object v0
.end method

.method public addInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1012
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1013
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1017
    :goto_0
    return-object p0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 980
    if-nez p2, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 984
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 985
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 989
    :goto_0
    return-object p0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflict(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 997
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 998
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1003
    :goto_0
    return-object p0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflict(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 963
    if-nez p1, :cond_0

    .line 964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 967
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 972
    :goto_0
    return-object p0

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflictBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    return-object v0
.end method

.method public addInsertReplaceOnConflictBuilder(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    return-object v0
.end method

.method public addUpdate(ILcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1251
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1252
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1253
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1257
    :goto_0
    return-object p0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdate(ILcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1220
    if-nez p2, :cond_0

    .line 1221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1224
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1225
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1229
    :goto_0
    return-object p0

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdate(Lcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1238
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1243
    :goto_0
    return-object p0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdate(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1203
    if-nez p1, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1206
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1212
    :goto_0
    return-object p0

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdateBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    return-object v0
.end method

.method public addUpdateBuilder(I)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    .line 581
    .local v0, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 584
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 5

    .prologue
    .line 588
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V

    .line 589
    .local v1, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 590
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 591
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 592
    or-int/lit8 v2, v2, 0x1

    .line 594
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 595
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    .line 599
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 600
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 601
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 602
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 608
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 609
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 610
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 611
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 613
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 617
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_8

    .line 618
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 619
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 620
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 622
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$802(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 626
    :goto_3
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 627
    or-int/lit8 v2, v2, 0x2

    .line 629
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$902(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1002(Lcom/google/googlex/glass/common/proto/SyncRequest;I)I

    .line 631
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onBuilt()V

    .line 632
    return-object v1

    .line 597
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0

    .line 606
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 615
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 624
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$802(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_3
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 537
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 538
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 542
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 549
    :goto_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 555
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3

    .line 556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 557
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 561
    :goto_3
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 562
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 563
    return-object p0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDelete()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1519
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1520
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1521
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1525
    :goto_0
    return-object p0

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1688
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1689
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1690
    return-object p0
.end method

.method public clearInsertReplaceOnConflict()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1040
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1041
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1045
    :goto_0
    return-object p0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSelect()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 842
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 843
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 847
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 848
    return-object p0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUpdate()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1280
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1281
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1285
    :goto_0
    return-object p0

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

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
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDelete(I)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "index"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    .line 1404
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    goto :goto_0
.end method

.method public getDeleteBuilder(I)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    return-object v0
.end method

.method public getDeleteBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1394
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeleteOrBuilder(I)Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;

    .line 1554
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;

    goto :goto_0
.end method

.method public getDeleteOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1565
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1628
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1630
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1631
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1632
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1636
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

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1650
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1651
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1654
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1657
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

.method public getInsertReplaceOnConflict(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "index"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    .line 924
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    goto :goto_0
.end method

.method public getInsertReplaceOnConflictBuilder(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    return-object v0
.end method

.method public getInsertReplaceOnConflictBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInsertReplaceOnConflictCount()I
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 914
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getInsertReplaceOnConflictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getInsertReplaceOnConflictOrBuilder(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;

    .line 1074
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;

    goto :goto_0
.end method

.method public getInsertReplaceOnConflictOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1085
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelect()Lcom/google/googlex/glass/common/proto/Select;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0
.end method

.method public getSelectBuilder()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 855
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 856
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getSelectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Select$Builder;

    return-object v0
.end method

.method public getSelectOrBuilder()Lcom/google/googlex/glass/common/proto/SelectOrBuilder;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SelectOrBuilder;

    .line 865
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0
.end method

.method public getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "index"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    .line 1164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    goto :goto_0
.end method

.method public getUpdateBuilder(I)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    return-object v0
.end method

.method public getUpdateBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUpdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdateOrBuilder(I)Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;

    .line 1314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;

    goto :goto_0
.end method

.method public getUpdateOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 1615
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

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

.method public hasSelect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 776
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 508
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 737
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->hasDeviceId()Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v1

    .line 741
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 742
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 733
    :goto_0
    return-object p0

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSelect()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_7

    .line 650
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 653
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 658
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 675
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 676
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 678
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 679
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 684
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 701
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_f

    .line 702
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 703
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 704
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 710
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 727
    :cond_4
    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 728
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 729
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$900(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 732
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 655
    :cond_6
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 656
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 661
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 663
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 664
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 665
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 666
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 667
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_7

    .line 671
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 681
    :cond_a
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 682
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 687
    :cond_b
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 689
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 690
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 691
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 692
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 693
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto :goto_8

    .line 697
    :cond_d
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 707
    :cond_e
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 708
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 713
    :cond_f
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 715
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 716
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 717
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 718
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 719
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 723
    :cond_11
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    const/4 v2, 0x0

    .line 756
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/SyncRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 765
    :cond_0
    return-object p0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-object v2, v0

    .line 759
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 636
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    if-eqz v0, :cond_0

    .line 637
    check-cast p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object p0

    .line 640
    .end local p0
    :goto_0
    return-object p0

    .line 639
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
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

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
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

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
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

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
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 823
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Select;->newBuilder(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 830
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 834
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 835
    return-object p0

    .line 828
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeDelete(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1532
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1533
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1538
    :goto_0
    return-object p0

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeInsertReplaceOnConflict(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1058
    :goto_0
    return-object p0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUpdate(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1293
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1298
    :goto_0
    return-object p0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setDelete(ILcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1430
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1431
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1436
    :goto_0
    return-object p0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDelete(ILcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1413
    if-nez p2, :cond_0

    .line 1414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1416
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1417
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1418
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1422
    :goto_0
    return-object p0

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1670
    if-nez p1, :cond_0

    .line 1671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1673
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1674
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1676
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1702
    if-nez p1, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1705
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1706
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1707
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1708
    return-object p0
.end method

.method public setInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 951
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 956
    :goto_0
    return-object p0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 933
    if-nez p2, :cond_0

    .line 934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 937
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 942
    :goto_0
    return-object p0

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/Select$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 811
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 815
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 816
    return-object p0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 793
    if-nez p1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 796
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 797
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 801
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 802
    return-object p0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUpdate(ILcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1190
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1191
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1196
    :goto_0
    return-object p0

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUpdate(ILcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1173
    if-nez p2, :cond_0

    .line 1174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1176
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1177
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1182
    :goto_0
    return-object p0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
