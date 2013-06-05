.class public abstract Lcom/google/protobuf/AbstractMutableMessageLite;
.super Ljava/lang/Object;
.source "AbstractMutableMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessageLite;


# instance fields
.field protected cachedSize:I

.field private isMutable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->cachedSize:I

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 336
    return-void
.end method

.method protected static internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MutableMessageLite;",
            ">(TT;)",
            "Lcom/google/protobuf/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, defaultInstance:Lcom/google/protobuf/MutableMessageLite;,"TT;"
    new-instance v0, Lcom/google/protobuf/AbstractMutableMessageLite$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/AbstractMutableMessageLite$1;-><init>(Lcom/google/protobuf/MutableMessageLite;)V

    return-object v0
.end method

.method protected static newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 1
    .parameter "message"

    .prologue
    .line 306
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method protected assertMutable()V
    .locals 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Try to modify an immutable message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clone()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getCachedSize()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->cachedSize:I

    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    .line 27
    return-void
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 191
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    const/4 v4, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 199
    .local v1, firstByte:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 207
    .end local v1           #firstByte:I
    :goto_0
    return v4

    .line 202
    .restart local v1       #firstByte:I
    :cond_0
    invoke-static {v1, p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v3

    .line 203
    .local v3, size:I
    new-instance v2, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v3}, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 205
    .local v2, limitedInput:Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 206
    .end local v1           #firstByte:I
    .end local v2           #limitedInput:Ljava/io/InputStream;
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 147
    .local v0, input:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .parameter "data"
    .parameter "extensionRegistry"

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 153
    .local v0, input:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 134
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->isInitialized()Z

    move-result v0

    goto :goto_0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 179
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 180
    .local v0, codedInput:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 185
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 186
    .local v0, codedInput:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([B)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 157
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public mergeFrom([BII)Z
    .locals 2
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 161
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 163
    .local v0, input:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "extensionRegistry"

    .prologue
    .line 173
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 175
    .local v0, input:Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .parameter "data"
    .parameter "extensionRegistry"

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 138
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public abstract mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public mutableCopy()Lcom/google/protobuf/MutableMessageLite;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not supported in mutable messages. Use clone() if you need to make a copy of the mutable message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForType() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;)Z
    .locals 1
    .parameter "data"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom([B)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 254
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BII)Z
    .locals 1
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 260
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "extensionRegistry"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .parameter "data"
    .parameter "extensionRegistry"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 267
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergePartialFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "toBuilder() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 76
    .local v2, result:[B
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 77
    .local v1, output:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 78
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v2

    .line 80
    .end local v1           #output:Lcom/google/protobuf/CodedOutputStream;
    .end local v2           #result:[B
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 64
    .local v1, out:Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 66
    .end local v1           #out:Lcom/google/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    .line 98
    .local v2, serialized:I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 100
    .local v0, bufferSize:I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 102
    .local v1, codedOutput:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 104
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 105
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V

    .line 123
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 90
    .local v0, bufferSize:I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 92
    .local v1, codedOutput:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 93
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 94
    return-void
.end method
