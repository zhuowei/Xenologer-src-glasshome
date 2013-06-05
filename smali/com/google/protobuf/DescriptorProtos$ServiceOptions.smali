.class public final Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final FAILURE_DETECTION_DELAY_FIELD_NUMBER:I = 0x10

.field public static final MULTICAST_STUB_FIELD_NUMBER:I = 0x14

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private failureDetectionDelay_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multicastStub_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27797
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28066
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 28890
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .line 28891
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->initFields()V

    .line 28892
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
    const/4 v5, -0x1

    const/16 v7, 0x8

    .line 27727
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 27989
    iput-byte v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28030
    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 27728
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->initFields()V

    .line 27729
    const/4 v2, 0x0

    .line 27730
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 27733
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 27734
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 27735
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 27736
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 27741
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27743
    const/4 v0, 0x1

    goto :goto_0

    .line 27738
    :sswitch_0
    const/4 v0, 0x1

    .line 27739
    goto :goto_0

    .line 27748
    :sswitch_1
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    .line 27749
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 27772
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 27773
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27778
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x8

    if-ne v6, v7, :cond_1

    .line 27779
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27781
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27782
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    throw v5

    .line 27753
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    .line 27754
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 27774
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 27775
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27758
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    .line 27759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    goto :goto_0

    .line 27763
    :sswitch_4
    and-int/lit8 v5, v2, 0x8

    if-eq v5, v7, :cond_2

    .line 27764
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27765
    or-int/lit8 v2, v2, 0x8

    .line 27767
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 27778
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v5, v2, 0x8

    if-ne v5, v7, :cond_4

    .line 27779
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27781
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27782
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    .line 27784
    return-void

    .line 27736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0xa0 -> :sswitch_2
        0x108 -> :sswitch_3
        0x1f3a -> :sswitch_4
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
    .line 27697
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$ServiceOptions;*>;"
    const/4 v0, -0x1

    .line 27704
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 27989
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28030
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 27705
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27706
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27707
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 27989
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28030
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 27707
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$21202(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z

    return p1
.end method

.method static synthetic access$21302(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    return-wide p1
.end method

.method static synthetic access$21402(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$21500(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27697
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21502(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27697
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 27711
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 27787
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27984
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 27985
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 27986
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 27987
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27988
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 28128
    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$20900()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 28131
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28108
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28114
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28078
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28084
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28119
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28125
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28098
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28104
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28088
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28094
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 27715
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 27925
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return v0
.end method

.method public getFailureDetectionDelay()D
    .locals 2

    .prologue
    .line 27896
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    return-wide v0
.end method

.method public getMulticastStub()Z
    .locals 1

    .prologue
    .line 27825
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27809
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 28032
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 28033
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 28055
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 28035
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 28036
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 28037
    const/16 v3, 0x10

    iget-wide v4, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 28040
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 28041
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28044
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 28045
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28048
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 28049
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28048
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28052
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 28053
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 28054
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 28055
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 27969
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 27959
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27938
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 27980
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27949
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 27722
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 27912
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

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

.method public hasFailureDetectionDelay()Z
    .locals 2

    .prologue
    .line 27862
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

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

.method public hasMulticastStub()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27819
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

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
    .line 27792
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 28069
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 28070
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$ServiceOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 28072
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27991
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 27992
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 28005
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 27992
    goto :goto_0

    .line 27994
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 27995
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 27996
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 27997
    goto :goto_0

    .line 27994
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28000
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 28001
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 28002
    goto :goto_0

    .line 28004
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 28129
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 28138
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 28139
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27697
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 28133
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 28062
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28010
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getSerializedSize()I

    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 28014
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$ServiceOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 28015
    const/16 v2, 0x10

    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 28017
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 28018
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28020
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 28021
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28023
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 28024
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28023
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28026
    :cond_3
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 28027
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 28028
    return-void
.end method
