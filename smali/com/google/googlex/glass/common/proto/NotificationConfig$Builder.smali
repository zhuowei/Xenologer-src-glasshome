.class public final Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NotificationConfig.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/NotificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deliveryTime_:J

.field private level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 505
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 398
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->maybeForceBuilderInitialization()V

    .line 399
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 505
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 404
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->maybeForceBuilderInitialization()V

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/NotificationConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->create()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_NotificationConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    .line 438
    .local v0, result:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 441
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->build()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->build()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 5

    .prologue
    .line 445
    new-instance v1, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/NotificationConfig;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/NotificationConfig$1;)V

    .line 446
    .local v1, result:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 447
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 448
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 449
    or-int/lit8 v2, v2, 0x1

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    #setter for: Lcom/google/googlex/glass/common/proto/NotificationConfig;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->access$502(Lcom/google/googlex/glass/common/proto/NotificationConfig;Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 452
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 453
    or-int/lit8 v2, v2, 0x2

    .line 455
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->deliveryTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/NotificationConfig;->deliveryTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->access$602(Lcom/google/googlex/glass/common/proto/NotificationConfig;J)J

    .line 456
    #setter for: Lcom/google/googlex/glass/common/proto/NotificationConfig;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->access$702(Lcom/google/googlex/glass/common/proto/NotificationConfig;I)I

    .line 457
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->onBuilt()V

    .line 458
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 416
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 418
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->deliveryTime_:J

    .line 419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 420
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clear()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clear()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clear()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clear()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeliveryTime()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 591
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->deliveryTime_:J

    .line 592
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->onChanged()V

    .line 593
    return-object p0
.end method

.method public clearLevel()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 535
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->onChanged()V

    .line 537
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->create()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

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
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->clone()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 563
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->deliveryTime_:J

    return-wide v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_NotificationConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLevel()Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    return-object v0
.end method

.method public hasDeliveryTime()Z
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

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

.method public hasLevel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 510
    iget v1, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

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
    .line 391
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_NotificationConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    const-class v2, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 471
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 479
    :goto_0
    return-object p0

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getLevel()Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->setLevel(Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    .line 475
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->hasDeliveryTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDeliveryTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    .line 478
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v2, 0x0

    .line 492
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/NotificationConfig;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/NotificationConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    .line 501
    :cond_0
    return-object p0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-object v2, v0

    .line 495
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 462
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    if-eqz v0, :cond_0

    .line 463
    check-cast p1, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object p0

    .line 466
    .end local p0
    :goto_0
    return-object p0

    .line 465
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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 576
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->deliveryTime_:J

    .line 577
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->onChanged()V

    .line 578
    return-object p0
.end method

.method public setLevel(Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->bitField0_:I

    .line 526
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->level_:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 527
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->onChanged()V

    .line 528
    return-object p0
.end method
