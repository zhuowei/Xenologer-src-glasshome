.class public final Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
.super Lcom/google/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_MESSAGE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_MESSAGE_TYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientMessageType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

.field private serverMessageType_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13963
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14215
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 14832
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    .line 14833
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 14834
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 13891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14147
    iput-byte v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 14180
    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 13892
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 13893
    const/4 v2, 0x0

    .line 13894
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 13897
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13898
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 13899
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 13900
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 13905
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 13907
    const/4 v0, 0x1

    goto :goto_0

    .line 13902
    :sswitch_0
    const/4 v0, 0x1

    .line 13903
    goto :goto_0

    .line 13912
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 13913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13941
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 13942
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13947
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 13948
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->makeExtensionsImmutable()V

    throw v6

    .line 13917
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 13918
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13943
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 13944
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13922
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 13923
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 13927
    :sswitch_4
    const/4 v3, 0x0

    .line 13928
    .local v3, subBuilder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 13929
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {v6}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v3

    .line 13931
    :cond_1
    sget-object v6, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 13932
    if-eqz v3, :cond_2

    .line 13933
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {v3, v6}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 13934
    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 13936
    :cond_2
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 13947
    .end local v3           #subBuilder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .end local v4           #tag:I
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 13948
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->makeExtensionsImmutable()V

    .line 13950
    return-void

    .line 13900
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
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
    .line 13862
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 13868
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 14147
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 14180
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 13869
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 13870
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13871
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14147
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 14180
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 13871
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11100(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13862
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13862
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13862
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13862
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 13875
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13953
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 14143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 14144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 14145
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14146
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14277
    #calls: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->access$10800()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 14280
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14257
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14263
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14227
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14233
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14268
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14274
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14247
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14253
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14237
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14243
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public getClientMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14043
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 14044
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14045
    check-cast v1, Ljava/lang/String;

    .line 14053
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14047
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14049
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14050
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14051
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14053
    goto :goto_0
.end method

.method public getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14066
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 14067
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14068
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14071
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 14074
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

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 13879
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13991
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 13992
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 13993
    check-cast v1, Ljava/lang/String;

    .line 14001
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 13995
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13997
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13998
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13999
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14001
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14009
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 14010
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14011
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14014
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 14017
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

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 14132
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;
    .locals 1

    .prologue
    .line 14138
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13975
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14182
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 14183
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 14204
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 14185
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 14186
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 14187
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14190
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 14191
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14194
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 14195
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14198
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 14199
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14202
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 14203
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    move v1, v0

    .line 14204
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14090
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 14091
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14092
    check-cast v1, Ljava/lang/String;

    .line 14100
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14094
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14096
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14097
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14098
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14100
    goto :goto_0
.end method

.method public getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14108
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 14109
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14110
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14113
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 14116
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
    .line 13886
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientMessageType()Z
    .locals 2

    .prologue
    .line 14032
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13985
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 14126
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerMessageType()Z
    .locals 2

    .prologue
    .line 14084
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

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
    .line 13958
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14218
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 14219
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$StreamDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 14221
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14149
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 14150
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 14159
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 14150
    goto :goto_0

    .line 14152
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14153
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 14154
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    move v1, v2

    .line 14155
    goto :goto_0

    .line 14158
    :cond_2
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14278
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 14287
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 14288
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13862
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14282
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

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
    .line 14211
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14164
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getSerializedSize()I

    .line 14165
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 14166
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14168
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 14169
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14171
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 14172
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14174
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 14175
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14177
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 14178
    return-void
.end method
