.class public final Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;,
        Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;,
        Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final CLIENT_LOGGING_FIELD_NUMBER:I = 0xb

.field public static final CLIENT_STREAMING_FIELD_NUMBER:I = 0x14

.field public static final DEADLINE_FIELD_NUMBER:I = 0x8

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final DUPLICATE_SUPPRESSION_FIELD_NUMBER:I = 0x9

.field public static final FAIL_FAST_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_FORMAT_FIELD_NUMBER:I = 0x11

.field public static final RESPONSE_FORMAT_FIELD_NUMBER:I = 0xf

.field public static final SECURITY_LABEL_FIELD_NUMBER:I = 0x13

.field public static final SECURITY_LEVEL_FIELD_NUMBER:I = 0xd

.field public static final SERVER_LOGGING_FIELD_NUMBER:I = 0xc

.field public static final SERVER_STREAMING_FIELD_NUMBER:I = 0x15

.field public static final STREAM_TYPE_FIELD_NUMBER:I = 0x12

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientLogging_:I

.field private clientStreaming_:Z

.field private deadline_:D

.field private deprecated_:Z

.field private duplicateSuppression_:Z

.field private failFast_:Z

.field private protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

.field private requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

.field private responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

.field private serverLogging_:I

.field private serverStreaming_:Z

.field private streamType_:Ljava/lang/Object;

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16339
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16349
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16350
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    .line 16351
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->makeImmutable()V

    .line 16352
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 16354
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 14280
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14583
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14671
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14970
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15115
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15148
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15244
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15368
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15404
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15510
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14280
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/16 v2, 0x100

    .line 14281
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14583
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14671
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14970
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15115
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15148
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15244
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15368
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15404
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15510
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14281
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 15807
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 15810
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14296
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14303
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14289
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14290
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14291
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14292
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14293
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14286
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;"
        }
    .end annotation

    .prologue
    .line 15905
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15906
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15907
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15909
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15888
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15889
    if-nez p1, :cond_0

    .line 15890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15892
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15893
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15894
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 15874
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15875
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15876
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 15877
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15878
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 16305
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16306
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 16307
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 16308
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16309
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 16310
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16311
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 16312
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16313
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 16314
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16315
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 16316
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16317
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 16318
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16319
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16320
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16321
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16322
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16323
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16324
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16325
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16326
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16327
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16328
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16329
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 16330
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16331
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 16332
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16333
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 16334
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16336
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15108
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15109
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15110
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15111
    return-object p0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15688
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15689
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 15691
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 14749
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14750
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14751
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14752
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15798
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15799
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 15801
    return-object p0
.end method

.method public clearDuplicateSuppression()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14882
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14883
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 14885
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14963
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14964
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 14966
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14664
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14665
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14666
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14667
    return-object p0
.end method

.method public clearRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15398
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15399
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15400
    return-object p0
.end method

.method public clearResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15361
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15362
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15363
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15364
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15639
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15640
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15641
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15642
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15237
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15238
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15239
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15240
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15141
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15142
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15143
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15144
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15737
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15738
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 15740
    return-object p0
.end method

.method public clearStreamType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15503
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15504
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15505
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15506
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15936
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 15938
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15952
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 15037
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 15665
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 14708
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14299
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 15769
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 14817
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 14924
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 15864
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getMutableUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15842
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15843
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15844
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14314
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 14620
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15379
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15299
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15543
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15544
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15545
    check-cast v1, Ljava/lang/String;

    .line 15553
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15547
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 15548
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 15550
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15551
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15553
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 15571
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15572
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 15573
    check-cast v2, Ljava/lang/String;

    .line 15574
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 15575
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15578
    .end local v0           #byteArray:[B
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    check-cast v1, [B

    move-object v0, v1

    goto :goto_0
.end method

.method public getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1

    .prologue
    .line 15189
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 16228
    const/4 v1, 0x0

    .line 16229
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 16230
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16233
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 16234
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 16237
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 16238
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16241
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_3

    .line 16242
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16245
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 16246
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16249
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 16250
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16253
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 16254
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16257
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 16258
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16261
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 16262
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16265
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 16266
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16269
    :cond_9
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 16270
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16273
    :cond_a
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 16274
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16277
    :cond_b
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 16278
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16281
    :cond_c
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 16282
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16285
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 16286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 16287
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 16286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16291
    .end local v0           #i:I
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16292
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16293
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->cachedSize:I

    .line 16294
    return v1
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 15126
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 15714
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15427
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15428
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15429
    check-cast v1, Ljava/lang/String;

    .line 15437
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15431
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 15432
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 15434
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15435
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15437
    goto :goto_0
.end method

.method public getStreamTypeAsBytes()[B
    .locals 4

    .prologue
    .line 15450
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15451
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 15452
    check-cast v2, Ljava/lang/String;

    .line 15453
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 15454
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15457
    .end local v0           #byteArray:[B
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    check-cast v1, [B

    move-object v0, v1

    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 15854
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 15819
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15829
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 15832
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 15003
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasClientStreaming()Z
    .locals 2

    .prologue
    .line 15655
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 14689
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 15756
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuplicateSuppression()Z
    .locals 2

    .prologue
    .line 14786
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 14906
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14601
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestFormat()Z
    .locals 2

    .prologue
    .line 15373
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseFormat()Z
    .locals 2

    .prologue
    .line 15271
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 15526
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 15168
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 15120
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasServerStreaming()Z
    .locals 2

    .prologue
    .line 15704
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStreamType()Z
    .locals 2

    .prologue
    .line 15415
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 14307
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16342
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 16343
    const-string v0, "com.google.protobuf.DescriptorProtos$MethodOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16345
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15942
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 15943
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 15948
    :cond_0
    :goto_1
    return v1

    .line 15942
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15947
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15948
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14275
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 15966
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15967
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 16029
    :goto_0
    return-object p0

    .line 15968
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15969
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15971
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15972
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15974
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDuplicateSuppression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15975
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDuplicateSuppression()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15977
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15978
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15980
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15981
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15983
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15984
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15986
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15987
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15989
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasResponseFormat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15990
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15992
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasRequestFormat()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15993
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15995
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasStreamType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 15996
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15997
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 15998
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16004
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16005
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16006
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 16007
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16013
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16014
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16016
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16017
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16019
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 16020
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16022
    :cond_e
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16023
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16024
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16027
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 16028
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 16000
    :cond_10
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 16001
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto :goto_1

    .line 16009
    .end local v0           #ba:[B
    :cond_11
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 16010
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 15957
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15958
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 15959
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    .line 15961
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14275
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 16035
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16037
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 16040
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 16041
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 16042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16043
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 16048
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16050
    const/4 v0, 0x1

    goto :goto_0

    .line 16045
    :sswitch_0
    const/4 v0, 0x1

    .line 16046
    goto :goto_0

    .line 16055
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16056
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v5

    .line 16057
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    if-nez v5, :cond_1

    .line 16058
    const/4 v6, 0x7

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16156
    .end local v0           #done:Z
    .end local v2           #rawValue:I
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :catch_0
    move-exception v1

    .line 16157
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 16060
    .restart local v0       #done:Z
    .restart local v2       #rawValue:I
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16061
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    goto :goto_0

    .line 16066
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    goto :goto_0

    .line 16071
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16072
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    goto :goto_0

    .line 16076
    :sswitch_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16077
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    goto :goto_0

    .line 16081
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16082
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    goto :goto_0

    .line 16086
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    goto :goto_0

    .line 16091
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16092
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 16093
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 16094
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16096
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16097
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 16102
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16103
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16104
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_3

    .line 16105
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16107
    :cond_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16108
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16113
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16114
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16115
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_4

    .line 16116
    const/16 v6, 0x11

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16118
    :cond_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16119
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16124
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16129
    :sswitch_b
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16130
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16134
    :sswitch_c
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16135
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    goto/16 :goto_0

    .line 16139
    :sswitch_d
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16140
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    goto/16 :goto_0

    .line 16144
    :sswitch_e
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 16149
    :sswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 16154
    .end local v3           #tag:I
    :cond_5
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16155
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 16043
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x41 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x58 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x78 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
        0x108 -> :sswitch_e
        0x1f3a -> :sswitch_f
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14283
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14275
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15071
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15072
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15073
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15074
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15675
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15676
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15677
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 15678
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14727
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14728
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14729
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14730
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15782
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15783
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15784
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 15785
    return-object p0
.end method

.method public setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14848
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14849
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14850
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 14851
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14942
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14943
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14944
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 14945
    return-object p0
.end method

.method public setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14639
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14640
    if-nez p1, :cond_0

    .line 14641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14643
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14644
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14645
    return-object p0
.end method

.method public setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15385
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15386
    if-nez p1, :cond_0

    .line 15387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15389
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15390
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15391
    return-object p0
.end method

.method public setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15327
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15328
    if-nez p1, :cond_0

    .line 15329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15331
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15332
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15333
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15596
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15597
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15598
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15599
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15600
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15618
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15619
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15620
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15621
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15622
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15210
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15211
    if-nez p1, :cond_0

    .line 15212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15214
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15215
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15216
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15132
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15133
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15134
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15135
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15724
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15725
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15726
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 15727
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15470
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15471
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15472
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15473
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15474
    return-object p0
.end method

.method public setStreamTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15487
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15488
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15489
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15490
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15491
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15920
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15921
    if-nez p2, :cond_0

    .line 15922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15924
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15925
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15926
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16301
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 16164
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 16167
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 16168
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 16169
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16171
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 16172
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 16174
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 16175
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16177
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v6, :cond_3

    .line 16178
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16180
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 16181
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16183
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 16184
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16186
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 16187
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16189
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 16190
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16192
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 16193
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16195
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 16196
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16198
    :cond_9
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 16199
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16201
    :cond_a
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 16202
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16204
    :cond_b
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 16205
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16207
    :cond_c
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 16208
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16210
    :cond_d
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 16211
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 16212
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 16211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16216
    .end local v3           #i:I
    :cond_e
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 16217
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 16218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 16219
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_f

    .line 16220
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16225
    :cond_f
    return-void
.end method
