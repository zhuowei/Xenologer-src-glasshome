.class public final Lcom/google/googlex/glass/common/proto/Update;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Update.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Update$Builder;,
        Lcom/google/googlex/glass/common/proto/Update$Mutations;,
        Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;
    }
.end annotation


# static fields
.field public static final MUTATIONS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMELINE_ITEM_ID_FIELD_NUMBER:I = 0x2

.field public static final USER_ACTION_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Update;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

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
    .line 112
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    .line 1608
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2402
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Update;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update;

    .line 2403
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update;->initFields()V

    .line 2404
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x4

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1547
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    .line 1577
    iput v7, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update;->initFields()V

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 44
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 47
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/Update;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

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
    const/4 v4, 0x0

    .line 60
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 61
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->toBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v4

    .line 63
    :cond_1
    sget-object v7, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 64
    if-eqz v4, :cond_2

    .line 65
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    .line 66
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 68
    :cond_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v3, 0x4

    if-ne v8, v9, :cond_3

    .line 94
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    .line 96
    :cond_3
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 97
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->makeExtensionsImmutable()V

    throw v7

    .line 72
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 73
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    .line 74
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 89
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    and-int/lit8 v7, v3, 0x4

    if-eq v7, v9, :cond_4

    .line 79
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    .line 80
    or-int/lit8 v3, v3, 0x4

    .line 82
    :cond_4
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 93
    .end local v5           #tag:I
    :cond_5
    and-int/lit8 v7, v3, 0x4

    if-ne v7, v9, :cond_6

    .line 94
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    .line 96
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Update;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 97
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->makeExtensionsImmutable()V

    .line 99
    return-void

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Update$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1547
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    .line 1577
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Update$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Update;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1547
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    .line 1577
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Update;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Update;Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/googlex/glass/common/proto/Update;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/Update;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/Update;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/googlex/glass/common/proto/Update;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    return p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Update;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1543
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    .line 1545
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    .line 1546
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1670
    #calls: Lcom/google/googlex/glass/common/proto/Update$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Builder;->access$1000()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1673
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->newBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1656
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1620
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1626
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1661
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1667
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1646
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1630
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1636
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public getMutationsOrBuilder()Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1579
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedSerializedSize:I

    .line 1580
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1597
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1582
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1583
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1584
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1587
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1588
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1591
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1592
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1595
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1596
    iput v1, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedSerializedSize:I

    move v2, v1

    .line 1597
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    .line 1454
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1455
    check-cast v1, Ljava/lang/String;

    .line 1463
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1457
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1459
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1463
    goto :goto_0
.end method

.method public getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    .line 1476
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1477
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1480
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;

    .line 1483
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
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

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
    .line 1497
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

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
    .line 1508
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public hasMutations()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1418
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItemId()Z
    .locals 2

    .prologue
    .line 1443
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Update;

    const-class v2, Lcom/google/googlex/glass/common/proto/Update$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1611
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1612
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$Update"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1614
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1549
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    .line 1550
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1559
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1550
    goto :goto_0

    .line 1552
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->hasMutations()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1553
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1554
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    move v1, v2

    .line 1555
    goto :goto_0

    .line 1558
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Update;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1671
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->newBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1680
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Update$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Update$1;)V

    .line 1681
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Update$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1675
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Update;->newBuilder(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->toBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->toBuilder()Lcom/google/googlex/glass/common/proto/Update$Builder;

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
    .line 1604
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1564
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getSerializedSize()I

    .line 1565
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1568
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1571
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1572
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1574
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1575
    return-void
.end method
