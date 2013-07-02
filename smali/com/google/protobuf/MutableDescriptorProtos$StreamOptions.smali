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

.field public static final DEADLINE_FIELD_NUMBER:I = 0x8

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final FAIL_FAST_FIELD_NUMBER:I = 0x9

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

.field private deadline_:D

.field private deprecated_:Z

.field private failFast_:Z

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
    .line 17936
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17946
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17947
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    .line 17948
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->makeImmutable()V

    .line 17949
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 17951
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16904
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 17027
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17080
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17113
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17173
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17225
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17295
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17328
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17361
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    .line 17488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16904
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .parameter "noInit"

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16905
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 17027
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17080
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17113
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17173
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17225
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17295
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17328
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17361
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    .line 17488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16905
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 17490
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17493
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16918
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16925
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16913
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16914
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16915
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16910
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
    .line 17588
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17589
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17590
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17592
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17571
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17572
    if-nez p1, :cond_0

    .line 17573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17575
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17576
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17577
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 17557
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17558
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17559
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 17560
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17561
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 17910
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17911
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 17912
    iput-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17913
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17914
    iput-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17915
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17916
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17917
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17918
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17919
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17920
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17921
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17922
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17923
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17924
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17925
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17926
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    .line 17927
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17928
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    .line 17929
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17930
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 17931
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17933
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 17073
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17074
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17075
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17076
    return-object p0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17321
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17322
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17323
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17324
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 17387
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17388
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17389
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    .line 17390
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17481
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17482
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 17484
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17420
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17421
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    .line 17423
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17288
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17289
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17290
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17291
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17218
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17219
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17220
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17221
    return-object p0
.end method

.method public clearServerInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 17106
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17107
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17109
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17354
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17355
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17356
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17357
    return-object p0
.end method

.method public clearTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17166
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17167
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17168
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17169
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17619
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17621
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17635
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16899
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
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 17048
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 17306
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 17372
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16921
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 17452
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 17405
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 17547
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
    .line 17525
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17526
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17527
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
    .line 16936
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17236
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17237
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17238
    check-cast v1, Ljava/lang/String;

    .line 17246
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 17240
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 17241
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 17243
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17244
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17246
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 17253
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17254
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 17255
    check-cast v2, Ljava/lang/String;

    .line 17256
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 17257
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17260
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
    .line 17192
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17849
    const/4 v1, 0x0

    .line 17850
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 17851
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17854
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 17855
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17858
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 17859
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17862
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_3

    .line 17863
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17866
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 17867
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 17870
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 17871
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17874
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 17875
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17878
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 17879
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    invoke-static {v7, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 17882
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 17883
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17886
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 17887
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17890
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 17891
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 17892
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 17891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17896
    .end local v0           #i:I
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17897
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17898
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->cachedSize:I

    .line 17899
    return v1
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 17091
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 17339
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 17136
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 17537
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 17502
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
    .line 17512
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17513
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 17515
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

    .line 17037
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
    .line 17300
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

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 17366
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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 17439
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 17399
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 17230
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
    .line 17182
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
    .line 17085
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
    .line 17333
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
    .line 17124
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
    .line 16929
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17939
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 17940
    const-string v0, "com.google.protobuf.DescriptorProtos$StreamOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17942
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17625
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 17626
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17631
    :cond_0
    :goto_1
    return v1

    .line 17625
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17630
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17631
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16899
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 17649
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17650
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 17694
    :goto_0
    return-object p0

    .line 17651
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17652
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17654
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17655
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17657
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasTokenUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17658
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17660
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17661
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17663
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17664
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17665
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 17666
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17672
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17673
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17675
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17676
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17678
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17679
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17681
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17682
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17684
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 17685
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17687
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 17688
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17689
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17692
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 17693
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 17668
    :cond_c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 17669
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
    .line 17640
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17641
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    if-eqz v0, :cond_0

    .line 17642
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    .line 17644
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
    .line 16899
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 17700
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17702
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 17705
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 17706
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 17707
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 17708
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 17713
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 17715
    const/4 v0, 0x1

    goto :goto_0

    .line 17710
    :sswitch_0
    const/4 v0, 0x1

    .line 17711
    goto :goto_0

    .line 17720
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17721
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    goto :goto_0

    .line 17789
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 17790
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 17725
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    goto :goto_0

    .line 17730
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17731
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v5

    .line 17732
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    if-nez v5, :cond_1

    .line 17733
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17735
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17736
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 17741
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17742
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 17743
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 17744
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17746
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17747
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 17752
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 17757
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17758
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    goto :goto_0

    .line 17762
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17763
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 17767
    :sswitch_8
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17768
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    goto/16 :goto_0

    .line 17772
    :sswitch_9
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17773
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    goto/16 :goto_0

    .line 17777
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17778
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 17782
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 17787
    .end local v3           #tag:I
    :cond_3
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17788
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 17708
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
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x108 -> :sswitch_a
        0x1f3a -> :sswitch_b
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16907
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17059
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17060
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17061
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17062
    return-object p0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17312
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17313
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17314
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17315
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17378
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17379
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17380
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    .line 17381
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17465
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17466
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17467
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 17468
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17411
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17412
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17413
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    .line 17414
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17267
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17268
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17269
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17270
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17271
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17278
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17279
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17280
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17281
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17282
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17202
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17203
    if-nez p1, :cond_0

    .line 17204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17206
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17207
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17208
    return-object p0
.end method

.method public setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17097
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17098
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17099
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17100
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17345
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17346
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17347
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17348
    return-object p0
.end method

.method public setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 17148
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17149
    if-nez p1, :cond_0

    .line 17150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17152
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17153
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17154
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17603
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17604
    if-nez p2, :cond_0

    .line 17605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17607
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17608
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17609
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
    .line 17906
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 10
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 17797
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 17800
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 17801
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_0

    .line 17802
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17804
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_1

    .line 17805
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17807
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_2

    .line 17808
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17810
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_3

    .line 17811
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17813
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 17814
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 17816
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 17817
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17819
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 17820
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17822
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 17823
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deadline_:D

    invoke-virtual {p1, v9, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 17825
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 17826
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->failFast_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17828
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 17829
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17831
    :cond_9
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 17832
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 17833
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 17832
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17837
    .end local v3           #i:I
    :cond_a
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 17838
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17839
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 17840
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_b

    .line 17841
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 17846
    :cond_b
    return-void
.end method
