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
    .line 10468
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10582
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10851
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 10852
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->initFields()V

    .line 10853
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

    .line 10421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10541
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 10559
    iput v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 10422
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->initFields()V

    .line 10423
    const/4 v3, 0x0

    .line 10424
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 10426
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 10430
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 10431
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 10432
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 10433
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 10438
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$NavigationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 10440
    const/4 v1, 0x1

    goto :goto_0

    .line 10435
    :sswitch_0
    const/4 v1, 0x1

    .line 10436
    goto :goto_0

    .line 10445
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10446
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 10447
    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 10452
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 10453
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10458
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    .line 10459
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 10463
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10465
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->makeExtensionsImmutable()V

    throw v7

    .line 10459
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 10463
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10465
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->makeExtensionsImmutable()V

    .line 10467
    return-void

    .line 10460
    :catch_1
    move-exception v7

    .line 10463
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 10454
    :catch_2
    move-exception v2

    .line 10455
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10460
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 10463
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 10433
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
    .line 10397
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10403
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10541
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 10559
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 10404
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10397
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10406
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10541
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 10559
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 10406
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10400(Lcom/google/glass/companion/Proto$NavigationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10397
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/google/glass/companion/Proto$NavigationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10397
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/google/glass/companion/Proto$NavigationRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10397
    iput p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$10600(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10397
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 10410
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 10540
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10644
    #calls: Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->access$10200()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10647
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
    .line 10624
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
    .line 10630
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
    .line 10594
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
    .line 10600
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
    .line 10635
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
    .line 10641
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
    .line 10614
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
    .line 10620
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
    .line 10604
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
    .line 10610
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
    .line 10414
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10397
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
    .line 10480
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10561
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    .line 10562
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10571
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10564
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10565
    iget v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10566
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10569
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 10570
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 10571
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10504
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 10505
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10506
    check-cast v1, Ljava/lang/String;

    .line 10514
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10508
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10510
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10511
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10512
    iput-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10514
    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10526
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 10527
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10528
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10531
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;

    .line 10534
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

    .line 10494
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
    .line 10585
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 10586
    const-string v0, "com.google.glass.companion.MutableProto$NavigationRequest"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10588
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 10543
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    .line 10544
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 10547
    :goto_0
    return v1

    .line 10544
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10546
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10645
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10397
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilderForType()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10649
    invoke-static {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10397
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
    .line 10578
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

    .line 10552
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getSerializedSize()I

    .line 10553
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10554
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10556
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 10557
    return-void
.end method
