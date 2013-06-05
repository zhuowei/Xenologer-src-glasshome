.class public final Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final AGGREGATE_VALUE_FIELD_NUMBER:I = 0x8

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x6

.field public static final IDENTIFIER_VALUE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NEGATIVE_INT_VALUE_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private aggregateValue_:Ljava/lang/Object;

.field private bitField0_:I

.field private doubleValue_:D

.field private identifierValue_:Ljava/lang/Object;

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private negativeIntValue_:J

.field private positiveIntValue_:J

.field private stringValue_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18317
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->immutableDefault:Lcom/google/protobuf/Message;

    .line 18327
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    .line 18328
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->initFields()V

    .line 18329
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->makeImmutable()V

    .line 18330
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 18332
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17341
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 17685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 17782
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17981
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18015
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 17341
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 17342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 17685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 17782
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17981
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18015
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 17342
    return-void
.end method

.method private ensureNameInitialized()V
    .locals 1

    .prologue
    .line 17687
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 17690
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17353
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 17360
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 17350
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17347
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;"
        }
    .end annotation

    .prologue
    .line 17753
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17754
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 17755
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17757
    return-object p0
.end method

.method public addName()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 2

    .prologue
    .line 17730
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17731
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 17732
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    .line 17733
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17734
    return-object v0
.end method

.method public addName(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17740
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17741
    if-nez p1, :cond_0

    .line 17742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17744
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 17745
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17746
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 18299
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18300
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 18301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 18302
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 18303
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18304
    iput-wide v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 18305
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18306
    iput-wide v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    .line 18307
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 18309
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18310
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18311
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18312
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18313
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18314
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregateValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 18078
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18079
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18080
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18081
    return-object p0
.end method

.method public clearDoubleValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 17974
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17975
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17976
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 17977
    return-object p0
.end method

.method public clearIdentifierValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17875
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17876
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17877
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17878
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17776
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 17778
    return-object p0
.end method

.method public clearNegativeIntValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 17941
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17942
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    .line 17944
    return-object p0
.end method

.method public clearPositiveIntValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 17908
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17909
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17910
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 17911
    return-object p0
.end method

.method public clearStringValue()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 18008
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18009
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18010
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18011
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 18094
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

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
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 18026
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18027
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 18028
    check-cast v1, Ljava/lang/String;

    .line 18036
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 18030
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 18031
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 18033
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18034
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18036
    goto :goto_0
.end method

.method public getAggregateValueAsBytes()[B
    .locals 4

    .prologue
    .line 18043
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18044
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 18045
    check-cast v2, Ljava/lang/String;

    .line 18046
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 18047
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18050
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17356
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 17959
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17803
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17804
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17805
    check-cast v1, Ljava/lang/String;

    .line 17813
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 17807
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 17808
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 17810
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17811
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17813
    goto :goto_0
.end method

.method public getIdentifierValueAsBytes()[B
    .locals 4

    .prologue
    .line 17825
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17826
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 17827
    check-cast v2, Ljava/lang/String;

    .line 17828
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 17829
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17832
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

.method public getMutableName(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "index"

    .prologue
    .line 17724
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public getMutableNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17710
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17711
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 17712
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getName(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "index"

    .prologue
    .line 17718
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public getNameCount()I
    .locals 1

    .prologue
    .line 17695
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17701
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 17704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .prologue
    .line 17926
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17371
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .prologue
    .line 17893
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 18255
    const/4 v1, 0x0

    .line 18256
    .local v1, size:I
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 18257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 18258
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18262
    .end local v0           #i:I
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 18263
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getIdentifierValueAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 18266
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 18267
    iget-wide v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 18270
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 18271
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 18274
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 18275
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 18278
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 18279
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 18282
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 18283
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getAggregateValueAsBytes()[B

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 18286
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 18287
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->cachedSize:I

    .line 18288
    return v1
.end method

.method public getStringValue()[B
    .locals 1

    .prologue
    .line 17992
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    return-object v0
.end method

.method public hasAggregateValue()Z
    .locals 2

    .prologue
    .line 18020
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasDoubleValue()Z
    .locals 2

    .prologue
    .line 17953
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasIdentifierValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17792
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNegativeIntValue()Z
    .locals 2

    .prologue
    .line 17920
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasPositiveIntValue()Z
    .locals 2

    .prologue
    .line 17887
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    .prologue
    .line 17986
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 17364
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18320
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 18321
    const-string v0, "com.google.protobuf.DescriptorProtos$UninterpretedOption"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->immutableDefault:Lcom/google/protobuf/Message;

    .line 18323
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 18085
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 18086
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getName(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18087
    const/4 v1, 0x0

    .line 18090
    :goto_1
    return v1

    .line 18085
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18090
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17336
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 3
    .parameter "other"

    .prologue
    .line 18108
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18109
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 18148
    :goto_0
    return-object p0

    .line 18110
    :cond_0
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18111
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 18112
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18115
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18116
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18117
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 18118
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 18124
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18125
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->setPositiveIntValue(J)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    .line 18127
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18128
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->setNegativeIntValue(J)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    .line 18130
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18131
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->setDoubleValue(D)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    .line 18133
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18134
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18135
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18138
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18139
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18140
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 18141
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18147
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 18120
    :cond_8
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 18121
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    goto :goto_1

    .line 18143
    .end local v0           #ba:[B
    :cond_9
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 18144
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "other"

    .prologue
    .line 18099
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18100
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    .line 18101
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 18103
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17336
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 18154
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18156
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 18159
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 18160
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 18161
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 18162
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 18167
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 18169
    const/4 v0, 0x1

    goto :goto_0

    .line 18164
    :sswitch_0
    const/4 v0, 0x1

    .line 18165
    goto :goto_0

    .line 18174
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->addName()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 18211
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 18212
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 18178
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    goto :goto_0

    .line 18183
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    goto :goto_0

    .line 18188
    :sswitch_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18189
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    goto :goto_0

    .line 18193
    :sswitch_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18194
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    goto :goto_0

    .line 18198
    :sswitch_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    goto :goto_0

    .line 18203
    :sswitch_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    goto :goto_0

    .line 18209
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18210
    const/4 v4, 0x1

    goto :goto_1

    .line 18162
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 17344
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateValue(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 18057
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18058
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18059
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18060
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18061
    return-object p0
.end method

.method public setAggregateValueAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 18068
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 18069
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18070
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18071
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 18072
    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17965
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17966
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17967
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 17968
    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17844
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17845
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17846
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17847
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17848
    return-object p0
.end method

.method public setIdentifierValueAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17860
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17861
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17862
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17863
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 17864
    return-object p0
.end method

.method public setName(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17764
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17765
    if-nez p2, :cond_0

    .line 17766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17768
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->ensureNameInitialized()V

    .line 17769
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17770
    return-object p0
.end method

.method public setNegativeIntValue(J)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17932
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17933
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17934
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    .line 17935
    return-object p0
.end method

.method public setPositiveIntValue(J)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17899
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17900
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 17901
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 17902
    return-object p0
.end method

.method public setStringValue([B)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 17998
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->assertMutable()V

    .line 17999
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18000
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 18001
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    .line 18002
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
    .line 18295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 18219
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 18220
    .local v1, bytesWrittenBefore:I
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 18221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 18222
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 18221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18226
    .end local v2           #i:I
    :cond_0
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 18227
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getIdentifierValueAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 18229
    :cond_1
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 18230
    iget-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    invoke-virtual {p1, v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 18232
    :cond_2
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 18233
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18235
    :cond_3
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 18236
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->doubleValue_:D

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18238
    :cond_4
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 18239
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->stringValue_:[B

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 18241
    :cond_5
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 18242
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getAggregateValueAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 18244
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 18245
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 18246
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_7

    .line 18247
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 18252
    :cond_7
    return-void
.end method
