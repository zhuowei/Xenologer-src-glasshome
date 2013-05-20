.class public interface abstract Lcom/google/protobuf/MutableMessageLite;
.super Ljava/lang/Object;
.source "MutableMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clear()Lcom/google/protobuf/MutableMessageLite;
.end method

.method public abstract clone()Lcom/google/protobuf/MutableMessageLite;
.end method

.method public abstract getCachedSize()I
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract immutableCopy()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/ByteString;)Z
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom([B)Z
.end method

.method public abstract mergeFrom([BII)Z
.end method

.method public abstract mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergePartialFrom(Lcom/google/protobuf/CodedInputStream;)Z
.end method

.method public abstract mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract newMessageForType()Lcom/google/protobuf/MutableMessageLite;
.end method

.method public abstract parseDelimitedFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom(Lcom/google/protobuf/ByteString;)Z
.end method

.method public abstract parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom([B)Z
.end method

.method public abstract parseFrom([BII)Z
.end method

.method public abstract parseFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parsePartialFrom(Lcom/google/protobuf/CodedInputStream;)Z
.end method

.method public abstract parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
