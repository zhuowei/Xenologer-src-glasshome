.class Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proto1SingularMessageFieldAccessor"
.end annotation


# instance fields
.field private final getMutableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
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
    .line 729
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMutable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    #calls: Lcom/google/protobuf/GeneratedMutableMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p3, v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage;->access$000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->getMutableMethod:Ljava/lang/reflect/Method;

    .line 732
    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->newMessage()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/MutableMessage;

    .end local p1
    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getMutable(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 2
    .parameter "message"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->getMutableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/google/protobuf/GeneratedMutableMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMutableMessage;->access$100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newMessage()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    #calls: Lcom/google/protobuf/GeneratedMutableMessage;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMutableMessage;->access$200(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "value"

    .prologue
    .line 760
    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 761
    return-void
.end method
