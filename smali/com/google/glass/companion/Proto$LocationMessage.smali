.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationMessage$Builder;,
        Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x2

.field public static final RECEIVER_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private provider_:Ljava/lang/Object;

.field private receiver_:Ljava/lang/Object;

.field private status_:I

.field private type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4683
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5015
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5573
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 5574
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 5575
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

    .line 4617
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4940
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 4977
    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4618
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 4619
    const/4 v2, 0x0

    .line 4621
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4622
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 4623
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 4624
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 4629
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/glass/companion/Proto$LocationMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4631
    const/4 v0, 0x1

    goto :goto_0

    .line 4626
    :sswitch_0
    const/4 v0, 0x1

    .line 4627
    goto :goto_0

    .line 4636
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4637
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->valueOf(I)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v6

    .line 4638
    .local v6, value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    if-eqz v6, :cond_0

    .line 4639
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4640
    iput-object v6, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4674
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :catch_0
    move-exception v1

    .line 4675
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4680
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    throw v7

    .line 4645
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4676
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 4677
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4650
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    const/4 v4, 0x0

    .line 4651
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    :try_start_4
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 4652
    iget-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$Location;->toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v4

    .line 4654
    :cond_1
    sget-object v7, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$Location;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4655
    if-eqz v4, :cond_2

    .line 4656
    iget-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v4, v7}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 4657
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4659
    :cond_2
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 4663
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    :sswitch_4
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4664
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    goto/16 :goto_0

    .line 4668
    :sswitch_5
    iget v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4669
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4680
    .end local v5           #tag:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    .line 4682
    return-void

    .line 4624
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 4594
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4600
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4940
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 4977
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4602
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4603
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4940
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 4977
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4603
    return-void
.end method

.method static synthetic access$3502(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return p1
.end method

.method static synthetic access$3900(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4594
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 4607
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4934
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 4935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4936
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4937
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 4938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4939
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5077
    #calls: Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->access$3300()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5080
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5057
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5063
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5027
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5033
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5068
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5074
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5047
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5053
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5037
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5043
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 4611
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4695
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4800
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4801
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4802
    check-cast v1, Ljava/lang/String;

    .line 4810
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4804
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4806
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4807
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4808
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4810
    goto :goto_0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4818
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4819
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4820
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4823
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4826
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

.method public getReceiver()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4898
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4899
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4900
    check-cast v1, Ljava/lang/String;

    .line 4908
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4902
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4904
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4905
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4906
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4908
    goto :goto_0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4921
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4922
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4923
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4926
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4929
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

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4979
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4980
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5004
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4982
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4983
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4984
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4987
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4988
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4991
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4992
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4995
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4996
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4999
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 5000
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5003
    :cond_5
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 5004
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 4873
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 1

    .prologue
    .line 4785
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 4840
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasProvider()Z
    .locals 2

    .prologue
    .line 4794
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasReceiver()Z
    .locals 2

    .prologue
    .line 4887
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 4863
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4779
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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
    .line 5018
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 5019
    const-string v0, "com.google.glass.companion.MutableProto$LocationMessage"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5021
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4942
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 4943
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 4954
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4943
    goto :goto_0

    .line 4945
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4946
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 4947
    goto :goto_0

    .line 4949
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4950
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 4951
    goto :goto_0

    .line 4953
    :cond_3
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5078
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5082
    invoke-static {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

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
    .line 5011
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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

    .line 4959
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getSerializedSize()I

    .line 4960
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4961
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4963
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4964
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4966
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4967
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4969
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4970
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4972
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4973
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4975
    :cond_4
    return-void
.end method
