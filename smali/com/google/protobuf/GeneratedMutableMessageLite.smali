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
        "Lcom/google/protobuf/AbstractMutableMessageLite;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;-><init>()V

    .line 28
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessageLite;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 492
    return-void
.end method

.method static internalCopyToBuilder(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 4
    .parameter "fromMessage"
    .parameter "toMessagePrototype"

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 62
    .local v0, builder:Lcom/google/protobuf/MessageLite$Builder;
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/MutableMessageLite;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
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
    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefaultInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
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

    .line 90
    .end local v0           #defaultInstanceMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Cannot load the corresponding immutable class. Please add necessary dependencies."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 15
    .parameter
    .parameter
    .parameter "input"
    .parameter "unknownFieldsCodedOutput"
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
            "Lcom/google/protobuf/CodedOutputStream;",
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
    .line 388
    .local p0, extensions:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p1, defaultInstance:Lcom/google/protobuf/MutableMessageLite;,"TMessageType;"
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v12

    .line 389
    .local v12, wireType:I
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    .line 391
    .local v4, fieldNumber:I
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    .line 395
    .local v3, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v10, 0x0

    .line 396
    .local v10, unknown:Z
    const/4 v8, 0x0

    .line 397
    .local v8, packed:Z
    if-nez v3, :cond_0

    .line 398
    const/4 v10, 0x1

    .line 413
    :goto_0
    if-eqz v10, :cond_3

    .line 414
    move-object/from16 v0, p2

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v13

    .line 485
    :goto_1
    return v13

    .line 399
    :cond_0
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v13

    if-ne v12, v13, :cond_1

    .line 402
    const/4 v8, 0x0

    goto :goto_0

    .line 403
    :cond_1
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v13, v13, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v13, :cond_2

    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v13, v13, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v13}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 408
    const/4 v8, 0x1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 417
    :cond_3
    if-eqz v8, :cond_7

    .line 418
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 419
    .local v5, length:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 420
    .local v6, limit:I
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_5

    .line 421
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v13

    if-lez v13, :cond_6

    .line 422
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 423
    .local v9, rawValue:I
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v11

    .line 425
    .local v11, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v11, :cond_4

    .line 428
    const/4 v13, 0x1

    goto :goto_1

    .line 430
    :cond_4
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v11}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {p0, v13, v14}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 434
    .end local v9           #rawValue:I
    .end local v11           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v13

    if-lez v13, :cond_6

    .line 435
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/protobuf/FieldSet;->readPrimitiveFieldForMutable(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v11

    .line 437
    .local v11, value:Ljava/lang/Object;
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, v13, v11}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 440
    .end local v11           #value:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 485
    .end local v5           #length:I
    .end local v6           #limit:I
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 443
    :cond_7
    sget-object v13, Lcom/google/protobuf/GeneratedMutableMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v14, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 471
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/protobuf/FieldSet;->readPrimitiveFieldForMutable(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v11

    .line 476
    :cond_8
    :goto_5
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 477
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v11}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {p0, v13, v14}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 445
    :pswitch_0
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    check-cast v13, Lcom/google/protobuf/MutableMessageLite;

    invoke-interface {v13}, Lcom/google/protobuf/MutableMessageLite;->newMessageForType()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v7

    .line 448
    .local v7, message:Lcom/google/protobuf/MutableMessageLite;
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_9

    .line 450
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v7, v1}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 455
    :goto_6
    move-object v11, v7

    .line 456
    .local v11, value:Lcom/google/protobuf/MutableMessageLite;
    goto :goto_5

    .line 453
    .end local v11           #value:Lcom/google/protobuf/MutableMessageLite;
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 459
    .end local v7           #message:Lcom/google/protobuf/MutableMessageLite;
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 460
    .restart local v9       #rawValue:I
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v11

    .line 464
    .local v11, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v11, :cond_8

    .line 465
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 466
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 467
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 480
    .end local v9           #rawValue:I
    .end local v11           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_a
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v11}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {p0, v13, v14}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/GeneratedMutableMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->assertMutable()V

    .line 41
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessageLite;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 42
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
    .line 31
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public immutableCopy()Lcom/google/protobuf/MessageLite;
    .locals 2

    .prologue
    .line 99
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->internalImmutableDefault()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 100
    .local v0, immutableDefaultInstance:Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMutableMessageLite;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 103
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

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .parameter "input"
    .parameter "unknownFieldsCodedOutput"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

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
    .line 543
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessageLite;,"Lcom/google/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMutableMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMutableMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/MutableMessageLite;)V

    return-object v0
.end method
