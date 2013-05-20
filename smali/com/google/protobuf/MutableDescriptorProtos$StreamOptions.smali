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
    .line 17300
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17310
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17311
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    .line 17312
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->makeImmutable()V

    .line 17313
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 17315
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16368
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 16491
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16544
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16577
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16637
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16689
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16759
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16792
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16368
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .parameter "noInit"

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 16369
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 16491
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16544
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16577
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16637
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16689
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16759
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16792
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16369
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 16888
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16891
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16382
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16389
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16377
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16378
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16379
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16374
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
    .line 16986
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16987
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16988
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16990
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16969
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16970
    if-nez p1, :cond_0

    .line 16971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16973
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16974
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16975
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 16955
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16956
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16957
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 16958
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16959
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 17278
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17279
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 17280
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 17281
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17282
    iput-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 17283
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17284
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 17285
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17286
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 17287
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17288
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17289
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17290
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 17291
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17292
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 17293
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 17295
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17297
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearClientInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 16537
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16538
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16539
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16540
    return-object p0
.end method

.method public clearClientLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16785
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16786
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16787
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16788
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16879
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16880
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 16882
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16752
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16753
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16754
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16755
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16682
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16683
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16684
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16685
    return-object p0
.end method

.method public clearServerInitialTokens()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 16570
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16571
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16572
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16573
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16818
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16819
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16820
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16821
    return-object p0
.end method

.method public clearTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16630
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16631
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16632
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16633
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17017
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17019
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 17033
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16363
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
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 16512
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 16770
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 16385
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 16850
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 16945
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
    .line 16923
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16924
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 16925
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
    .line 16400
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16700
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16701
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 16702
    check-cast v1, Ljava/lang/String;

    .line 16710
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 16704
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 16705
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 16707
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16708
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 16710
    goto :goto_0
.end method

.method public getSecurityLabelAsBytes()[B
    .locals 4

    .prologue
    .line 16717
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16718
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 16719
    check-cast v2, Ljava/lang/String;

    .line 16720
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 16721
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16724
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
    .line 16656
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17225
    const/4 v1, 0x0

    .line 17226
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 17227
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17230
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 17231
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17234
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 17235
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17238
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 17239
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17242
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 17243
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 17246
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 17247
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17250
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 17251
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 17254
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 17255
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 17258
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 17259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 17260
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 17259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17264
    .end local v0           #i:I
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17265
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 17266
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->cachedSize:I

    .line 17267
    return v1
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 16555
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 16803
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 16600
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 16935
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 16900
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
    .line 16910
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16911
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 16913
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

    .line 16501
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
    .line 16764
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
    .line 16837
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
    .line 16694
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
    .line 16646
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
    .line 16549
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
    .line 16797
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
    .line 16588
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
    .line 16393
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
    .line 17303
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 17304
    const-string v0, "com.google.protobuf.DescriptorProtos$StreamOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17306
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17023
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 17024
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17029
    :cond_0
    :goto_1
    return v1

    .line 17023
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17028
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17029
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16363
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 17047
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17048
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 17086
    :goto_0
    return-object p0

    .line 17049
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17050
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17052
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17053
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17055
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasTokenUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17056
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getTokenUnit()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17058
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17059
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLevel()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17061
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17062
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17063
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 17064
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 17070
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17071
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17073
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17074
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17076
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17077
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 17079
    :cond_8
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 17080
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17081
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17084
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 17085
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto/16 :goto_0

    .line 17066
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 17067
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
    .line 17038
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17039
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    if-eqz v0, :cond_0

    .line 17040
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    .line 17042
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16363
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 17092
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17094
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 17097
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 17098
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 17099
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 17100
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 17105
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 17107
    const/4 v0, 0x1

    goto :goto_0

    .line 17102
    :sswitch_0
    const/4 v0, 0x1

    .line 17103
    goto :goto_0

    .line 17112
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    goto :goto_0

    .line 17171
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 17172
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 17117
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17118
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    goto :goto_0

    .line 17122
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17123
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v5

    .line 17124
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    if-nez v5, :cond_1

    .line 17125
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17127
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17128
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 17133
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17134
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v5

    .line 17135
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v5, :cond_2

    .line 17136
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17138
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17139
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 17144
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 17149
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    goto :goto_0

    .line 17154
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 17159
    :sswitch_8
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 17160
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 17164
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 17169
    .end local v3           #tag:I
    :cond_3
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17170
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 17100
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
    .line 16371
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 16363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public setClientInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16523
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16524
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16525
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 16526
    return-object p0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16776
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16777
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16778
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    .line 16779
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16863
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16864
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16865
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    .line 16866
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16732
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16733
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16734
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16735
    return-object p0
.end method

.method public setSecurityLabelAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16742
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16743
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16744
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16745
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 16746
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16666
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16667
    if-nez p1, :cond_0

    .line 16668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16670
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16671
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 16672
    return-object p0
.end method

.method public setServerInitialTokens(J)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16561
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16562
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16563
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 16564
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16809
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16810
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16811
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    .line 16812
    return-object p0
.end method

.method public setTokenUnit(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 16612
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 16613
    if-nez p1, :cond_0

    .line 16614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16616
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    .line 16617
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16618
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17001
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->assertMutable()V

    .line 17002
    if-nez p2, :cond_0

    .line 17003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17005
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->ensureUninterpretedOptionInitialized()V

    .line 17006
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17007
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
    .line 17274
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

    .line 17179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 17182
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 17183
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_0

    .line 17184
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17186
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_1

    .line 17187
    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17189
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_2

    .line 17190
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17192
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 17193
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17195
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 17196
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getSecurityLabelAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 17198
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 17199
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17201
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 17202
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17204
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 17205
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17207
    :cond_7
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 17208
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 17209
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 17208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17213
    .end local v3           #i:I
    :cond_8
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 17214
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17215
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 17216
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_9

    .line 17217
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 17222
    :cond_9
    return-void
.end method
