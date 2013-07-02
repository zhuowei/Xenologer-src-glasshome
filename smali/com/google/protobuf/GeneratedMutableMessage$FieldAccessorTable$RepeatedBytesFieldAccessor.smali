.class final Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedBytesFieldAccessor"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter "descriptor"
    .parameter "camelCaseName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMutableMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 446
    return-void
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "value"

    .prologue
    .line 501
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public addRepeatedRaw(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 0
    .parameter "message"
    .parameter "value"

    .prologue
    .line 507
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 5
    .parameter "message"

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 451
    .local v0, byteArrayList:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v1, byteStringList:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 453
    .local v2, bytes:[B
    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v2           #bytes:[B
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "message"

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;
    .locals 1
    .parameter "message"
    .parameter "index"

    .prologue
    .line 479
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedRaw(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;
    .locals 1
    .parameter "message"
    .parameter "index"

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "value"

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;->clear(Lcom/google/protobuf/GeneratedMutableMessage;)V

    .line 461
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, element:Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #element:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public setRaw(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "value"

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;->clear(Lcom/google/protobuf/GeneratedMutableMessage;)V

    .line 472
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;->addRepeatedRaw(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    goto :goto_0

    .line 475
    .end local v0           #element:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 490
    check-cast p3, Lcom/google/protobuf/ByteString;

    .end local p3
    invoke-virtual {p3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public setRepeatedRaw(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V
    .locals 0
    .parameter "message"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 496
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V

    .line 497
    return-void
.end method
