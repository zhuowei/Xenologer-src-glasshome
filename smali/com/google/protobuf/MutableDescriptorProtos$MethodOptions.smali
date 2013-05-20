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
    .line 16335
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16345
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16346
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    .line 16347
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->makeImmutable()V

    .line 16348
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 16350
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 14276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14579
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14667
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14966
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15111
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15144
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15240
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15364
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15400
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15506
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14276
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/16 v2, 0x100

    .line 14277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14579
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14667
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14966
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15111
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15144
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15240
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15364
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15400
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15506
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14277
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 15803
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 15806
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14292
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14299
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14285
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14286
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14287
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14288
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14289
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14282
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
    .line 15901
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15902
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15903
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15905
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15884
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15885
    if-nez p1, :cond_0

    .line 15886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15888
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15889
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15890
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 15870
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15871
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15872
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 15873
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15874
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 16301
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 16303
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 16304
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16305
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 16306
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16307
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 16308
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16309
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 16310
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16311
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 16312
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16313
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 16314
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16315
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16316
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16317
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16318
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16319
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16320
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16321
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16322
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16323
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16324
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16325
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 16326
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16327
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 16328
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16329
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 16330
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16332
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15104
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15105
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15106
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15107
    return-object p0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15684
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15685
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 15687
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 14745
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14746
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14747
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14748
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15794
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15795
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 15797
    return-object p0
.end method

.method public clearDuplicateSuppression()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14878
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14879
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 14881
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14959
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14960
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 14962
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14660
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14661
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14662
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14663
    return-object p0
.end method

.method public clearRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15393
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15394
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15395
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15396
    return-object p0
.end method

.method public clearResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15357
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15358
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15359
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15360
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15635
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15636
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15637
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15638
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15233
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15234
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15235
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15236
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15137
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15138
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15139
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15140
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15733
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15734
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 15736
    return-object p0
.end method

.method public clearStreamType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15499
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15500
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15501
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15502
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15932
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 15934
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15948
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14271
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
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 15033
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 15661
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 14704
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14295
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 15765
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 14813
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 14920
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 15860
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
    .line 15838
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15839
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15840
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
    .line 14310
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 14616
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15375
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15295
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15539
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15540
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15541
    check-cast v1, Ljava/lang/String;

    .line 15549
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15543
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 15544
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 15546
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15547
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15549
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 15567
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15568
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 15569
    check-cast v2, Ljava/lang/String;

    .line 15570
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 15571
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15574
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
    .line 15185
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 16224
    const/4 v1, 0x0

    .line 16225
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 16226
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16229
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 16230
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 16233
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 16234
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16237
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_3

    .line 16238
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16241
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 16242
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16245
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 16246
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16249
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 16250
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16253
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 16254
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16257
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 16258
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16261
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 16262
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16265
    :cond_9
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 16266
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16269
    :cond_a
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 16270
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16273
    :cond_b
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 16274
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16277
    :cond_c
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 16278
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16281
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 16282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 16283
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 16282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16287
    .end local v0           #i:I
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16288
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16289
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->cachedSize:I

    .line 16290
    return v1
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 15122
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 15710
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15423
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15424
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15425
    check-cast v1, Ljava/lang/String;

    .line 15433
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15427
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 15428
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 15430
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15431
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15433
    goto :goto_0
.end method

.method public getStreamTypeAsBytes()[B
    .locals 4

    .prologue
    .line 15446
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15447
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 15448
    check-cast v2, Ljava/lang/String;

    .line 15449
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 15450
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15453
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
    .line 15850
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 15815
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
    .line 15825
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15826
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 15828
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
    .line 14999
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
    .line 15651
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
    .line 14685
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
    .line 15752
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
    .line 14782
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
    .line 14902
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

    .line 14597
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
    .line 15369
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
    .line 15267
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
    .line 15522
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
    .line 15164
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
    .line 15116
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
    .line 15700
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
    .line 15411
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
    .line 14303
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
    .line 16338
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 16339
    const-string v0, "com.google.protobuf.DescriptorProtos$MethodOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16341
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15938
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 15939
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 15944
    :cond_0
    :goto_1
    return v1

    .line 15938
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15943
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15944
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14271
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 15962
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15963
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 16025
    :goto_0
    return-object p0

    .line 15964
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15965
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15967
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15968
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15970
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDuplicateSuppression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15971
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDuplicateSuppression()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15973
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15974
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15976
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15977
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15979
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15980
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15982
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15983
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15985
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasResponseFormat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15986
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15988
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasRequestFormat()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15989
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 15991
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasStreamType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 15992
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15993
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 15994
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16000
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16001
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16002
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 16003
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16009
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16010
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16012
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16013
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16015
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 16016
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16018
    :cond_e
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16019
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16020
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16023
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 16024
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto/16 :goto_0

    .line 15996
    :cond_10
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 15997
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto :goto_1

    .line 16005
    .end local v0           #ba:[B
    :cond_11
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 16006
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
    .line 15953
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15954
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 15955
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    .line 15957
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14271
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 16031
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16033
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 16036
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 16037
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 16038
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16039
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 16044
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16046
    const/4 v0, 0x1

    goto :goto_0

    .line 16041
    :sswitch_0
    const/4 v0, 0x1

    .line 16042
    goto :goto_0

    .line 16051
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16052
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v5

    .line 16053
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    if-nez v5, :cond_1

    .line 16054
    const/4 v6, 0x7

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16152
    .end local v0           #done:Z
    .end local v2           #rawValue:I
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :catch_0
    move-exception v1

    .line 16153
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 16056
    .restart local v0       #done:Z
    .restart local v2       #rawValue:I
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16057
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    goto :goto_0

    .line 16062
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    goto :goto_0

    .line 16067
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16068
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    goto :goto_0

    .line 16072
    :sswitch_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    goto :goto_0

    .line 16077
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16078
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    goto :goto_0

    .line 16082
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16083
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    goto :goto_0

    .line 16087
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16088
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 16089
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 16090
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16092
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16093
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 16098
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16099
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16100
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_3

    .line 16101
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16103
    :cond_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16104
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16109
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16110
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16111
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_4

    .line 16112
    const/16 v6, 0x11

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16114
    :cond_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16115
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16120
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16125
    :sswitch_b
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16130
    :sswitch_c
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    goto/16 :goto_0

    .line 16135
    :sswitch_d
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    goto/16 :goto_0

    .line 16140
    :sswitch_e
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 16145
    :sswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 16150
    .end local v3           #tag:I
    :cond_5
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16151
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 16039
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
    .line 14279
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15067
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15068
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15069
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15070
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15671
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15672
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15673
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 15674
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14723
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14724
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14725
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 14726
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15778
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15779
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15780
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 15781
    return-object p0
.end method

.method public setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14844
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14845
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14846
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 14847
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14938
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14939
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14940
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 14941
    return-object p0
.end method

.method public setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14635
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 14636
    if-nez p1, :cond_0

    .line 14637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14639
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 14640
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14641
    return-object p0
.end method

.method public setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15382
    if-nez p1, :cond_0

    .line 15383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15385
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15386
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15387
    return-object p0
.end method

.method public setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15323
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15324
    if-nez p1, :cond_0

    .line 15325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15327
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15328
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15329
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15592
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15593
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15594
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15595
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15596
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15614
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15615
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15616
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15617
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 15618
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15206
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15207
    if-nez p1, :cond_0

    .line 15208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15210
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15211
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15212
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15128
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15129
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15130
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15131
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15720
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15721
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15722
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 15723
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15466
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15467
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15468
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15469
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15470
    return-object p0
.end method

.method public setStreamTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15483
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15484
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15485
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15486
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15487
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15916
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15917
    if-nez p2, :cond_0

    .line 15918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15920
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 15921
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15922
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
    .line 16297
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

    .line 16160
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 16163
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 16164
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 16165
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16167
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 16168
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 16170
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 16171
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16173
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v6, :cond_3

    .line 16174
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16176
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 16177
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16179
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 16180
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16182
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 16183
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16185
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 16186
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16188
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 16189
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16191
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 16192
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16194
    :cond_9
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 16195
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16197
    :cond_a
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 16198
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16200
    :cond_b
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 16201
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16203
    :cond_c
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 16204
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16206
    :cond_d
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 16207
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 16208
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 16207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16212
    .end local v3           #i:I
    :cond_e
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 16213
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 16214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 16215
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_f

    .line 16216
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16221
    :cond_f
    return-void
.end method
