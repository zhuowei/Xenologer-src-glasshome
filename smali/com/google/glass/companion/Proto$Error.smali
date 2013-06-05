.class public final Lcom/google/glass/companion/Proto$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Error$Builder;,
        Lcom/google/glass/companion/Proto$Error$ErrorType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Error;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Error;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8643
    new-instance v0, Lcom/google/glass/companion/Proto$Error$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 8813
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 9019
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Error;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    .line 9020
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 9021
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
    const/4 v8, -0x1

    .line 8590
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8768
    iput-byte v8, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8790
    iput v8, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8591
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 8592
    const/4 v2, 0x0

    .line 8593
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 8595
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 8599
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 8600
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 8601
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8602
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 8607
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$Error;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 8609
    const/4 v0, 0x1

    goto :goto_0

    .line 8604
    :sswitch_0
    const/4 v0, 0x1

    .line 8605
    goto :goto_0

    .line 8614
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8615
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$Error$ErrorType;->valueOf(I)Lcom/google/glass/companion/Proto$Error$ErrorType;

    move-result-object v7

    .line 8616
    .local v7, value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    if-nez v7, :cond_1

    .line 8617
    invoke-virtual {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 8618
    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8627
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :catch_0
    move-exception v1

    .line 8628
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8633
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    .line 8634
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 8638
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 8640
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    throw v8

    .line 8620
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v7       #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :cond_1
    :try_start_3
    iget v8, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    .line 8621
    iput-object v7, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 8629
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :catch_1
    move-exception v1

    .line 8630
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8634
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 8638
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 8640
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    .line 8642
    return-void

    .line 8635
    :catch_2
    move-exception v8

    .line 8638
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 8635
    :catch_3
    move-exception v9

    .line 8638
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 8602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 8566
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8572
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8768
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8790
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8573
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 8574
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8566
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8768
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8790
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8575
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$8002(Lcom/google/glass/companion/Proto$Error;Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8566
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/google/glass/companion/Proto$Error;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8566
    iput p1, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    return p1
.end method

.method static synthetic access$8200(Lcom/google/glass/companion/Proto$Error;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8566
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 8579
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8766
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8767
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8875
    #calls: Lcom/google/glass/companion/Proto$Error$Builder;->create()Lcom/google/glass/companion/Proto$Error$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Error$Builder;->access$7800()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8878
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8855
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8861
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8825
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8831
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8866
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8872
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8845
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8851
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8835
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8841
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 8583
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8566
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;

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
            "Lcom/google/glass/companion/Proto$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8655
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8792
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8793
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8802
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8795
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8796
    iget v2, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8797
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8800
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 8801
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    move v1, v0

    .line 8802
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1

    .prologue
    .line 8762
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8756
    iget v1, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

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
    .line 8816
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 8817
    const-string v0, "com.google.glass.companion.MutableProto$Error"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8819
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8770
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8771
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 8778
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 8771
    goto :goto_0

    .line 8773
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8774
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    move v1, v2

    .line 8775
    goto :goto_0

    .line 8777
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8876
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8566
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8880
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8566
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

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
    .line 8809
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

    .line 8783
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->getSerializedSize()I

    .line 8784
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8785
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8787
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 8788
    return-void
.end method
