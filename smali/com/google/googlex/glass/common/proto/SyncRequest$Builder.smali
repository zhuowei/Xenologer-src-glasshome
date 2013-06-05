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
    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 768
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 514
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 515
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 768
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 520
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteIsMutable()V
    .locals 2

    .prologue
    .line 1367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1369
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1371
    :cond_0
    return-void
.end method

.method private ensureInsertReplaceOnConflictIsMutable()V
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 889
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 891
    :cond_0
    return-void
.end method

.method private ensureUpdateIsMutable()V
    .locals 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1129
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1131
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
    .line 1592
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1593
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

    .line 1599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1593
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 502
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
    .line 1112
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1113
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

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1113
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
    .line 873
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 881
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
    .line 1352
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1353
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

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getSelectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 525
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 526
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 527
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 529
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
    .line 1503
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Delete;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1505
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1507
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1511
    :goto_0
    return-object p0

    .line 1509
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
    .line 1023
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1024
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1025
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1027
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1031
    :goto_0
    return-object p0

    .line 1029
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
    .line 1263
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Update;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1264
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1265
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1267
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1271
    :goto_0
    return-object p0

    .line 1269
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
    .line 1489
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1490
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1491
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1492
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1496
    :goto_0
    return-object p0

    .line 1494
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
    .line 1458
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1459
    if-nez p2, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1462
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1463
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1464
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1468
    :goto_0
    return-object p0

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(Lcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1482
    :goto_0
    return-object p0

    .line 1480
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
    .line 1441
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1442
    if-nez p1, :cond_0

    .line 1443
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1445
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1446
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1451
    :goto_0
    return-object p0

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDeleteBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2

    .prologue
    .line 1571
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
    .line 1579
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
    .line 1009
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1011
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1012
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1016
    :goto_0
    return-object p0

    .line 1014
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
    .line 978
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 979
    if-nez p2, :cond_0

    .line 980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 983
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 984
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 988
    :goto_0
    return-object p0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflict(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 997
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1002
    :goto_0
    return-object p0

    .line 1000
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
    .line 961
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 962
    if-nez p1, :cond_0

    .line 963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 965
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 966
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 971
    :goto_0
    return-object p0

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflictBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2

    .prologue
    .line 1091
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
    .line 1099
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
    .line 1249
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1250
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1251
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1252
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1256
    :goto_0
    return-object p0

    .line 1254
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
    .line 1218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1219
    if-nez p2, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1222
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1224
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1228
    :goto_0
    return-object p0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdate(Lcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1242
    :goto_0
    return-object p0

    .line 1240
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
    .line 1201
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1202
    if-nez p1, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1205
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1206
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1211
    :goto_0
    return-object p0

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdateBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2

    .prologue
    .line 1331
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
    .line 1339
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
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    .line 580
    .local v0, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 583
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 5

    .prologue
    .line 587
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V

    .line 588
    .local v1, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 589
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 590
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 591
    or-int/lit8 v2, v2, 0x1

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 594
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    .line 598
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 599
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 600
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 601
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 603
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 607
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 608
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 609
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 610
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 612
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 616
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_8

    .line 617
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 618
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 619
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 621
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$802(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 625
    :goto_3
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 626
    or-int/lit8 v2, v2, 0x2

    .line 628
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$902(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1002(Lcom/google/googlex/glass/common/proto/SyncRequest;I)I

    .line 630
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onBuilt()V

    .line 631
    return-object v1

    .line 596
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0

    .line 605
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 614
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 623
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
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 536
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 541
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 542
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 544
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 550
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 554
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3

    .line 555
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 556
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 560
    :goto_3
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 561
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 562
    return-object p0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDelete()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1519
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1520
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1524
    :goto_0
    return-object p0

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1684
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1685
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1686
    return-object p0
.end method

.method public clearInsertReplaceOnConflict()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1039
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1040
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1044
    :goto_0
    return-object p0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSelect()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 841
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 842
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 846
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 847
    return-object p0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUpdate()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1279
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1280
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1284
    :goto_0
    return-object p0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2

    .prologue
    .line 566
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
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 496
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
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1

    .prologue
    .line 575
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDelete(I)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "index"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    .line 1403
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
    .line 1544
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
    .line 1587
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1393
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
    .line 1380
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1383
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
    .line 1551
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;

    .line 1553
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
    .line 1561
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1564
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
    .line 571
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1626
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1627
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1632
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

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1646
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1647
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1650
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1653
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
    .line 920
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    .line 923
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
    .line 1064
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
    .line 1107
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInsertReplaceOnConflictCount()I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 913
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
    .line 900
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 903
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
    .line 1071
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;

    .line 1073
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
    .line 1081
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1084
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
    .line 781
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 784
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
    .line 853
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 855
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
    .line 861
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SelectOrBuilder;

    .line 864
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
    .line 1160
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    .line 1163
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
    .line 1304
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
    .line 1347
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1153
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
    .line 1140
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1143
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
    .line 1311
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;

    .line 1313
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
    .line 1321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1324
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
    .line 1614
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

    .line 775
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
    .line 507
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

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->hasDeviceId()Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v1

    .line 740
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 741
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 732
    :goto_0
    return-object p0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSelect()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_7

    .line 649
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 651
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 652
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 657
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 674
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 675
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 677
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 678
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 683
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 700
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_f

    .line 701
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 703
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 704
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 709
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 726
    :cond_4
    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 728
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$900(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 729
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 731
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 654
    :cond_6
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 655
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 660
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 663
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 664
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 665
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 666
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

    .line 670
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 680
    :cond_a
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 681
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 686
    :cond_b
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 688
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 689
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 690
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 692
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

    .line 696
    :cond_d
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 706
    :cond_e
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 707
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 712
    :cond_f
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 714
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 715
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 716
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 717
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 718
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 722
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
    .line 753
    const/4 v2, 0x0

    .line 755
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

    .line 760
    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 764
    :cond_0
    return-object p0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-object v2, v0

    .line 758
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 761
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 635
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    if-eqz v0, :cond_0

    .line 636
    check-cast p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object p0

    .line 639
    .end local p0
    :goto_0
    return-object p0

    .line 638
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
    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
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
    .line 496
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
    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
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
    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 822
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Select;->newBuilder(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 833
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 834
    return-object p0

    .line 827
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeDelete(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1531
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1537
    :goto_0
    return-object p0

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeInsertReplaceOnConflict(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1052
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1053
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1057
    :goto_0
    return-object p0

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUpdate(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1291
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1292
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1297
    :goto_0
    return-object p0

    .line 1295
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
    .line 1428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1429
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1430
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1435
    :goto_0
    return-object p0

    .line 1433
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
    .line 1411
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1412
    if-nez p2, :cond_0

    .line 1413
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1415
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1416
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1417
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1421
    :goto_0
    return-object p0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1669
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1670
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1671
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1672
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1698
    if-nez p1, :cond_0

    .line 1699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1701
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1702
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1703
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1704
    return-object p0
.end method

.method public setInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 950
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 955
    :goto_0
    return-object p0

    .line 953
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
    .line 931
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 932
    if-nez p2, :cond_0

    .line 933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 935
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 936
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 937
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 941
    :goto_0
    return-object p0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/Select$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 810
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 814
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 815
    return-object p0

    .line 812
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
    .line 791
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 792
    if-nez p1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 795
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 796
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 800
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 801
    return-object p0

    .line 798
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
    .line 1188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1190
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1195
    :goto_0
    return-object p0

    .line 1193
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
    .line 1171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1172
    if-nez p2, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1176
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1181
    :goto_0
    return-object p0

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
