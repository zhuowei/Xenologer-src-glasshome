.class public abstract Lcom/google/protobuf/AbstractMutableMessage;
.super Lcom/google/protobuf/AbstractMutableMessageLite;
.source "AbstractMutableMessage.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/AbstractMutableMessage",
        "<TMessageType;>;>",
        "Lcom/google/protobuf/AbstractMutableMessageLite",
        "<TMessageType;>;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;-><init>()V

    return-void
.end method

.method protected static hashFields(ILjava/util/Map;)I
    .locals 7
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 205
    .local v1, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 206
    .local v4, value:Ljava/lang/Object;
    mul-int/lit8 v5, p0, 0x25

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    add-int p0, v5, v6

    .line 207
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v5, v6, :cond_1

    .line 208
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    mul-int/lit8 v5, p0, 0x35

    check-cast v4, Ljava/util/List;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/protobuf/Internal;->hashCode(Ljava/util/List;)I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 211
    .restart local v4       #value:Ljava/lang/Object;
    :cond_0
    mul-int/lit8 v5, p0, 0x35

    check-cast v4, [B

    .end local v4           #value:Ljava/lang/Object;
    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 213
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v5, v6, :cond_2

    .line 214
    mul-int/lit8 v5, p0, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 216
    check-cast v3, Ljava/util/List;

    .line 217
    .local v3, list:Ljava/util/List;,"Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    mul-int/lit8 v5, p0, 0x35

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashEnumList(Ljava/util/List;)I

    move-result v6

    add-int p0, v5, v6

    .line 218
    goto :goto_0

    .line 219
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    :cond_3
    mul-int/lit8 v5, p0, 0x35

    check-cast v4, Lcom/google/protobuf/Internal$EnumLite;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/protobuf/Internal;->hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 222
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    return p0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMutableMessage;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->clone()Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->clone()Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->clone()Lcom/google/protobuf/AbstractMutableMessage;

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
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->clone()Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "other"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MutableMessage;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->assertMutable()V

    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->clear()Lcom/google/protobuf/MutableMessage;

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/MutableMessage;

    if-nez v3, :cond_2

    move v1, v2

    .line 176
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 178
    check-cast v0, Lcom/google/protobuf/MutableMessage;

    .line 179
    .local v0, otherMessage:Lcom/google/protobuf/MutableMessage;
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/MutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 180
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/MutableMessage;->getAllFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/AbstractMessage;->compareFields(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/MutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/MessageReflection;->delimitWithCommas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 166
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->getSerializedSize(Lcom/google/protobuf/Message;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/AbstractMutableMessage;->cachedSize:I

    .line 167
    iget v0, p0, Lcom/google/protobuf/AbstractMutableMessage;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 189
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    const/16 v0, 0x29

    .line 190
    .local v0, hash:I
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 191
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessage;->hashFields(ILjava/util/Map;)I

    move-result v0

    .line 192
    mul-int/lit8 v1, v0, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 193
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->isInitialized(Lcom/google/protobuf/MessageOrBuilder;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 8
    .parameter "other"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MutableMessage;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->assertMutable()V

    .line 54
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 55
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessage;->getAllFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 71
    .local v3, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p0, v3, v0}, Lcom/google/protobuf/AbstractMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    goto :goto_1

    .line 75
    .end local v0           #element:Ljava/lang/Object;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_4

    .line 77
    invoke-virtual {p0, v3}, Lcom/google/protobuf/AbstractMutableMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MutableMessage;

    .line 78
    .local v2, existingValue:Lcom/google/protobuf/MutableMessage;
    invoke-interface {v2}, Lcom/google/protobuf/MutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v6

    if-ne v2, v6, :cond_3

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    goto :goto_0

    .line 81
    :cond_3
    invoke-interface {v2}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MutableMessage;

    invoke-interface {v7, v6}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    goto :goto_0

    .line 87
    .end local v2           #existingValue:Lcom/google/protobuf/MutableMessage;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;

    goto :goto_0

    .line 91
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v3           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/AbstractMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    .line 93
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 100
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->assertMutable()V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 105
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 106
    .local v5, tag:I
    if-nez v5, :cond_1

    .line 118
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessage;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;

    .line 119
    const/4 v0, 0x1

    .line 121
    .end local v1           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #tag:I
    :goto_1
    return v0

    .line 110
    .restart local v1       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5       #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;

    invoke-direct {v4, p0}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;-><init>(Lcom/google/protobuf/MutableMessage;)V

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageReflection;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    .end local v1           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v6

    .line 121
    .local v6, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->assertMutable()V

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessage;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;

    .line 132
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public mutableCopy()Lcom/google/protobuf/MutableMessage;
    .locals 2

    .prologue
    .line 40
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not supported in mutable messages. Use clone() if you need to make a copy of the mutable message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic mutableCopy()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->mutableCopy()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 2

    .prologue
    .line 34
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForType() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 2

    .prologue
    .line 197
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 2

    .prologue
    .line 28
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "toBuilder() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessage;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/protobuf/AbstractMutableMessage;,"Lcom/google/protobuf/AbstractMutableMessage<TMessageType;>;"
    invoke-static {p0, p1}, Lcom/google/protobuf/MessageReflection;->writeMessageTo(Lcom/google/protobuf/Message;Lcom/google/protobuf/CodedOutputStream;)V

    .line 163
    return-void
.end method
