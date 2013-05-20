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

.field private supportsUserActions_:Z

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
    .line 551
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 552
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 553
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 559
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 569
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteIsMutable()V
    .locals 2

    .prologue
    .line 1414
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1416
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1418
    :cond_0
    return-void
.end method

.method private ensureInsertReplaceOnConflictIsMutable()V
    .locals 2

    .prologue
    .line 934
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 936
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 938
    :cond_0
    return-void
.end method

.method private ensureUpdateIsMutable()V
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1176
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1178
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
    .line 1639
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1640
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

    .line 1646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1640
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 540
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
    .line 1159
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1160
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

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1160
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
    .line 920
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 928
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
    .line 1399
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1400
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

    .line 1406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1400
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getSelectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 563
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 564
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 565
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 567
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
    .line 1550
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Delete;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1551
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1554
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1558
    :goto_0
    return-object p0

    .line 1556
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
    .line 1070
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1072
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1074
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1078
    :goto_0
    return-object p0

    .line 1076
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
    .line 1310
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Update;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1312
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1314
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1318
    :goto_0
    return-object p0

    .line 1316
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
    .line 1536
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1537
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1538
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1539
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1543
    :goto_0
    return-object p0

    .line 1541
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
    .line 1505
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1506
    if-nez p2, :cond_0

    .line 1507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1509
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1510
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1515
    :goto_0
    return-object p0

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDelete(Lcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1523
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1524
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1529
    :goto_0
    return-object p0

    .line 1527
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
    .line 1488
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1489
    if-nez p1, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1498
    :goto_0
    return-object p0

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDeleteBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2

    .prologue
    .line 1618
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
    .line 1626
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
    .line 1056
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1058
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1059
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1063
    :goto_0
    return-object p0

    .line 1061
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
    .line 1025
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1026
    if-nez p2, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1031
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1035
    :goto_0
    return-object p0

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflict(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1044
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1049
    :goto_0
    return-object p0

    .line 1047
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
    .line 1008
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1009
    if-nez p1, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1013
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1018
    :goto_0
    return-object p0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addInsertReplaceOnConflictBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2

    .prologue
    .line 1138
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
    .line 1146
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
    .line 1296
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1297
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1298
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1299
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1303
    :goto_0
    return-object p0

    .line 1301
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
    .line 1265
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1266
    if-nez p2, :cond_0

    .line 1267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1269
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1271
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1275
    :goto_0
    return-object p0

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdate(Lcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1283
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1284
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1289
    :goto_0
    return-object p0

    .line 1287
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
    .line 1248
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1249
    if-nez p1, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1253
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1258
    :goto_0
    return-object p0

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUpdateBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2

    .prologue
    .line 1378
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
    .line 1386
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
    .line 619
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    .line 620
    .local v0, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 623
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 5

    .prologue
    .line 627
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V

    .line 628
    .local v1, result:Lcom/google/googlex/glass/common/proto/SyncRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 629
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 630
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 631
    or-int/lit8 v2, v2, 0x1

    .line 633
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 634
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    .line 638
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 639
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 640
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 641
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 643
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 647
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_8

    .line 648
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 649
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 650
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 652
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 656
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_9

    .line 657
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 658
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 659
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 661
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$802(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    .line 665
    :goto_3
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 666
    or-int/lit8 v2, v2, 0x2

    .line 668
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$902(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 670
    or-int/lit8 v2, v2, 0x4

    .line 672
    :cond_5
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->supportsUserActions_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1002(Lcom/google/googlex/glass/common/proto/SyncRequest;Z)Z

    .line 673
    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1102(Lcom/google/googlex/glass/common/proto/SyncRequest;I)I

    .line 674
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onBuilt()V

    .line 675
    return-object v1

    .line 636
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Select;

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;

    goto/16 :goto_0

    .line 645
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 654
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 663
    :cond_9
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
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 574
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 575
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 579
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 580
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 586
    :goto_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 588
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 592
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 594
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 598
    :goto_3
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->supportsUserActions_:Z

    .line 601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 602
    return-object p0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDelete()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 1566
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1567
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1571
    :goto_0
    return-object p0

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1731
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1732
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1733
    return-object p0
.end method

.method public clearInsertReplaceOnConflict()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 1086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1091
    :goto_0
    return-object p0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSelect()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 888
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 889
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 893
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 894
    return-object p0

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSupportsUserActions()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1800
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->supportsUserActions_:Z

    .line 1802
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1803
    return-object p0
.end method

.method public clearUpdate()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 1326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1327
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1331
    :goto_0
    return-object p0

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2

    .prologue
    .line 606
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
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 534
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
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDelete(I)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "index"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    .line 1450
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
    .line 1591
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
    .line 1634
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1440
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
    .line 1427
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1430
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
    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;

    .line 1600
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
    .line 1608
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1611
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
    .line 611
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1673
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1674
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1679
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
    .line 1692
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1693
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1694
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1697
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1700
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
    .line 967
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    .line 970
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
    .line 1111
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
    .line 1154
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInsertReplaceOnConflictCount()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 960
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
    .line 947
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 950
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
    .line 1118
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;

    .line 1120
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
    .line 1128
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1131
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
    .line 828
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 831
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
    .line 900
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 902
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
    .line 908
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SelectOrBuilder;

    .line 911
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0
.end method

.method public getSupportsUserActions()Z
    .locals 1

    .prologue
    .line 1775
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->supportsUserActions_:Z

    return v0
.end method

.method public getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "index"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    .line 1210
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
    .line 1351
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
    .line 1394
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1200
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
    .line 1187
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1190
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
    .line 1358
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;

    .line 1360
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
    .line 1368
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1371
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
    .line 1661
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

    .line 822
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSupportsUserActions()Z
    .locals 2

    .prologue
    .line 1764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

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
    .line 545
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

    .line 783
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->hasDeviceId()Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v1

    .line 787
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 788
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 779
    :goto_0
    return-object p0

    .line 689
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSelect()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_8

    .line 693
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 695
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 696
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 701
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 718
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_c

    .line 719
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 721
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 722
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 727
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 744
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 745
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 747
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 748
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 753
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 770
    :cond_4
    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 771
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 772
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$900(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 773
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 775
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasSupportsUserActions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 776
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSupportsUserActions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->setSupportsUserActions(Z)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 778
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 698
    :cond_7
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 699
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 704
    :cond_8
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 706
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 707
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 708
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    .line 709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 710
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getInsertReplaceOnConflictFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_7

    .line 714
    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 724
    :cond_b
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 725
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 730
    :cond_c
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 732
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 733
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 734
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    .line 735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 736
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getUpdateFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    :cond_d
    move-object v0, v1

    goto :goto_8

    .line 740
    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 750
    :cond_f
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 751
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 756
    :cond_10
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 758
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 759
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 760
    #getter for: Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    .line 761
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 762
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_11
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 766
    :cond_12
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
    .line 800
    const/4 v2, 0x0

    .line 802
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

    .line 807
    if-eqz v2, :cond_0

    .line 808
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 811
    :cond_0
    return-object p0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-object v2, v0

    .line 805
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 808
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 679
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    if-eqz v0, :cond_0

    .line 680
    check-cast p1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object p0

    .line 683
    .end local p0
    :goto_0
    return-object p0

    .line 682
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
    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 534
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
    .line 534
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
    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 534
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
    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSelect(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 869
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Select;->newBuilder(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 876
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 880
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 881
    return-object p0

    .line 874
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeDelete(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1578
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1579
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1584
    :goto_0
    return-object p0

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeInsertReplaceOnConflict(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1098
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 1099
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1100
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1104
    :goto_0
    return-object p0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUpdate(I)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1338
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1339
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1344
    :goto_0
    return-object p0

    .line 1342
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
    .line 1475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureDeleteIsMutable()V

    .line 1477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->delete_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1478
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1482
    :goto_0
    return-object p0

    .line 1480
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

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1468
    :goto_0
    return-object p0

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1713
    if-nez p1, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1716
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1717
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1719
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1745
    if-nez p1, :cond_0

    .line 1746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1748
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1749
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1750
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1751
    return-object p0
.end method

.method public setInsertReplaceOnConflict(ILcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureInsertReplaceOnConflictIsMutable()V

    .line 997
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1002
    :goto_0
    return-object p0

    .line 1000
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

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 984
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 988
    :goto_0
    return-object p0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->insertReplaceOnConflictBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/Select$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 857
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 861
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 862
    return-object p0

    .line 859
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
    .line 838
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 839
    if-nez p1, :cond_0

    .line 840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 842
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 843
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 847
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 848
    return-object p0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->selectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSupportsUserActions(Z)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1786
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->bitField0_:I

    .line 1787
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->supportsUserActions_:Z

    .line 1788
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1789
    return-object p0
.end method

.method public setUpdate(ILcom/google/googlex/glass/common/proto/Update$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->ensureUpdateIsMutable()V

    .line 1237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->update_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1238
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1242
    :goto_0
    return-object p0

    .line 1240
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

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1224
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->onChanged()V

    .line 1228
    :goto_0
    return-object p0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->updateBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
