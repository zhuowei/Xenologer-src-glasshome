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
    .line 16871
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16881
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16882
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    .line 16883
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->makeImmutable()V

    .line 16884
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 16886
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 14812
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 15115
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 15203
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 15502
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15647
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15680
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15776
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15900
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15936
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16042
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14812
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/16 v2, 0x100

    .line 14813
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 15115
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 15203
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 15502
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15647
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15680
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15776
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15900
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15936
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16042
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14813
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 16339
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16342
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14828
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14835
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14821
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14822
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14823
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14824
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 14825
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14818
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
    .line 16437
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16438
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16439
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16441
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16420
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16421
    if-nez p1, :cond_0

    .line 16422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16424
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16425
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16426
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 16406
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16407
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16408
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 16409
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16410
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 16837
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16838
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 16839
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 16840
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16841
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 16842
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16843
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 16844
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16845
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 16846
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16847
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 16848
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16849
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 16850
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16851
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16852
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16853
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16854
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16855
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 16856
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16857
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16858
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16859
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16860
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16861
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 16862
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16863
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 16864
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16865
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 16866
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16868
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15640
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15641
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15642
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15643
    return-object p0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16220
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16221
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 16223
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 15281
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15282
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15283
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 15284
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16330
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16331
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 16333
    return-object p0
.end method

.method public clearDuplicateSuppression()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15414
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15415
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 15417
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15495
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15496
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 15498
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15196
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15197
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15198
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 15199
    return-object p0
.end method

.method public clearRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15930
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15931
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15932
    return-object p0
.end method

.method public clearResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15894
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15895
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15896
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16171
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16172
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16173
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16174
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15769
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15770
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15771
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15772
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 15673
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15674
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15675
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15676
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16269
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16270
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 16272
    return-object p0
.end method

.method public clearStreamType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16035
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16036
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16037
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16038
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16468
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16470
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 16484
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14807
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
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 15569
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 16197
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 15240
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 14831
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 16301
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 15349
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 15456
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 16396
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
    .line 16374
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16375
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16376
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
    .line 14846
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 15152
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15911
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 15831
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16075
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16076
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 16077
    check-cast v1, Ljava/lang/String;

    .line 16085
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 16079
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 16080
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 16082
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16083
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16085
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 16103
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16104
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 16105
    check-cast v2, Ljava/lang/String;

    .line 16106
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 16107
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16110
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
    .line 15721
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 16760
    const/4 v1, 0x0

    .line 16761
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 16762
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16765
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 16766
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 16769
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 16770
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16773
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_3

    .line 16774
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16777
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 16778
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16781
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 16782
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16785
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 16786
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16789
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 16790
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16793
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 16794
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16797
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 16798
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16801
    :cond_9
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 16802
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 16805
    :cond_a
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 16806
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16809
    :cond_b
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 16810
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16813
    :cond_c
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 16814
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 16817
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 16818
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 16819
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 16818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16823
    .end local v0           #i:I
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16824
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 16825
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->cachedSize:I

    .line 16826
    return v1
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 15658
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 16246
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15959
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15960
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15961
    check-cast v1, Ljava/lang/String;

    .line 15969
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15963
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 15964
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 15966
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15967
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15969
    goto :goto_0
.end method

.method public getStreamTypeAsBytes()[B
    .locals 4

    .prologue
    .line 15982
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15983
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 15984
    check-cast v2, Ljava/lang/String;

    .line 15985
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 15986
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 15989
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
    .line 16386
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 16351
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
    .line 16361
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 16364
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
    .line 15535
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
    .line 16187
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
    .line 15221
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
    .line 16288
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
    .line 15318
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
    .line 15438
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

    .line 15133
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
    .line 15905
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
    .line 15803
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
    .line 16058
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
    .line 15700
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
    .line 15652
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
    .line 16236
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
    .line 15947
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
    .line 14839
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16874
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 16875
    const-string v0, "com.google.protobuf.DescriptorProtos$MethodOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 16877
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 16475
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16480
    :cond_0
    :goto_1
    return v1

    .line 16474
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16479
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16480
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14807
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 16498
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16499
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 16561
    :goto_0
    return-object p0

    .line 16500
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16501
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getProtocol()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16503
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16504
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16506
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDuplicateSuppression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16507
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDuplicateSuppression()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16509
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16510
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16512
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16513
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16515
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16516
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16518
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16519
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16521
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasResponseFormat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16522
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getResponseFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16524
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasRequestFormat()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 16525
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getRequestFormat()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16527
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasStreamType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16528
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16529
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 16530
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16536
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16537
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16538
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 16539
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16545
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16546
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getClientStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16548
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16549
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getServerStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16551
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 16552
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 16554
    :cond_e
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16555
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16556
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16559
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 16560
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 16532
    :cond_10
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 16533
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto :goto_1

    .line 16541
    .end local v0           #ba:[B
    :cond_11
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 16542
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
    .line 16489
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16490
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 16491
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    .line 16493
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
    .line 14807
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 16567
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16569
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 16572
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 16573
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 16574
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16575
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 16580
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16582
    const/4 v0, 0x1

    goto :goto_0

    .line 16577
    :sswitch_0
    const/4 v0, 0x1

    .line 16578
    goto :goto_0

    .line 16587
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16588
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v5

    .line 16589
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    if-nez v5, :cond_1

    .line 16590
    const/4 v6, 0x7

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16688
    .end local v0           #done:Z
    .end local v2           #rawValue:I
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :catch_0
    move-exception v1

    .line 16689
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 16592
    .restart local v0       #done:Z
    .restart local v2       #rawValue:I
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16593
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    goto :goto_0

    .line 16598
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16599
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    goto :goto_0

    .line 16603
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    goto :goto_0

    .line 16608
    :sswitch_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    goto :goto_0

    .line 16613
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    goto :goto_0

    .line 16618
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    goto :goto_0

    .line 16623
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16624
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 16625
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 16626
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 16628
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16629
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 16634
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16635
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16636
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_3

    .line 16637
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16639
    :cond_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16640
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16645
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16646
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    move-result-object v5

    .line 16647
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    if-nez v5, :cond_4

    .line 16648
    const/16 v6, 0x11

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16650
    :cond_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16651
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 16656
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16657
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16661
    :sswitch_b
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16666
    :sswitch_c
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    goto/16 :goto_0

    .line 16671
    :sswitch_d
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16672
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    goto/16 :goto_0

    .line 16676
    :sswitch_e
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 16681
    :sswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 16686
    .end local v3           #tag:I
    :cond_5
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16687
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 16575
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
    .line 14815
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15603
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15604
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15605
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    .line 15606
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16207
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16208
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16209
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 16210
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15259
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15260
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15261
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    .line 15262
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16314
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16315
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16316
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    .line 16317
    return-object p0
.end method

.method public setDuplicateSuppression(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15380
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15381
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15382
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 15383
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15474
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15475
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15476
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    .line 15477
    return-object p0
.end method

.method public setProtocol(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15171
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15172
    if-nez p1, :cond_0

    .line 15173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15175
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15176
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 15177
    return-object p0
.end method

.method public setRequestFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15917
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15918
    if-nez p1, :cond_0

    .line 15919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15921
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15922
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15923
    return-object p0
.end method

.method public setResponseFormat(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15859
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15860
    if-nez p1, :cond_0

    .line 15861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15863
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15864
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    .line 15865
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16128
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16129
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16130
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16131
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16132
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16150
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16151
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16152
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16153
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 16154
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15742
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15743
    if-nez p1, :cond_0

    .line 15744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15746
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15747
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 15748
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 15664
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 15665
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 15666
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    .line 15667
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16256
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16257
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16258
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 16259
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16002
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16003
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16004
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16005
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16006
    return-object p0
.end method

.method public setStreamTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16020
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16021
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    .line 16022
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 16023
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16452
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->assertMutable()V

    .line 16453
    if-nez p2, :cond_0

    .line 16454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16456
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->ensureUninterpretedOptionInitialized()V

    .line 16457
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16458
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
    .line 16833
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

    .line 16696
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 16699
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 16700
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 16701
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16703
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 16704
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deadline_:D

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 16706
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 16707
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16709
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v6, :cond_3

    .line 16710
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->failFast_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16712
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 16713
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16715
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 16716
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 16718
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 16719
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16721
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 16722
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16724
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 16725
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16727
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 16728
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getStreamTypeAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16730
    :cond_9
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 16731
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 16733
    :cond_a
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 16734
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16736
    :cond_b
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 16737
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16739
    :cond_c
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 16740
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16742
    :cond_d
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 16743
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 16744
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 16743
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16748
    .end local v3           #i:I
    :cond_e
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 16749
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 16750
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 16751
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_f

    .line 16752
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16757
    :cond_f
    return-void
.end method
