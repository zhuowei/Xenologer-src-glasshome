.class public final Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
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
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final CLIENT_INITIAL_TOKENS_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_LOGGING_FIELD_NUMBER:I = 0x6

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_LABEL_FIELD_NUMBER:I = 0x5

.field public static final SECURITY_LEVEL_FIELD_NUMBER:I = 0x4

.field public static final SERVER_INITIAL_TOKENS_FIELD_NUMBER:I = 0x2

.field public static final SERVER_LOGGING_FIELD_NUMBER:I = 0x7

.field public static final TOKEN_UNIT_FIELD_NUMBER:I = 0x3

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientInitialTokens_:J

.field private clientLogging_:I

.field private deprecated_:Z

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

.field private serverInitialTokens_:J

.field private serverLogging_:I

.field private tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

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
    .line 17304
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17314
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17315
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    .line 17316
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->makeImmutable()V

    .line 17317
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 17319
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 16495
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16548
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16581
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16641
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16693
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16763
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16796
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16372
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .parameter "noInit"

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16373
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 16495
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16548
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16581
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16641
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16693
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16763
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16796
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16373
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 16892
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16895
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16386
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16393
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16381
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16382
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16383
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16378
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;"
        }
    .end annotation

    .prologue
    .line 16990
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16991
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16992
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16994
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16973
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16974
    if-nez p1, :cond_0

    .line 16975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16977
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16978
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16979
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 16959
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16960
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16961
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 16962
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16963
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 17282
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17283
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 17284
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17285
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17286
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17287
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17288
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17289
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17290
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17291
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17292
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17293
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17294
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17295
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17296
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17297
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 17299
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17301
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 16541
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16542
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16543
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16544
    return-object p0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16789
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16790
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16791
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16792
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16883
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16884
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 16886
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16756
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16757
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16758
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16759
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16686
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16687
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16688
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16689
    return-object p0
.end method

.method public clearServerInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 16574
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16575
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16576
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16577
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16822
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16823
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16824
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16825
    return-object p0
.end method

.method public clearTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16634
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16635
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16636
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16637
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17021
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17023
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17037
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

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
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 16516
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 16774
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16389
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 16854
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 16949
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 16927
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16928
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16929
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16404
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16704
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16705
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 16706
    check-cast v1, Ljava/lang/String;

    .line 16714
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 16708
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 16709
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 16711
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16712
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16714
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 16721
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16722
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 16723
    check-cast v2, Ljava/lang/String;

    .line 16724
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 16725
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16728
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
    .line 16660
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17229
    const/4 v1, 0x0

    .line 17230
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 17231
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17234
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 17235
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17238
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 17239
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17242
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 17243
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17246
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 17247
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 17250
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 17251
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17254
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 17255
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17258
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 17259
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17262
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 17263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 17264
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 17263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17268
    .end local v0           #i:I
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17269
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17270
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->cachedSize:I

    .line 17271
    return v1
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 16559
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 16807
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 16604
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 16939
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 16904
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 16914
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 16917
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasClientInitialTokens()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16505
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 16768
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 16841
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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
    .line 16698
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 16650
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasServerInitialTokens()Z
    .locals 2

    .prologue
    .line 16553
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 16801
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasTokenUnit()Z
    .locals 2

    .prologue
    .line 16592
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 16397
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17307
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 17308
    const-string v0, "com.google.protobuf.DescriptorProtos$StreamOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17310
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17027
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 17028
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17033
    :cond_0
    :goto_1
    return v1

    .line 17027
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17032
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17033
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16367
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 17051
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17052
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 17090
    :goto_0
    return-object p0

    .line 17053
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17054
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17056
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17057
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17059
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasTokenUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17060
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17062
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17063
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17065
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17066
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17067
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 17068
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17074
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17075
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17077
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17078
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17080
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17081
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17083
    :cond_8
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 17084
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17085
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17088
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 17089
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 17070
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 17071
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 17042
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17043
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    if-eqz v0, :cond_0

    .line 17044
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    .line 17046
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16367
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 17096
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17098
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 17101
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 17102
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 17103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 17104
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 17109
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 17111
    const/4 v0, 0x1

    goto :goto_0

    .line 17106
    :sswitch_0
    const/4 v0, 0x1

    .line 17107
    goto :goto_0

    .line 17116
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    goto :goto_0

    .line 17175
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 17176
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 17121
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    goto :goto_0

    .line 17126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17127
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v5

    .line 17128
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    if-nez v5, :cond_1

    .line 17129
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17131
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17132
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 17137
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17138
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 17139
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 17140
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17142
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17143
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 17148
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17149
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 17153
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17154
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    goto :goto_0

    .line 17158
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 17163
    :sswitch_8
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17164
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 17168
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 17173
    .end local v3           #tag:I
    :cond_3
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17174
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 17104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x108 -> :sswitch_8
        0x1f3a -> :sswitch_9
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16375
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16367
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16527
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16528
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16529
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16530
    return-object p0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16780
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16781
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16782
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16783
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16867
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16868
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16869
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 16870
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16735
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16736
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16737
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16738
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16739
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16746
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16747
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16748
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16749
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16750
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16670
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16671
    if-nez p1, :cond_0

    .line 16672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16674
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16675
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16676
    return-object p0
.end method

.method public setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16565
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16566
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16567
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16568
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16813
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16814
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16815
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16816
    return-object p0
.end method

.method public setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16616
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16617
    if-nez p1, :cond_0

    .line 16618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16620
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16621
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16622
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17005
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17006
    if-nez p2, :cond_0

    .line 17007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17009
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17010
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17011
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
    .line 17278
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 17183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 17186
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 17187
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_0

    .line 17188
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17190
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_1

    .line 17191
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17193
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_2

    .line 17194
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17196
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 17197
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17199
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 17200
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 17202
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 17203
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17205
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 17206
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17208
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 17209
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17211
    :cond_7
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 17212
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 17213
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 17212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17217
    .end local v3           #i:I
    :cond_8
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 17218
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17219
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 17220
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_9

    .line 17221
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 17226
    :cond_9
    return-void
.end method
