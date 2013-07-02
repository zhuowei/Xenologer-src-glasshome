.class Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proto1SingularEnumFieldAccessor"
.end annotation


# instance fields
.field private final defaultValue:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

.field private final enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
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
    .line 643
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 644
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 645
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;->defaultValue:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 647
    return-void
.end method


# virtual methods
.method public get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 3
    .parameter "message"

    .prologue
    .line 654
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    .line 656
    .local v0, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;->defaultValue:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 659
    .end local v0           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_0
    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "value"

    .prologue
    .line 664
    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p2
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v0

    .line 665
    .local v0, number:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 666
    return-void
.end method
