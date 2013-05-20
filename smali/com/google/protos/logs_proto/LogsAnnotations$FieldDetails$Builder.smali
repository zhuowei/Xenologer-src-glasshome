.class public final Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;",
        ">;",
        "Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private idType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1326
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->maybeForceBuilderInitialization()V

    .line 1327
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1332
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->maybeForceBuilderInitialization()V

    .line 1333
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1339
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIdTypeIsMutable()V
    .locals 2

    .prologue
    .line 1433
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1435
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1437
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1314
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1335
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllIdType(Ljava/lang/Iterable;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;",
            ">;)",
            "Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;>;"
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->ensureIdTypeIsMutable()V

    .line 1535
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1537
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onChanged()V

    .line 1538
    return-object p0
.end method

.method public addIdType(Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1513
    if-nez p1, :cond_0

    .line 1514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1516
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->ensureIdTypeIsMutable()V

    .line 1517
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onChanged()V

    .line 1519
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 2

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    .line 1364
    .local v0, result:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1367
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 4

    .prologue
    .line 1371
    new-instance v1, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 1372
    .local v1, result:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1373
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1374
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1375
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1377
    :cond_0
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->access$702(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;Ljava/util/List;)Ljava/util/List;

    .line 1378
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onBuilt()V

    .line 1379
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1345
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1346
    return-object p0
.end method

.method public clearIdType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1553
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1554
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onChanged()V

    .line 1555
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 2

    .prologue
    .line 1350
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

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
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1

    .prologue
    .line 1359
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1355
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIdType(I)Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    .locals 1
    .parameter "index"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    return-object v0
.end method

.method public getIdTypeCount()I
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIdTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1319
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x1

    return v0
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
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

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
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

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
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

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
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    const/4 v2, 0x0

    .line 1417
    .local v2, parsedMessage:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    :try_start_0
    sget-object v3, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    if-eqz v2, :cond_0

    .line 1423
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    .line 1426
    :cond_0
    return-object p0

    .line 1418
    :catch_0
    move-exception v1

    .line 1419
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-object v2, v0

    .line 1420
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1423
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1383
    instance-of v0, p1, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    if-eqz v0, :cond_0

    .line 1384
    check-cast p1, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object p0

    .line 1387
    .end local p0
    :goto_0
    return-object p0

    .line 1386
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1392
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1404
    :goto_0
    return-object p0

    .line 1393
    :cond_0
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->access$700(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->access$700(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    .line 1396
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->bitField0_:I

    .line 1401
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onChanged()V

    .line 1403
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1398
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->ensureIdTypeIsMutable()V

    .line 1399
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->access$700(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setIdType(ILcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1493
    if-nez p2, :cond_0

    .line 1494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1496
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->ensureIdTypeIsMutable()V

    .line 1497
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->idType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1498
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->onChanged()V

    .line 1499
    return-object p0
.end method
