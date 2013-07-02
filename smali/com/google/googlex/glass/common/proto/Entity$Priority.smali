.class public final Lcom/google/googlex/glass/common/proto/Entity$Priority;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    }
.end annotation


# static fields
.field public static final GLASSWARE_AFFINITY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Priority;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private glasswareAffinity_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 561
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Priority$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    .line 646
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 896
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 897
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->initFields()V

    .line 898
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 512
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 605
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedIsInitialized:B

    .line 623
    iput v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedSerializedSize:I

    .line 513
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->initFields()V

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 518
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 519
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 520
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 521
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 526
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 528
    const/4 v0, 0x1

    goto :goto_0

    .line 523
    :sswitch_0
    const/4 v0, 0x1

    .line 524
    goto :goto_0

    .line 533
    :sswitch_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

    .line 534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 539
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 540
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 546
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->makeExtensionsImmutable()V

    throw v5

    .line 545
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 546
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->makeExtensionsImmutable()V

    .line 548
    return-void

    .line 541
    :catch_1
    move-exception v1

    .line 542
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Entity$1;)V
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
    .line 483
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Priority;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 489
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 605
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedIsInitialized:B

    .line 623
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedSerializedSize:I

    .line 490
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 492
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 605
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedIsInitialized:B

    .line 623
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedSerializedSize:I

    .line 492
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 483
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Entity$Priority;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Entity$Priority;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Priority_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I

    .line 604
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 708
    #calls: Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->access$200()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 711
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 658
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 664
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 668
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 674
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getGlasswareAffinity()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedSerializedSize:I

    .line 626
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 635
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 628
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 629
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 630
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 634
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedSerializedSize:I

    move v1, v0

    .line 635
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasGlasswareAffinity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 588
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

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
    .line 556
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Priority_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 650
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$Entity$Priority"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 652
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 607
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedIsInitialized:B

    .line 608
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 611
    :goto_0
    return v1

    .line 608
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 610
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 718
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 719
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 713
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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
    .line 642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

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

    .line 616
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getSerializedSize()I

    .line 617
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 618
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 621
    return-void
.end method
