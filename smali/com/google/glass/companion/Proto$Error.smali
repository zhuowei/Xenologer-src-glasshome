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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8525
    new-instance v0, Lcom/google/glass/companion/Proto$Error$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 8693
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8898
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Error;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    .line 8899
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 8900
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

    .line 8487
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8650
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8671
    iput v6, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8488
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 8489
    const/4 v2, 0x0

    .line 8491
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8492
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8493
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8494
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 8499
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/companion/Proto$Error;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8501
    const/4 v0, 0x1

    goto :goto_0

    .line 8496
    :sswitch_0
    const/4 v0, 0x1

    .line 8497
    goto :goto_0

    .line 8506
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8507
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$Error$ErrorType;->valueOf(I)Lcom/google/glass/companion/Proto$Error$ErrorType;

    move-result-object v5

    .line 8508
    .local v5, value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    if-eqz v5, :cond_0

    .line 8509
    iget v6, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    .line 8510
    iput-object v5, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8516
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :catch_0
    move-exception v1

    .line 8517
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8522
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    throw v6

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    .line 8524
    return-void

    .line 8518
    :catch_1
    move-exception v1

    .line 8519
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8494
    nop

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
    .line 8464
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8470
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8650
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8671
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8472
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8464
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8650
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8671
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8473
    return-void
.end method

.method static synthetic access$7402(Lcom/google/glass/companion/Proto$Error;Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8464
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/glass/companion/Proto$Error;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8464
    iput p1, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 8477
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8648
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8649
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8755
    #calls: Lcom/google/glass/companion/Proto$Error$Builder;->create()Lcom/google/glass/companion/Proto$Error$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Error$Builder;->access$7200()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8758
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
    .line 8735
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
    .line 8741
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
    .line 8705
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
    .line 8711
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
    .line 8746
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
    .line 8752
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
    .line 8725
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
    .line 8731
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
    .line 8715
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
    .line 8721
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
    .line 8481
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8464
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
    .line 8537
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8673
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 8674
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8682
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8676
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8677
    iget v2, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8678
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8681
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    move v1, v0

    .line 8682
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1

    .prologue
    .line 8644
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8638
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
    .line 8696
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 8697
    const-string v0, "com.google.glass.companion.MutableProto$Error"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8699
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8652
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 8653
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 8660
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 8653
    goto :goto_0

    .line 8655
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8656
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    move v1, v2

    .line 8657
    goto :goto_0

    .line 8659
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8756
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8464
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8760
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8464
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
    .line 8689
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

    .line 8665
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->getSerializedSize()I

    .line 8666
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8667
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8669
    :cond_0
    return-void
.end method
