.class public final Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GetSessionIdResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GetSessionIdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GetSessionIdResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->maybeForceBuilderInitialization()V

    .line 294
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 299
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->maybeForceBuilderInitialization()V

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    .line 331
    .local v0, result:Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 334
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    .locals 5

    .prologue
    .line 338
    new-instance v1, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$1;)V

    .line 339
    .local v1, result:Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 340
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 341
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 342
    or-int/lit8 v2, v2, 0x1

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->access$502(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    #setter for: Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->access$602(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;I)I

    .line 346
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->onBuilt()V

    .line 347
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 312
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSessionId()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 448
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 449
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->onChanged()V

    .line 450
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

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
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 405
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 406
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 411
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

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 420
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 421
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 424
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 427
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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 398
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

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
    .line 286
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 360
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 367
    :goto_0
    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 363
    #getter for: Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->access$500(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->onChanged()V

    .line 366
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    .line 389
    :cond_0
    return-object p0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    move-object v2, v0

    .line 383
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 351
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    if-eqz v0, :cond_0

    .line 352
    check-cast p1, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object p0

    .line 355
    .end local p0
    :goto_0
    return-object p0

    .line 354
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
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

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
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

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
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

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
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 438
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 439
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->onChanged()V

    .line 441
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 460
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->bitField0_:I

    .line 461
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse$Builder;->onChanged()V

    .line 463
    return-object p0
.end method
