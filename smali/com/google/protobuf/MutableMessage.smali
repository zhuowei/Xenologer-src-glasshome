.class public interface abstract Lcom/google/protobuf/MutableMessage;
.super Ljava/lang/Object;
.source "MutableMessage.java"

# interfaces
.implements Lcom/google/protobuf/Message;
.implements Lcom/google/protobuf/MutableMessageLite;


# virtual methods
.method public abstract addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract clear()Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract clone()Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract copyFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract getMutableField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getParserForType()Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<+",
            "Lcom/google/protobuf/MutableMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract immutableCopy()Lcom/google/protobuf/Message;
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract newMessageForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract newMessageForType()Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;
.end method

.method public abstract setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
.end method
