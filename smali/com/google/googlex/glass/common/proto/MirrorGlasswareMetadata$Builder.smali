.class public final Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MirrorGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private projectId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 307
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 312
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_MirrorGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    .line 344
    .local v0, result:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 347
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 5

    .prologue
    .line 351
    new-instance v1, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;)V

    .line 352
    .local v1, result:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 353
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 354
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 355
    or-int/lit8 v2, v2, 0x1

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->access$502(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    #setter for: Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->access$602(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;I)I

    .line 359
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->onBuilt()V

    .line 360
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 325
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 326
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearProjectId()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 484
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->onChanged()V

    .line 486
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

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
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_MirrorGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 426
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 427
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 429
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 435
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

.method public getProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 448
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 449
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 452
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 455
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

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 415
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

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
    .line 299
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_MirrorGlasswareMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 373
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 380
    :goto_0
    return-object p0

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->hasProjectId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 376
    #getter for: Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->access$500(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->onChanged()V

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v2, 0x0

    .line 393
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    .line 402
    :cond_0
    return-object p0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-object v2, v0

    .line 396
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 364
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    if-eqz v0, :cond_0

    .line 365
    check-cast p1, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object p0

    .line 368
    .end local p0
    :goto_0
    return-object p0

    .line 367
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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 470
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 471
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 472
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->onChanged()V

    .line 473
    return-object p0
.end method

.method public setProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 500
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->bitField0_:I

    .line 501
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->projectId_:Ljava/lang/Object;

    .line 502
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->onChanged()V

    .line 503
    return-object p0
.end method
