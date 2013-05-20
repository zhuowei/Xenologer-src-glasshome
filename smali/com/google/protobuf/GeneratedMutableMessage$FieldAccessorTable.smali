.class public final Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
.super Ljava/lang/Object;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAccessorTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;
    }
.end annotation


# instance fields
.field private camelCaseNames:[Ljava/lang/String;

.field private final descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private final fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

.field private volatile initialized:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "descriptor"
    .parameter "camelCaseNames"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 88
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    .line 91
    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    return-object v0
.end method

.method private getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;
    .locals 2
    .parameter "field"

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMutableMessage;",
            ">;)",
            "Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    return-object p0

    .line 96
    :cond_0
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 98
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 99
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 100
    .local v0, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_2

    .line 102
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    .line 98
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    .line 105
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_5

    .line 113
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_6

    .line 116
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 124
    .end local v0           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    .line 126
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
