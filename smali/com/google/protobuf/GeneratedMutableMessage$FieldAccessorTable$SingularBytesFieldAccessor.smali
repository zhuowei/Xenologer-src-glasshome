.class final Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularBytesFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularBytesFieldAccessor"
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
    .line 395
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 396
    return-void
.end method


# virtual methods
.method public get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "message"

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "message"

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "value"

    .prologue
    .line 403
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public setRaw(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 0
    .parameter "message"
    .parameter "value"

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 412
    return-void
.end method
