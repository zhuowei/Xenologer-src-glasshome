.class public final Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final FILE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private file_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->immutableDefault:Lcom/google/protobuf/Message;

    .line 281
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    .line 282
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->initFields()V

    .line 283
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->makeImmutable()V

    .line 284
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->PARSER:Lcom/google/protobuf/Parser;

    .line 286
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    .line 25
    return-void
.end method

.method private ensureFileInitialized()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    .line 63
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 128
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 130
    return-object p0
.end method

.method public addFile()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 104
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 105
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    .line 106
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object v0
.end method

.method public addFile(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1
    .parameter "value"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 118
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 266
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    .line 268
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public clearFile()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    .line 151
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableFile(I)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public getMutableFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 85
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, size:I
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 253
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->cachedSize:I

    .line 254
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "com.google.protobuf.DescriptorProtos$FileDescriptorSet"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->immutableDefault:Lcom/google/protobuf/Message;

    .line 277
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getFile(I)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 160
    :goto_1
    return v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 2
    .parameter "other"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 179
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 186
    :goto_0
    return-object p0

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 182
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1
    .parameter "other"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 170
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 197
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 198
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 200
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 205
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :sswitch_0
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 212
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->addFile()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 219
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 217
    .restart local v0       #done:Z
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v4, 0x1

    goto :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public setFile(ILcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->assertMutable()V

    .line 138
    if-nez p2, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->ensureFileInitialized()V

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 228
    .local v1, bytesWrittenBefore:I
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 229
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 230
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 235
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 236
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorSet;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_1

    .line 237
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_1
    return-void
.end method
