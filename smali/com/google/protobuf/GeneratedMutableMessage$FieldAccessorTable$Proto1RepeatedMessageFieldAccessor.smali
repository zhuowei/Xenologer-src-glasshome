.class Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proto1RepeatedMessageFieldAccessor"
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
    .line 769
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 770
    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;->newMessage()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/MutableMessage;

    .end local p1
    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "value"

    .prologue
    .line 797
    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 798
    return-void
.end method

.method public newMessage()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;->type:Ljava/lang/Class;

    #calls: Lcom/google/protobuf/GeneratedMutableMessage;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMutableMessage;->access$200(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 792
    invoke-direct {p0, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V

    .line 793
    return-void
.end method
