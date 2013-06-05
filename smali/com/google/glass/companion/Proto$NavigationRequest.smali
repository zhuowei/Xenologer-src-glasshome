.class public final Lcom/google/glass/companion/Proto$NavigationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$NavigationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$NavigationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final URI_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private uri_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7129
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 7243
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7509
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 7510
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->initFields()V

    .line 7511
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

    .line 7083
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7202
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 7220
    iput v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 7084
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->initFields()V

    .line 7085
    const/4 v2, 0x0

    .line 7086
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 7088
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 7092
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 7093
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7094
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7095
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 7100
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7102
    const/4 v0, 0x1

    goto :goto_0

    .line 7097
    :sswitch_0
    const/4 v0, 0x1

    .line 7098
    goto :goto_0

    .line 7107
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 7108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 7113
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 7114
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7119
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    .line 7120
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7124
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7126
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->makeExtensionsImmutable()V

    throw v6

    .line 7120
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7124
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7126
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->makeExtensionsImmutable()V

    .line 7128
    return-void

    .line 7121
    :catch_1
    move-exception v6

    .line 7124
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 7115
    :catch_2
    move-exception v1

    .line 7116
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7121
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 7124
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 7095
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
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
    .line 7059
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7065
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7202
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 7220
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 7066
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7067
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7059
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7068
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7202
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 7220
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 7068
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6300(Lcom/google/glass/companion/Proto$NavigationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7059
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/glass/companion/Proto$NavigationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7059
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/glass/companion/Proto$NavigationRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7059
    iput p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$6500(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7059
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 7072
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 7201
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7305
    #calls: Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->access$6100()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7308
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7285
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7291
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7255
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7261
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7296
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7302
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7275
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7281
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7265
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7271
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 7076
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7059
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;

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
            "Lcom/google/glass/companion/Proto$NavigationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7141
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7222
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 7223
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7232
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7225
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7226
    iget v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 7227
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7230
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 7231
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 7232
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7165
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 7166
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7167
    check-cast v1, Ljava/lang/String;

    .line 7175
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7169
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7171
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7172
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7173
    iput-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7175
    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7187
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 7188
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7189
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7192
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 7195
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

.method public hasUri()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7155
    iget v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 7246
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 7247
    const-string v0, "com.google.glass.companion.MutableProto$NavigationRequest"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7249
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7204
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 7205
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 7208
    :goto_0
    return v1

    .line 7205
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7207
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7306
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7059
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilderForType()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7310
    invoke-static {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7059
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

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
    .line 7239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 7213
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getSerializedSize()I

    .line 7214
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7215
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7217
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 7218
    return-void
.end method
