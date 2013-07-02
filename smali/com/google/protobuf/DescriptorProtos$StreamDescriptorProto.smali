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
    .line 15006
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 15258
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 15884
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    .line 15885
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 15886
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
    const/4 v7, -0x1

    .line 14931
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15190
    iput-byte v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 15223
    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 14932
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 14933
    const/4 v3, 0x0

    .line 14934
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 14937
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 14938
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 14939
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 14940
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 14945
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 14947
    const/4 v1, 0x1

    goto :goto_0

    .line 14942
    :sswitch_0
    const/4 v1, 0x1

    .line 14943
    goto :goto_0

    .line 14952
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14953
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 14954
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 14984
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 14985
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14990
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14991
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->makeExtensionsImmutable()V

    throw v7

    .line 14958
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14959
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 14960
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 14986
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 14987
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

    .line 14964
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14965
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 14966
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 14970
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    const/4 v4, 0x0

    .line 14971
    .local v4, subBuilder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 14972
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {v7}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v4

    .line 14974
    :cond_1
    sget-object v7, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14975
    if-eqz v4, :cond_2

    .line 14976
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {v4, v7}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 14977
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14979
    :cond_2
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 14990
    .end local v4           #subBuilder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .end local v5           #tag:I
    :cond_3
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14991
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->makeExtensionsImmutable()V

    .line 14993
    return-void

    .line 14940
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
    .line 14902
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

    .line 14908
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 15190
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 15223
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 14909
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14910
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14911
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15190
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 15223
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 14911
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$12100(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14902
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12200(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14902
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14902
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12302(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14902
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 14915
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14996
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 15186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 15187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 15188
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15189
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15320
    #calls: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->access$11800()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15323
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
    .line 15300
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
    .line 15306
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
    .line 15270
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
    .line 15276
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
    .line 15311
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
    .line 15317
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
    .line 15290
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
    .line 15296
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
    .line 15280
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
    .line 15286
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
    .line 15086
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 15087
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15088
    check-cast v1, Ljava/lang/String;

    .line 15096
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15090
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15092
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15093
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15094
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15096
    goto :goto_0
.end method

.method public getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15109
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 15110
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15111
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15114
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 15117
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
    .line 14919
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15034
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 15035
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15036
    check-cast v1, Ljava/lang/String;

    .line 15044
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15038
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15040
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15041
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15042
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15044
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15052
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 15053
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15054
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15057
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 15060
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
    .line 15175
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;
    .locals 1

    .prologue
    .line 15181
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
    .line 15018
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15225
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    .line 15226
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 15247
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 15228
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 15229
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 15230
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15233
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 15234
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15237
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 15238
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15241
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 15242
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15245
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 15246
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedSerializedSize:I

    move v1, v0

    .line 15247
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15133
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 15134
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15135
    check-cast v1, Ljava/lang/String;

    .line 15143
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15137
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15139
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15140
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15141
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15143
    goto :goto_0
.end method

.method public getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15151
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 15152
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15153
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15156
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 15159
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
    .line 14926
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientMessageType()Z
    .locals 2

    .prologue
    .line 15075
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

    .line 15028
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
    .line 15169
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
    .line 15127
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
    .line 15001
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    .line 15261
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 15262
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$StreamDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 15264
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15192
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    .line 15193
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 15202
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 15193
    goto :goto_0

    .line 15195
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15196
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15197
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    move v1, v2

    .line 15198
    goto :goto_0

    .line 15201
    :cond_2
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15321
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 15330
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 15331
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14902
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15325
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14902
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
    .line 15254
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

    .line 15207
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getSerializedSize()I

    .line 15208
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15209
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15211
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 15212
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15214
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 15215
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15217
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 15218
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15220
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 15221
    return-void
.end method
