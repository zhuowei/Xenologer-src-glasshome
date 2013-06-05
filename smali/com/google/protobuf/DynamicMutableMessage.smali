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
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 37
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38
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
    .line 48
    .local p2, fields:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 50
    iput-object p2, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 51
    iput-object p3, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Z)V
    .locals 1
    .parameter "type"
    .parameter "dummy"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMutableMessage;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 28
    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    .line 29
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/AbstractMutableMessage;->makeImmutable()V

    .line 31
    return-void
.end method

.method public static getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "type"

    .prologue
    .line 155
    new-instance v0, Lcom/google/protobuf/DynamicMutableMessage;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DynamicMutableMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Z)V

    return-object v0
.end method

.method public static newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "type"

    .prologue
    .line 159
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
    .line 90
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 91
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/ByteString;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 94
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
    .line 102
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 103
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 106
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
    .line 65
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 66
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 69
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
    .line 78
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 79
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 82
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
    .line 134
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 135
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 138
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
    .line 146
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 147
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 150
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
    .line 112
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 113
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 116
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
    .line 123
    invoke-static {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 124
    .local v0, message:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 127
    :cond_0
    return-object v0
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 295
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 296
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 297
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 323
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clear()V

    .line 324
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 325
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clear()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clear()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "field"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 279
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 280
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 281
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 165
    .local v0, newMessage:Lcom/google/protobuf/DynamicMutableMessage;
    iget-object v1, v0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 166
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;

    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clone()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 20
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
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->clone()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "other"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
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
    .line 198
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 209
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 222
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 223
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 225
    :cond_1
    return-object v0

    .line 213
    .restart local v0       #result:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .local v0, result:Lcom/google/protobuf/DynamicMutableMessage;
    goto :goto_0

    .line 215
    .local v0, result:Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .local v0, result:[B
    goto :goto_0

    .line 218
    .local v0, result:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 230
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 231
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_0

    .line 232
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getMutable() called on a non-Message type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getMutable() called on a repeated type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 242
    .local v0, result:Lcom/google/protobuf/DynamicMutableMessage;
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/DynamicMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    .line 244
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
    .line 262
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 254
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 249
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    .line 341
    .local v0, size:I
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :goto_0
    return v0

    .line 343
    .end local v0           #size:I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    .line 344
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
    .line 258
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public immutableCopy()Lcom/google/protobuf/DynamicMessage;
    .locals 4

    .prologue
    .line 56
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
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->immutableCopy()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic immutableCopy()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->immutableCopy()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 194
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
    .line 174
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "unknownFields"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMutableMessage;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 2
    .parameter "field"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 309
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newMessageForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
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
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->newMessageForType()Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 272
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 274
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 287
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 288
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 289
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DynamicMutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMutableMessage;
    .locals 0
    .parameter "unknownFields"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMutableMessage;->assertMutable()V

    .line 303
    iput-object p1, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 304
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
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
    .line 358
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 360
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DynamicMutableMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 363
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
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMutableMessage;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 354
    return-void
.end method
