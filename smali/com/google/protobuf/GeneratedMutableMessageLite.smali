.class public abstract Lcom/google/protobuf/GeneratedMutableMessageLite;
.super Lcom/google/protobuf/AbstractMutableMessageLite;
.source "GeneratedMutableMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMutableMessageLite$1;,
        Lcom/google/protobuf/GeneratedMutableMessageLite$SerializedForm;,
        Lcom/google/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMutableMessageLite",
        "<TMessageType;>;>",
        "Lcom/google/protobuf/AbstractMutableMessageLite",
        "<TMessageType;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;-><init>()V

    .line 484
    return-void
.end method

.method static internalCopyToBuilder(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 4
    .parameter "fromMessage"
    .parameter "toMessagePrototype"

    .prologue
    .line 57
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 59
    .local v0, builder:Lcom/google/protobuf/MessageLite$Builder;
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/MutableMessageLite;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to parse serialized bytes (should not happen)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MessageLite;
    .locals 5
    .parameter "name"

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefaultInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    .local v0, defaultInstanceMethod:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 87
    .end local v0           #defaultInstanceMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Cannot load the corresponding immutable class. Please add necessary dependencies."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 13
    .parameter
    .parameter
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MutableMessageLite;",
            ">(",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    .local p0, extensions:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p1, defaultInstance:Lcom/google/protobuf/MutableMessageLite;,"TMessageType;"
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v10

    .line 383
    .local v10, wireType:I
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 385
    .local v2, fieldNumber:I
    move-object/from16 v0, p3

    invoke-virtual {v0, p1, v2}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    .line 389
    .local v1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v8, 0x0

    .line 390
    .local v8, unknown:Z
    const/4 v6, 0x0

    .line 391
    .local v6, packed:Z
    if-nez v1, :cond_0

    .line 392
    const/4 v8, 0x1

    .line 407
    :goto_0
    if-eqz v8, :cond_3

    .line 408
    move/from16 v0, p4

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v11

    .line 477
    :goto_1
    return v11

    .line 393
    :cond_0
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 396
    const/4 v6, 0x0

    goto :goto_0

    .line 397
    :cond_1
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v11, v11, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v11, v11, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v11}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 402
    const/4 v6, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 411
    :cond_3
    if-eqz v6, :cond_7

    .line 412
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 413
    .local v3, length:I
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 414
    .local v4, limit:I
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v11, v12, :cond_5

    .line 415
    :goto_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v11

    if-lez v11, :cond_6

    .line 416
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 417
    .local v7, rawValue:I
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v9

    .line 419
    .local v9, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v9, :cond_4

    .line 422
    const/4 v11, 0x1

    goto :goto_1

    .line 424
    :cond_4
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v9}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 428
    .end local v7           #rawValue:I
    .end local v9           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v11

    if-lez v11, :cond_6

    .line 429
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    invoke-static {p2, v11}, Lcom/google/protobuf/FieldSet;->readPrimitiveFieldForMutable(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v9

    .line 431
    .local v9, value:Ljava/lang/Object;
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, v11, v9}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 434
    .end local v9           #value:Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 477
    .end local v3           #length:I
    .end local v4           #limit:I
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 437
    :cond_7
    sget-object v11, Lcom/google/protobuf/GeneratedMutableMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v12, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 463
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    invoke-static {p2, v11}, Lcom/google/protobuf/FieldSet;->readPrimitiveFieldForMutable(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v9

    .line 468
    :cond_8
    :goto_5
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 469
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v9}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 439
    :pswitch_0
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    check-cast v11, Lcom/google/protobuf/MutableMessageLite;

    invoke-interface {v11}, Lcom/google/protobuf/MutableMessageLite;->newMessageForType()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v5

    .line 442
    .local v5, message:Lcom/google/protobuf/MutableMessageLite;
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v11, v12, :cond_9

    .line 444
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {p2, v11, v5, v0}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 449
    :goto_6
    move-object v9, v5

    .line 450
    .local v9, value:Lcom/google/protobuf/MutableMessageLite;
    goto :goto_5

    .line 447
    .end local v9           #value:Lcom/google/protobuf/MutableMessageLite;
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {p2, v5, v0}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 453
    .end local v5           #message:Lcom/google/protobuf/MutableMessageLite;
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 454
    .restart local v7       #rawValue:I
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v9

    .line 458
    .local v9, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v9, :cond_8

    .line 459
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 472
    .end local v7           #rawValue:I
    .end local v9           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_a
    iget-object v11, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v9}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/GeneratedMutableMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->assertMutable()V

    .line 40
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/protobuf/GeneratedMutableMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMutableMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMutableMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<TMessageType;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public immutableCopy()Lcom/google/protobuf/MessageLite;
    .locals 2

    .prologue
    .line 96
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->internalImmutableDefault()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 97
    .local v0, immutableDefaultInstance:Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMutableMessageLite;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 100
    .end local v0           #immutableDefaultInstance:Lcom/google/protobuf/MessageLite;
    :goto_0
    return-object v0

    .restart local v0       #immutableDefaultInstance:Lcom/google/protobuf/MessageLite;
    :cond_0
    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->internalCopyToBuilder(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract internalImmutableDefault()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/GeneratedMutableMessageLite;)Lcom/google/protobuf/GeneratedMutableMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 535
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMutableMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMutableMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/MutableMessageLite;)V

    return-object v0
.end method
