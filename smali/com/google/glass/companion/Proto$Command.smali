.class public final Lcom/google/glass/companion/Proto$Command;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Command$Builder;,
        Lcom/google/glass/companion/Proto$Command$CommandType;
    }
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Command;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Command;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command$CommandType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9689
    new-instance v0, Lcom/google/glass/companion/Proto$Command$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    .line 9847
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10051
    new-instance v0, Lcom/google/glass/companion/Proto$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Command;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    .line 10052
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command;->initFields()V

    .line 10053
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

    .line 9651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9804
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 9825
    iput v6, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 9652
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Command;->initFields()V

    .line 9653
    const/4 v2, 0x0

    .line 9655
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 9656
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 9657
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 9658
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 9663
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/companion/Proto$Command;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9665
    const/4 v0, 0x1

    goto :goto_0

    .line 9660
    :sswitch_0
    const/4 v0, 0x1

    .line 9661
    goto :goto_0

    .line 9670
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 9671
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$Command$CommandType;->valueOf(I)Lcom/google/glass/companion/Proto$Command$CommandType;

    move-result-object v5

    .line 9672
    .local v5, value:Lcom/google/glass/companion/Proto$Command$CommandType;
    if-eqz v5, :cond_0

    .line 9673
    iget v6, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    .line 9674
    iput-object v5, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9680
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/glass/companion/Proto$Command$CommandType;
    :catch_0
    move-exception v1

    .line 9681
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9686
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->makeExtensionsImmutable()V

    throw v6

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->makeExtensionsImmutable()V

    .line 9688
    return-void

    .line 9682
    :catch_1
    move-exception v1

    .line 9683
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

    .line 9658
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
    .line 9628
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Command;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9634
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9804
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 9825
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 9636
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9628
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9804
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 9825
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 9637
    return-void
.end method

.method static synthetic access$8602(Lcom/google/glass/companion/Proto$Command;Lcom/google/glass/companion/Proto$Command$CommandType;)Lcom/google/glass/companion/Proto$Command$CommandType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9628
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/google/glass/companion/Proto$Command;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9628
    iput p1, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 9641
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9802
    sget-object v0, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 9803
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 9909
    #calls: Lcom/google/glass/companion/Proto$Command$Builder;->create()Lcom/google/glass/companion/Proto$Command$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Command$Builder;->access$8400()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9912
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9889
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9895
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9859
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9865
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9900
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9906
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9879
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9885
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9869
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9875
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method


# virtual methods
.method public getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;
    .locals 1

    .prologue
    .line 9798
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 9645
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9628
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;

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
            "Lcom/google/glass/companion/Proto$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9701
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9827
    iget v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 9828
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 9836
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 9830
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 9831
    iget v2, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 9832
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Command$CommandType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9835
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    move v1, v0

    .line 9836
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9792
    iget v1, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

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
    .line 9850
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 9851
    const-string v0, "com.google.glass.companion.MutableProto$Command"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Command;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 9853
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9806
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 9807
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 9814
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 9807
    goto :goto_0

    .line 9809
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->hasCommand()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9810
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    move v1, v2

    .line 9811
    goto :goto_0

    .line 9813
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 9910
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9628
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->newBuilderForType()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 9914
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Command;->newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9628
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

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
    .line 9843
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

    .line 9819
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->getSerializedSize()I

    .line 9820
    iget v0, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9821
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command$CommandType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9823
    :cond_0
    return-void
.end method
