.class Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;
.super Ljava/lang/Object;
.source "MessageReflection.java"

# interfaces
.implements Lcom/google/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MutableMessageAdapter"
.end annotation


# instance fields
.field private final message:Lcom/google/protobuf/MutableMessage;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MutableMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    .line 470
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    .line 505
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .parameter "field"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;

    .line 493
    return-object p0
.end method

.method public findExtensionByName(Lcom/google/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .parameter "registry"
    .parameter "name"

    .prologue
    .line 514
    invoke-virtual {p1, p2}, Lcom/google/protobuf/ExtensionRegistry;->findMutableExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .parameter "registry"
    .parameter "containingType"
    .parameter "fieldNumber"

    .prologue
    .line 520
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistry;->findMutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public finish()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0}, Lcom/google/protobuf/MutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .parameter "field"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    return v0
.end method

.method public newMergeTargetForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 2
    .parameter "descriptor"
    .parameter "defaultInstance"

    .prologue
    .line 579
    if-eqz p2, :cond_0

    .line 580
    new-instance v0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;

    check-cast p2, Lcom/google/protobuf/MutableMessage;

    .end local p2
    invoke-interface {p2}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;-><init>(Lcom/google/protobuf/MutableMessage;)V

    .line 583
    :goto_0
    return-object v0

    .restart local p2
    :cond_0
    new-instance v0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;

    iget-object v1, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v1, p1}, Lcom/google/protobuf/MutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;-><init>(Lcom/google/protobuf/MutableMessage;)V

    goto :goto_0
.end method

.method public parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .parameter "input"
    .parameter "registry"
    .parameter "field"
    .parameter "defaultInstance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    if-eqz p4, :cond_1

    .line 529
    check-cast p4, Lcom/google/protobuf/MutableMessage;

    .end local p4
    invoke-interface {p4}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .line 533
    .local v1, subMessage:Lcom/google/protobuf/MutableMessage;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessage;

    .line 535
    .local v0, originalMessage:Lcom/google/protobuf/MutableMessage;
    invoke-interface {v1, v0}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    .line 537
    .end local v0           #originalMessage:Lcom/google/protobuf/MutableMessage;
    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 538
    return-object v1

    .line 531
    .end local v1           #subMessage:Lcom/google/protobuf/MutableMessage;
    .restart local p4
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v2, p3}, Lcom/google/protobuf/MutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .restart local v1       #subMessage:Lcom/google/protobuf/MutableMessage;
    goto :goto_0
.end method

.method public parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .parameter "input"
    .parameter "registry"
    .parameter "field"
    .parameter "defaultInstance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    if-eqz p4, :cond_1

    .line 547
    check-cast p4, Lcom/google/protobuf/MutableMessage;

    .end local p4
    invoke-interface {p4}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .line 551
    .local v1, subMessage:Lcom/google/protobuf/MutableMessage;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessage;

    .line 553
    .local v0, originalMessage:Lcom/google/protobuf/MutableMessage;
    invoke-interface {v1, v0}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    .line 555
    .end local v0           #originalMessage:Lcom/google/protobuf/MutableMessage;
    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 556
    return-object v1

    .line 549
    .end local v1           #subMessage:Lcom/google/protobuf/MutableMessage;
    .restart local p4
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v2, p3}, Lcom/google/protobuf/MutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .restart local v1       #subMessage:Lcom/google/protobuf/MutableMessage;
    goto :goto_0
.end method

.method public parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .parameter "bytes"
    .parameter "registry"
    .parameter "field"
    .parameter "defaultInstance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    if-eqz p4, :cond_1

    .line 565
    check-cast p4, Lcom/google/protobuf/MutableMessage;

    .end local p4
    invoke-interface {p4}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .line 569
    .local v1, subMessage:Lcom/google/protobuf/MutableMessage;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessage;

    .line 571
    .local v0, originalMessage:Lcom/google/protobuf/MutableMessage;
    invoke-interface {v1, v0}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    .line 573
    .end local v0           #originalMessage:Lcom/google/protobuf/MutableMessage;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 574
    return-object v1

    .line 567
    .end local v1           #subMessage:Lcom/google/protobuf/MutableMessage;
    .restart local p4
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v2, p3}, Lcom/google/protobuf/MutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;

    move-result-object v1

    .restart local v1       #subMessage:Lcom/google/protobuf/MutableMessage;
    goto :goto_0
.end method

.method public readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .parameter "input"
    .parameter "type"
    .parameter "checkUtf8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    .line 488
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;->message:Lcom/google/protobuf/MutableMessage;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/MutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    .line 499
    return-object p0
.end method
