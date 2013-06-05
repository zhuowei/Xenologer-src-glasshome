.class public final Lcom/google/googlex/glass/common/proto/GlasswareMessages;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlasswareMessages.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final MORE_INFO_TITLE_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSIONS_FIELD_NUMBER:I = 0x6

.field public static final SHORT_DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final SPEAKABLE_NAME_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMessages;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private locale_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private moreInfoTitle_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private permissions_:Ljava/lang/Object;

.field private shortDescription_:Ljava/lang/Object;

.field private speakableName_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    .line 635
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1639
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .line 1640
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->initFields()V

    .line 1641
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 552
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedIsInitialized:B

    .line 588
    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->initFields()V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 49
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 52
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->makeExtensionsImmutable()V

    throw v5

    .line 69
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 102
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 103
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

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 79
    :sswitch_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :sswitch_5
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :sswitch_6
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    goto :goto_0

    .line 94
    :sswitch_7
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 106
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->makeExtensionsImmutable()V

    .line 109
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 552
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedIsInitialized:B

    .line 588
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 552
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedIsInitialized:B

    .line 588
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/GlasswareMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 544
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    .line 546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    .line 551
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 697
    #calls: Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->access$100()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 700
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 653
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
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
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 657
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 663
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    .line 275
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 276
    check-cast v1, Ljava/lang/String;

    .line 284
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 278
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 280
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 284
    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    .line 298
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 299
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 302
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;

    .line 305
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

.method public getLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    .line 163
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 172
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 168
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 172
    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    .line 187
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 188
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 191
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;

    .line 194
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

.method public getMoreInfoTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    .line 392
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 393
    check-cast v1, Ljava/lang/String;

    .line 401
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 395
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 397
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 401
    goto :goto_0
.end method

.method public getMoreInfoTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    .line 415
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 419
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;

    .line 422
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

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    .line 219
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 220
    check-cast v1, Ljava/lang/String;

    .line 228
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 224
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 228
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    .line 241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 245
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;

    .line 248
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    .line 451
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 452
    check-cast v1, Ljava/lang/String;

    .line 460
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 454
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 456
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 460
    goto :goto_0
.end method

.method public getPermissionsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    .line 475
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 476
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 479
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;

    .line 482
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

    .line 590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedSerializedSize:I

    .line 591
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 624
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 593
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 594
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 598
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 602
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 603
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 606
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 607
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getShortDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 610
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 611
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getMoreInfoTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 614
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 615
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getPermissionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 618
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 619
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 622
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 623
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedSerializedSize:I

    move v1, v0

    .line 624
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    .line 334
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 335
    check-cast v1, Ljava/lang/String;

    .line 343
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 339
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 343
    goto :goto_0
.end method

.method public getShortDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    .line 358
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 359
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 362
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;

    .line 365
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

.method public getSpeakableName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 508
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    .line 509
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 510
    check-cast v1, Ljava/lang/String;

    .line 518
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 514
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 518
    goto :goto_0
.end method

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 531
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    .line 532
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 533
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 536
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;

    .line 539
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
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

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

.method public hasLocale()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoTitle()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

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

.method public hasPermissions()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortDescription()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

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

.method public hasSpeakableName()Z
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 117
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 639
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlasswareRegistryOuterClass$GlasswareMessages"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 641
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 554
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedIsInitialized:B

    .line 555
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 558
    :goto_0
    return v1

    .line 555
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 557
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 698
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 707
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V

    .line 708
    .local v0, builder:Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

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
    .line 631
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

    .line 563
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSerializedSize()I

    .line 564
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 567
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 570
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 571
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 573
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 574
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getShortDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 576
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 577
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getMoreInfoTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 579
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 580
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getPermissionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 582
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 583
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 585
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 586
    return-void
.end method
