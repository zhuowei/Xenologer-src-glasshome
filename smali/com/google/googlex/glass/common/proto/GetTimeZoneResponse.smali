.class public final Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GetTimeZoneResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GetTimeZoneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REVERSE_SUCCESSFUL_FIELD_NUMBER:I = 0x2

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reverseSuccessful_:Z

.field private timeZone_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 605
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    .line 606
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->initFields()V

    .line 607
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 195
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedIsInitialized:B

    .line 216
    iput v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 49
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 65
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->makeExtensionsImmutable()V

    throw v6

    .line 70
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    .line 71
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 78
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 79
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->makeExtensionsImmutable()V

    .line 85
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 195
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedIsInitialized:B

    .line 216
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 195
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedIsInitialized:B

    .line 216
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 194
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 305
    #calls: Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 308
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

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
            "Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReverseSuccessful()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedSerializedSize:I

    .line 219
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 232
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 221
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 222
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getTimeZoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 227
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 231
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 232
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    .line 135
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 144
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 138
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 140
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 144
    goto :goto_0
.end method

.method public getTimeZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    .line 157
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 161
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;

    .line 164
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
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasReverseSuccessful()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

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

.method public hasTimeZone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

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
    .line 93
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimezone$GetTimeZoneResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 249
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedIsInitialized:B

    .line 198
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 201
    :goto_0
    return v1

    .line 198
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 315
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;)V

    .line 316
    .local v0, builder:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 310
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

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
    .line 239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getSerializedSize()I

    .line 207
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getTimeZoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 210
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 211
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 214
    return-void
.end method
