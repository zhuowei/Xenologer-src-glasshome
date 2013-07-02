.class Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;
.super Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proto1RepeatedEnumFieldAccessor"
.end annotation


# instance fields
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
    .line 674
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 675
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 676
    return-void
.end method

.method private getDefaultValue()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "value"

    .prologue
    .line 719
    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p2
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v0

    .line 720
    .local v0, number:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMutableMessage;Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method public get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;
    .locals 6
    .parameter "message"

    .prologue
    .line 686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/Descriptors$EnumValueDescriptor;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->get(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 689
    .local v1, object:Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v3

    .line 691
    .local v3, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v3, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->getDefaultValue()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v3

    .line 695
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 697
    .end local v3           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;
    .locals 3
    .parameter "message"
    .parameter "index"

    .prologue
    .line 702
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMutableMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    .line 704
    .local v0, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v0, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;->getDefaultValue()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    .line 707
    .end local v0           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_0
    return-object v0
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 713
    check-cast p3, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p3
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v0

    .line 714
    .local v0, number:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMutableMessage;ILjava/lang/Object;)V

    .line 715
    return-void
.end method
