.class public final Lcom/google/glass/proto/LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LatLng.java"

# interfaces
.implements Lcom/google/glass/proto/LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/glass/proto/LatLng$Builder;",
        ">;",
        "Lcom/google/glass/proto/LatLngOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private lat_:D

.field private lng_:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 294
    invoke-direct {p0}, Lcom/google/glass/proto/LatLng$Builder;->maybeForceBuilderInitialization()V

    .line 295
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 300
    invoke-direct {p0}, Lcom/google/glass/proto/LatLng$Builder;->maybeForceBuilderInitialization()V

    .line 301
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/LatLng$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/glass/proto/LatLng$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/LatLng$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/google/glass/proto/LatLng$Builder;->create()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/LatLng$Builder;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/glass/proto/LatLng$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/LatLng$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/google/glass/proto/LatLng;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/proto/LatLng;
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    .line 334
    .local v0, result:Lcom/google/glass/proto/LatLng;
    invoke-virtual {v0}, Lcom/google/glass/proto/LatLng;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {v0}, Lcom/google/glass/proto/LatLng$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 337
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/LatLng;
    .locals 5

    .prologue
    .line 341
    new-instance v1, Lcom/google/glass/proto/LatLng;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/LatLng;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/LatLng$1;)V

    .line 342
    .local v1, result:Lcom/google/glass/proto/LatLng;
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 343
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 344
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 345
    or-int/lit8 v2, v2, 0x1

    .line 347
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/proto/LatLng$Builder;->lat_:D

    #setter for: Lcom/google/glass/proto/LatLng;->lat_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/LatLng;->access$502(Lcom/google/glass/proto/LatLng;D)D

    .line 348
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 349
    or-int/lit8 v2, v2, 0x2

    .line 351
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/proto/LatLng$Builder;->lng_:D

    #setter for: Lcom/google/glass/proto/LatLng;->lng_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/LatLng;->access$602(Lcom/google/glass/proto/LatLng;D)D

    .line 352
    #setter for: Lcom/google/glass/proto/LatLng;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/LatLng;->access$702(Lcom/google/glass/proto/LatLng;I)I

    .line 353
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->onBuilt()V

    .line 354
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/LatLng$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 312
    iput-wide v1, p0, Lcom/google/glass/proto/LatLng$Builder;->lat_:D

    .line 313
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 314
    iput-wide v1, p0, Lcom/google/glass/proto/LatLng$Builder;->lng_:D

    .line 315
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 316
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clear()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clear()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clear()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clear()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLat()Lcom/google/glass/proto/LatLng$Builder;
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 428
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/LatLng$Builder;->lat_:D

    .line 429
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->onChanged()V

    .line 430
    return-object p0
.end method

.method public clearLng()Lcom/google/glass/proto/LatLng$Builder;
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 460
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/LatLng$Builder;->lng_:D

    .line 461
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->onChanged()V

    .line 462
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/LatLng$Builder;
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/glass/proto/LatLng$Builder;->create()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

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
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->clone()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/google/glass/proto/LatLng$Builder;->lat_:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/google/glass/proto/LatLng$Builder;->lng_:D

    return-wide v0
.end method

.method public hasLat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 406
    iget v1, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLng()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

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
    .line 287
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/LatLng;

    const-class v2, Lcom/google/glass/proto/LatLng$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 367
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 375
    :goto_0
    return-object p0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng;->hasLat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng;->getLat()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLat(D)Lcom/google/glass/proto/LatLng$Builder;

    .line 371
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng;->hasLng()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng;->getLng()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLng(D)Lcom/google/glass/proto/LatLng$Builder;

    .line 374
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/LatLng$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/LatLng$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 388
    .local v2, parsedMessage:Lcom/google/glass/proto/LatLng;
    :try_start_0
    sget-object v3, Lcom/google/glass/proto/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/LatLng;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    .line 397
    :cond_0
    return-object p0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/LatLng;

    move-object v2, v0

    .line 391
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 394
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/LatLng$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 358
    instance-of v0, p1, Lcom/google/glass/proto/LatLng;

    if-eqz v0, :cond_0

    .line 359
    check-cast p1, Lcom/google/glass/proto/LatLng;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object p0

    .line 362
    .end local p0
    :goto_0
    return-object p0

    .line 361
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
    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/LatLng$Builder;

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
    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/LatLng$Builder;

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
    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/LatLng$Builder;

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
    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLat(D)Lcom/google/glass/proto/LatLng$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 418
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 419
    iput-wide p1, p0, Lcom/google/glass/proto/LatLng$Builder;->lat_:D

    .line 420
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->onChanged()V

    .line 421
    return-object p0
.end method

.method public setLng(D)Lcom/google/glass/proto/LatLng$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 450
    iget v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/LatLng$Builder;->bitField0_:I

    .line 451
    iput-wide p1, p0, Lcom/google/glass/proto/LatLng$Builder;->lng_:D

    .line 452
    invoke-virtual {p0}, Lcom/google/glass/proto/LatLng$Builder;->onChanged()V

    .line 453
    return-object p0
.end method
