.class public Lcom/google/protobuf/DynamicMutableMessage;
.super Lcom/google/protobuf/AbstractMutableMessage;
.source "DynamicMutableMessage.java"


# instance fields
.field private final fields:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/google/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 39
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;)V
    .locals 0
    .parameter "type"
    .parameter
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, fields:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 52
    iput-object p2, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 53
    iput-object p3, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Z)V
    .locals 1
    .parameter "type"
    .parameter "dummy"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 30
    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 31
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    invoke-super {p0}, Lcom/google/protobuf/AbstractMutableMessage;->makeImmutable()V

    .line 33
    return-void
.end method

.method static fromReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "field"
    .parameter "value"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, result:Ljava/util/List;,"Ljava/util/List<[B>;"
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 198
    .local v1, item:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/protobuf/ByteString;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local p1
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 205
    :cond_1
    :goto_1
    return-object v2

    .restart local p1
    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method public static getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"

    .prologue
    .line 157
    new-instance v0, Lcom/google/protobuf/DynamicMutableMessage;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DynamicMutableMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Z)V

    return-object v0
.end method

.method public static newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "type"

    .prologue
    .line 161
    new-instance v0, Lcom/google/protobuf/DynamicMutableMessage;

    invoke-direct {v0, p0}, Lcom/google/protobuf/DynamicMutableMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;)V

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 93
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/ByteString;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 96
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 105
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 108
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 68
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 71
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 81
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 84
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 137
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 140
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 149
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 152
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[B)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 115
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 118
    :cond_0
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[BLcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 126
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 129
    :cond_0
    return-object v0
.end method

.method static singularFromReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 228
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 230
    :cond_0
    return-object p1
.end method

.method static singularToReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 237
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    .line 239
    :cond_0
    return-object p1
.end method

.method static toReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "field"
    .parameter "value"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 214
    .local v1, item:[B
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:[B
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    .restart local p1
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 221
    :cond_1
    :goto_1
    return-object v2

    .restart local p1
    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method protected addRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addRawRepeatedField() called on a non-bytes type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 425
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 426
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 427
    return-object p0
.end method

.method protected bridge synthetic addRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->addRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 412
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 413
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->singularFromReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 415
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 453
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clear()V

    .line 454
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 455
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clear()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clear()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "field"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 383
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 384
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 385
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 167
    .local v0, newMessage:Lcom/google/protobuf/DynamicMutableMessage;
    iget-object v1, v0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 168
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;

    .line 169
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clone()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clone()Lcom/google/protobuf/DynamicMutableMessage;

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
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clone()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "other"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 258
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/protobuf/DynamicMutableMessage;->toReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 273
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {p1, v0}, Lcom/google/protobuf/DynamicMutableMessage;->toReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 286
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 288
    goto :goto_0
.end method

.method public getMutableField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 311
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_0

    .line 313
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getMutable() called on a non-Message type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getMutable() called on a repeated type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 323
    .local v0, result:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/DynamicMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    .line 325
    .end local v0           #result:Lcom/google/protobuf/DynamicMutableMessage;
    :cond_2
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DynamicMutableMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method protected getRawField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_0

    .line 294
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getRawField() called on a non-bytes type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 298
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 306
    .end local v0           #result:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 303
    .restart local v0       #result:Ljava/lang/Object;
    :cond_2
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0
.end method

.method protected getRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 2
    .parameter "field"
    .parameter "index"

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRawRepeatedField() called on a non-bytes type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 345
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/DynamicMutableMessage;->singularToReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 330
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    .line 471
    .local v0, size:I
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :goto_0
    return v0

    .line 473
    .end local v0           #size:I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    .line 474
    .restart local v0       #size:I
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 267
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public immutableCopy()Lcom/google/protobuf/DynamicMessage;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->cloneWithAllFieldsToImmutable()Lcom/google/protobuf/FieldSet;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method public bridge synthetic immutableCopy()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->immutableCopy()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic immutableCopy()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->immutableCopy()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/google/protobuf/DynamicMessage;->isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "other"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "unknownFields"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 439
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newMessageForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    new-instance v0, Lcom/google/protobuf/DynamicMutableMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DynamicMutableMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;)V

    return-object v0
.end method

.method public bridge synthetic newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 364
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->fromReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 365
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected setRawField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRawField() called on a non-bytes type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 376
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 377
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 378
    return-object p0
.end method

.method protected bridge synthetic setRawField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->setRawField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected setRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRawRepeatedField() called on a non-bytes type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 404
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 405
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 406
    return-object p0
.end method

.method protected bridge synthetic setRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DynamicMutableMessage;->setRawRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 391
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 392
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {p1, p3}, Lcom/google/protobuf/DynamicMutableMessage;->singularFromReflectionType(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 394
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DynamicMutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 0
    .parameter "unknownFields"

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 433
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 434
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 490
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 493
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0
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
    .line 483
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 484
    return-void
.end method
