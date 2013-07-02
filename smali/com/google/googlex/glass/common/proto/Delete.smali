.class public final Lcom/google/googlex/glass/common/proto/Delete;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Delete.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Delete$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMELINE_ITEM_ID_FIELD_NUMBER:I = 0x1

.field public static final USER_ACTION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Delete;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timelineItemId_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/googlex/glass/common/proto/Delete$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Delete$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Delete;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 930
    new-instance v0, Lcom/google/googlex/glass/common/proto/Delete;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Delete;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Delete;->defaultInstance:Lcom/google/googlex/glass/common/proto/Delete;

    .line 931
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->defaultInstance:Lcom/google/googlex/glass/common/proto/Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Delete;->initFields()V

    .line 932
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x2

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 228
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedIsInitialized:B

    .line 249
    iput v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete;->initFields()V

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 44
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 47
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/Delete;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 60
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    .line 61
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v3, 0x2

    if-ne v7, v8, :cond_1

    .line 81
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    .line 83
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Delete;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 84
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->makeExtensionsImmutable()V

    throw v6

    .line 65
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v8, :cond_2

    .line 66
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    .line 67
    or-int/lit8 v3, v3, 0x2

    .line 69
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 77
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    and-int/lit8 v6, v3, 0x2

    if-ne v6, v8, :cond_4

    .line 81
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    .line 83
    :cond_4
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Delete;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 84
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->makeExtensionsImmutable()V

    .line 86
    return-void

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Delete$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Delete;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 228
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedIsInitialized:B

    .line 249
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Delete$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 228
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedIsInitialized:B

    .line 249
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Delete;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/Delete;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Delete;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Delete;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Delete;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->defaultInstance:Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    .line 227
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 338
    #calls: Lcom/google/googlex/glass/common/proto/Delete$Builder;->create()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 341
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->defaultInstance:Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 251
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedSerializedSize:I

    .line 252
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 265
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 254
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 255
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 259
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 260
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 264
    iput v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedSerializedSize:I

    move v2, v1

    .line 265
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    .line 136
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 145
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 141
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 145
    goto :goto_0
.end method

.method public getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    .line 158
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 159
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 162
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;

    .line 165
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    return-object v0
.end method

.method public getUserActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public hasTimelineItemId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Delete;

    const-class v2, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$Delete"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Delete;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Delete;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 282
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Delete;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedIsInitialized:B

    .line 231
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    return v1

    .line 231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 233
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 348
    new-instance v0, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Delete$1;)V

    .line 349
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Delete$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 343
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilder(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->toBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->toBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getSerializedSize()I

    .line 240
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 244
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 247
    return-void
.end method
