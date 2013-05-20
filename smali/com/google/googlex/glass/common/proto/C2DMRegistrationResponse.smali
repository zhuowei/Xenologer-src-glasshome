.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "C2DMRegistrationResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;,
        Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 298
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 535
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    .line 536
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->initFields()V

    .line 537
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

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 257
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedIsInitialized:B

    .line 275
    iput v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->initFields()V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 48
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 51
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 64
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    move-result-object v6

    .line 65
    .local v6, value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    if-nez v6, :cond_1

    .line 66
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->makeExtensionsImmutable()V

    throw v7

    .line 68
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    :cond_1
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

    .line 69
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    :catch_1
    move-exception v1

    .line 78
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

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->makeExtensionsImmutable()V

    .line 84
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;)V
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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 257
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedIsInitialized:B

    .line 275
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 257
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedIsInitialized:B

    .line 275
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 256
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 360
    #calls: Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 363
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

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
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedSerializedSize:I

    .line 278
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 287
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 280
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 281
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 282
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 286
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 287
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 245
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

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
    .line 92
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 302
    const-string v0, "com.google.googlex.glass.common.proto.MutableC2DmRegister$C2DMRegistrationResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 304
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedIsInitialized:B

    .line 260
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 263
    :goto_0
    return v1

    .line 260
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 370
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;)V

    .line 371
    .local v0, builder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 365
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

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
    .line 294
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

    .line 268
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getSerializedSize()I

    .line 269
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 273
    return-void
.end method
