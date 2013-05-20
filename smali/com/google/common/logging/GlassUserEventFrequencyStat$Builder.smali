.class public final Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlassUserEventFrequencyStat.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassUserEventFrequencyStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;",
        ">;",
        "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private frequencyHz_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 320
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->maybeForceBuilderInitialization()V

    .line 321
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 326
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->maybeForceBuilderInitialization()V

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventFrequencyStat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->create()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    .line 360
    .local v0, result:Lcom/google/common/logging/GlassUserEventFrequencyStat;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 363
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 5

    .prologue
    .line 367
    new-instance v1, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassUserEventFrequencyStat;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventFrequencyStat$1;)V

    .line 368
    .local v1, result:Lcom/google/common/logging/GlassUserEventFrequencyStat;
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 369
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 370
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 371
    or-int/lit8 v2, v2, 0x1

    .line 373
    :cond_0
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->frequencyHz_:J

    #setter for: Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->access$502(Lcom/google/common/logging/GlassUserEventFrequencyStat;J)J

    .line 374
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 375
    or-int/lit8 v2, v2, 0x2

    .line 377
    :cond_1
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->durationMs_:J

    #setter for: Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->access$602(Lcom/google/common/logging/GlassUserEventFrequencyStat;J)J

    .line 378
    #setter for: Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->access$702(Lcom/google/common/logging/GlassUserEventFrequencyStat;I)I

    .line 379
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->onBuilt()V

    .line 380
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 338
    iput-wide v1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->frequencyHz_:J

    .line 339
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 340
    iput-wide v1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->durationMs_:J

    .line 341
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 342
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clear()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clear()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clear()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clear()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDurationMs()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->durationMs_:J

    .line 531
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->onChanged()V

    .line 532
    return-object p0
.end method

.method public clearFrequencyHz()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 482
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->frequencyHz_:J

    .line 483
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->onChanged()V

    .line 484
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->create()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

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
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->clone()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->durationMs_:J

    return-wide v0
.end method

.method public getFrequencyHz()J
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->frequencyHz_:J

    return-wide v0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

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

.method public hasFrequencyHz()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 445
    iget v1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

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
    .line 313
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    const-class v2, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->hasFrequencyHz()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->hasDurationMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 393
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 401
    :goto_0
    return-object p0

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->hasFrequencyHz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getFrequencyHz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setFrequencyHz(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDurationMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setDurationMs(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    .line 400
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, parsedMessage:Lcom/google/common/logging/GlassUserEventFrequencyStat;
    :try_start_0
    sget-object v3, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    .line 431
    :cond_0
    return-object p0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-object v2, v0

    .line 425
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 384
    instance-of v0, p1, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    if-eqz v0, :cond_0

    .line 385
    check-cast p1, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object p0

    .line 388
    .end local p0
    :goto_0
    return-object p0

    .line 387
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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDurationMs(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 516
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 517
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->durationMs_:J

    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->onChanged()V

    .line 519
    return-object p0
.end method

.method public setFrequencyHz(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 467
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->bitField0_:I

    .line 468
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->frequencyHz_:J

    .line 469
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->onChanged()V

    .line 470
    return-object p0
.end method
