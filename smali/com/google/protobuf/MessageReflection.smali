.class Lcom/google/protobuf/MessageReflection;
.super Ljava/lang/Object;
.source "MessageReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageReflection$1;,
        Lcom/google/protobuf/MessageReflection$ExtensionAdapter;,
        Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;,
        Lcom/google/protobuf/MessageReflection$BuilderAdapter;,
        Lcom/google/protobuf/MessageReflection$MergeTarget;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    return-void
.end method

.method static delimitWithCommas(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v2, result:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, part:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    .end local v1           #part:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 3
    .parameter "input"
    .parameter "extension"
    .parameter "extensionRegistry"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 981
    .local v0, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v2, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {p3, p0, p2, v0, v2}, Lcom/google/protobuf/MessageReflection$MergeTarget;->parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 983
    .local v1, value:Ljava/lang/Object;
    invoke-interface {p3, v0, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    .line 984
    return-void
.end method

.method static findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MessageOrBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 194
    return-object v0
.end method

.method private static findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter "message"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MessageOrBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 157
    .local v2, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0, v2}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 165
    .restart local v2       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 167
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v8, v9, :cond_2

    .line 168
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, i:I
    check-cast v7, Ljava/util/List;

    .end local v7           #value:Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, element:Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/MessageOrBuilder;

    .end local v0           #element:Ljava/lang/Object;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/MessageReflection;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, p2}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    move v3, v4

    .line 174
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 176
    .end local v3           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 177
    check-cast v7, Lcom/google/protobuf/MessageOrBuilder;

    .end local v7           #value:Ljava/lang/Object;
    const/4 v8, -0x1

    invoke-static {p1, v2, v8}, Lcom/google/protobuf/MessageReflection;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 184
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    return-void
.end method

.method static getSerializedSize(Lcom/google/protobuf/Message;)I
    .locals 9
    .parameter "message"

    .prologue
    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, size:I
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v3

    .line 63
    .local v3, isMessageSet:Z
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 65
    .local v1, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 66
    .local v6, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v7

    sget-object v8, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v7

    check-cast v6, Lcom/google/protobuf/Message;

    .end local v6           #value:Ljava/lang/Object;
    invoke-static {v7, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_0

    .line 72
    .restart local v6       #value:Ljava/lang/Object;
    :cond_0
    invoke-static {v1, v6}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_0

    .line 76
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v6           #value:Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 77
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v7

    add-int/2addr v4, v7

    .line 82
    :goto_1
    return v4

    .line 80
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1
.end method

.method static isInitialized(Lcom/google/protobuf/MessageOrBuilder;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 102
    .local v2, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    invoke-interface {p0, v2}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 129
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return v5

    .line 111
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 113
    .restart local v2       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v7, :cond_2

    .line 114
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 117
    .local v0, element:Lcom/google/protobuf/Message;
    invoke-interface {v0}, Lcom/google/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    .line 118
    goto :goto_0

    .line 122
    .end local v0           #element:Lcom/google/protobuf/Message;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Message;

    invoke-interface {v5}, Lcom/google/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 123
    goto :goto_0

    .line 129
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z
    .locals 17
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "type"
    .parameter "target"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual/range {p3 .. p3}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v14

    if-eqz v14, :cond_0

    sget v14, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    move/from16 v0, p5

    if-ne v0, v14, :cond_0

    .line 739
    invoke-static/range {p0 .. p4}, Lcom/google/protobuf/MessageReflection;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    .line 741
    const/4 v14, 0x1

    .line 860
    :goto_0
    return v14

    .line 744
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v13

    .line 745
    .local v13, wireType:I
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 748
    .local v6, fieldNumber:I
    const/4 v3, 0x0

    .line 750
    .local v3, defaultInstance:Lcom/google/protobuf/Message;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 756
    move-object/from16 v0, p2

    instance-of v14, v0, Lcom/google/protobuf/ExtensionRegistry;

    if-eqz v14, :cond_3

    move-object/from16 v14, p2

    .line 757
    check-cast v14, Lcom/google/protobuf/ExtensionRegistry;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v14, v1, v6}, Lcom/google/protobuf/MessageReflection$MergeTarget;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v4

    .line 760
    .local v4, extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    if-nez v4, :cond_2

    .line 761
    const/4 v5, 0x0

    .line 782
    .end local v4           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .local v5, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 783
    .local v11, unknown:Z
    const/4 v9, 0x0

    .line 784
    .local v9, packed:Z
    if-nez v5, :cond_6

    .line 785
    const/4 v11, 0x1

    .line 799
    :goto_2
    if-eqz v11, :cond_9

    .line 800
    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v14

    goto :goto_0

    .line 763
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v9           #packed:Z
    .end local v11           #unknown:Z
    .restart local v4       #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_2
    iget-object v5, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 764
    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v3, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    .line 765
    if-nez v3, :cond_1

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v14, v15, :cond_1

    .line 768
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Message-typed extension lacked default instance: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 774
    .end local v4           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 776
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    if-ne v14, v15, :cond_5

    .line 777
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 779
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 786
    .restart local v9       #packed:Z
    .restart local v11       #unknown:Z
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 789
    const/4 v9, 0x0

    goto :goto_2

    .line 790
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 794
    const/4 v9, 0x1

    goto :goto_2

    .line 796
    :cond_8
    const/4 v11, 0x1

    goto :goto_2

    .line 803
    :cond_9
    if-eqz v9, :cond_d

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 805
    .local v7, length:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 806
    .local v8, limit:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_b

    .line 807
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_c

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 809
    .local v10, rawValue:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v12

    .line 810
    .local v12, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v12, :cond_a

    .line 813
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 815
    :cond_a
    move-object/from16 v0, p4

    invoke-interface {v0, v5, v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_3

    .line 818
    .end local v10           #rawValue:I
    .end local v12           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_c

    .line 819
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result v15

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v14, v15}, Lcom/google/protobuf/MessageReflection$MergeTarget;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v12

    .line 821
    .local v12, value:Ljava/lang/Object;
    move-object/from16 v0, p4

    invoke-interface {v0, v5, v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_4

    .line 824
    .end local v12           #value:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 860
    .end local v7           #length:I
    .end local v8           #limit:I
    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 827
    :cond_d
    sget-object v14, Lcom/google/protobuf/MessageReflection$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 849
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result v15

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v14, v15}, Lcom/google/protobuf/MessageReflection$MergeTarget;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v12

    .line 853
    :cond_e
    :goto_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 854
    move-object/from16 v0, p4

    invoke-interface {v0, v5, v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_5

    .line 829
    :pswitch_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v5, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;

    move-result-object v12

    .line 831
    .restart local v12       #value:Ljava/lang/Object;
    goto :goto_6

    .line 834
    .end local v12           #value:Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v5, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;

    move-result-object v12

    .line 836
    .restart local v12       #value:Ljava/lang/Object;
    goto :goto_6

    .line 839
    .end local v12           #value:Ljava/lang/Object;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 840
    .restart local v10       #rawValue:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v12

    .line 843
    .local v12, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v12, :cond_e

    .line 844
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    .line 845
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 856
    .end local v10           #rawValue:I
    .end local v12           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_f
    move-object/from16 v0, p4

    invoke-interface {v0, v5, v12}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_5

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 5
    .parameter "rawBytes"
    .parameter "extension"
    .parameter "extensionRegistry"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 960
    .local v0, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {p3, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    .line 962
    .local v1, hasOriginalValue:Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->isEagerlyParseMessageSets()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 964
    :cond_0
    iget-object v4, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {p3, p0, p2, v0, v4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;

    move-result-object v3

    .line 966
    .local v3, value:Ljava/lang/Object;
    invoke-interface {p3, v0, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    .line 973
    .end local v3           #value:Ljava/lang/Object;
    :goto_0
    return-void

    .line 969
    :cond_1
    new-instance v2, Lcom/google/protobuf/LazyField;

    iget-object v4, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-direct {v2, v4, p2, p0}, Lcom/google/protobuf/LazyField;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 971
    .local v2, lazyField:Lcom/google/protobuf/LazyField;
    invoke-interface {p3, v0, v2}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_0
.end method

.method private static mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 5
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "type"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    const/4 v3, 0x0

    .line 891
    .local v3, typeId:I
    const/4 v1, 0x0

    .line 892
    .local v1, rawBytes:Lcom/google/protobuf/ByteString;
    const/4 v0, 0x0

    .line 897
    .local v0, extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 898
    .local v2, tag:I
    if-nez v2, :cond_2

    .line 937
    :goto_1
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 940
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 941
    if-eqz v0, :cond_6

    .line 942
    invoke-static {v1, v0, p2, p4}, Lcom/google/protobuf/MessageReflection;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    .line 951
    :cond_1
    :goto_2
    return-void

    .line 902
    :cond_2
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v2, v4, :cond_3

    .line 903
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    .line 904
    if-eqz v3, :cond_0

    .line 910
    instance-of v4, p2, Lcom/google/protobuf/ExtensionRegistry;

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 911
    check-cast v4, Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {p4, v4, p3, v3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_3
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v2, v4, :cond_5

    .line 917
    if-eqz v3, :cond_4

    .line 918
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->isEagerlyParseMessageSets()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 922
    invoke-static {p0, v0, p2, p4}, Lcom/google/protobuf/MessageReflection;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    .line 924
    const/4 v1, 0x0

    .line 925
    goto :goto_0

    .line 929
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 932
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 945
    :cond_6
    if-eqz v1, :cond_1

    .line 946
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_2
.end method

.method private static subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "field"
    .parameter "index"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 144
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static writeMessageTo(Lcom/google/protobuf/Message;Lcom/google/protobuf/CodedOutputStream;Z)V
    .locals 10
    .parameter "message"
    .parameter "output"
    .parameter "alwaysWriteRequiredFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v5

    .line 26
    .local v5, isMessageSet:Z
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v2

    .line 27
    .local v2, fields:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    .line 28
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 30
    .end local v2           #fields:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .local v3, fields:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 31
    .local v1, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 32
    invoke-interface {p0, v1}, Lcom/google/protobuf/Message;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    move-object v2, v3

    .line 37
    .end local v3           #fields:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v2       #fields:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 39
    .restart local v1       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 40
    .local v7, value:Ljava/lang/Object;
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v8, v9, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-nez v8, :cond_3

    .line 43
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v8

    check-cast v7, Lcom/google/protobuf/Message;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    .line 45
    .restart local v7       #value:Ljava/lang/Object;
    :cond_3
    invoke-static {v1, v7, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 49
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v7           #value:Ljava/lang/Object;
    :cond_4
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    .line 50
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    if-eqz v5, :cond_5

    .line 51
    invoke-virtual {v6, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 55
    :goto_2
    return-void

    .line 53
    :cond_5
    invoke-virtual {v6, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_2
.end method
