.class public final Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GetTimeZoneRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GetTimeZoneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GetTimeZoneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latitude_:D

.field private longitude_:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 312
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 313
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 318
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    .line 352
    .local v0, result:Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 355
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    .locals 5

    .prologue
    .line 359
    new-instance v1, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$1;)V

    .line 360
    .local v1, result:Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 361
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 362
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 363
    or-int/lit8 v2, v2, 0x1

    .line 365
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->latitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->access$502(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;D)D

    .line 366
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 367
    or-int/lit8 v2, v2, 0x2

    .line 369
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->longitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->access$602(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;D)D

    .line 370
    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->access$702(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;I)I

    .line 371
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->onBuilt()V

    .line 372
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 329
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 330
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->latitude_:D

    .line 331
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 332
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->longitude_:D

    .line 333
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 334
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->latitude_:D

    .line 463
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->onChanged()V

    .line 464
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->longitude_:D

    .line 511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->onChanged()V

    .line 512
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

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
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->longitude_:D

    return-wide v0
.end method

.method public hasLatitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 385
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 393
    :goto_0
    return-object p0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    .line 392
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v2, 0x0

    .line 406
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    .line 415
    :cond_0
    return-object p0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    move-object v2, v0

    .line 409
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 376
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    if-eqz v0, :cond_0

    .line 377
    check-cast p1, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object p0

    .line 380
    .end local p0
    :goto_0
    return-object p0

    .line 379
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
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

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
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

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
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

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
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 448
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 449
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->latitude_:D

    .line 450
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->onChanged()V

    .line 451
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->bitField0_:I

    .line 497
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->longitude_:D

    .line 498
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneRequest$Builder;->onChanged()V

    .line 499
    return-object p0
.end method
