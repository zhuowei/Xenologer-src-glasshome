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
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;,
        Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularBytesFieldAccessor;,
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 106
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    .line 109
    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    return-object v0
.end method

.method private getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;
    .locals 2
    .parameter "field"

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
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
    .line 113
    .local p1, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMutableMessage;>;"
    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    if-eqz v2, :cond_0

    .line 180
    :goto_0
    return-object p0

    .line 114
    :cond_0
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 116
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 117
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 118
    .local v0, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isProto1FieldInMutableApi()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    .line 116
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_5

    .line 131
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isProto1FieldInMutableApi()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1RepeatedEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_6

    .line 141
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedBytesFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 148
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_9

    .line 150
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isProto1FieldInMutableApi()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 156
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularMessageFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 158
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_b

    .line 160
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isProto1FieldInMutableApi()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 161
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$Proto1SingularEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 166
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularEnumFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 168
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_c

    .line 170
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularBytesFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularBytesFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 173
    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->fields:[Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 178
    .end local v0           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->initialized:Z

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->camelCaseNames:[Ljava/lang/String;

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
