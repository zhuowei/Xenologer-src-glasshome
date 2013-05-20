.class public final Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final LEADING_COMMENTS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SPAN_FIELD_NUMBER:I = 0x2

.field public static final TRAILING_COMMENTS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private leadingComments_:Ljava/lang/Object;

.field private pathCachedDataSize:I

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spanCachedDataSize:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trailingComments_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19449
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    .line 19459
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    .line 19460
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->initFields()V

    .line 19461
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->makeImmutable()V

    .line 19462
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 19464
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 18422
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 18707
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 18848
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19140
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 18387
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 18388
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 18422
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 18707
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 18848
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19140
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 18388
    return-void
.end method

.method private ensurePathInitialized()V
    .locals 1

    .prologue
    .line 18424
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 18425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 18427
    :cond_0
    return-void
.end method

.method private ensureSpanInitialized()V
    .locals 1

    .prologue
    .line 18709
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 18710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 18712
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18399
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18406
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 18396
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18393
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllPath(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;"
        }
    .end annotation

    .prologue
    .line 18664
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18665
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 18666
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18668
    return-object p0
.end method

.method public addAllSpan(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;"
        }
    .end annotation

    .prologue
    .line 18823
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18824
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 18825
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18827
    return-object p0
.end method

.method public addPath(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "value"

    .prologue
    .line 18628
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18629
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 18630
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18631
    return-object p0
.end method

.method public addSpan(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "value"

    .prologue
    .line 18805
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18806
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 18807
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18808
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19438
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19439
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 19440
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19441
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19442
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19443
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19444
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19445
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19446
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clearLeadingComments()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19133
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19134
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19135
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19136
    return-object p0
.end method

.method public clearPath()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18700
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 18702
    return-object p0
.end method

.method public clearSpan()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18841
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 18843
    return-object p0
.end method

.method public clearTrailingComments()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19203
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19204
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19205
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19206
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19214
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

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
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18402
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingComments()Ljava/lang/String;
    .locals 4

    .prologue
    .line 18933
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 18934
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 18935
    check-cast v1, Ljava/lang/String;

    .line 18943
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 18937
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 18938
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 18940
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18941
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18943
    goto :goto_0
.end method

.method public getLeadingCommentsAsBytes()[B
    .locals 4

    .prologue
    .line 18987
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 18988
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 18989
    check-cast v2, Ljava/lang/String;

    .line 18990
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 18991
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 18994
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

.method public getMutablePathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18493
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18494
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 18495
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18742
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18743
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 18744
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18417
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 18560
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPathCount()I
    .locals 1

    .prologue
    .line 18527
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18528
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18458
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 18459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 18461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 19392
    const/4 v2, 0x0

    .line 19393
    .local v2, size:I
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 19394
    const/4 v0, 0x0

    .line 19395
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 19396
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 19395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19399
    :cond_0
    add-int/2addr v2, v0

    .line 19400
    add-int/lit8 v2, v2, 0x1

    .line 19401
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 19403
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    .line 19405
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 19406
    const/4 v0, 0x0

    .line 19407
    .restart local v0       #dataSize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 19408
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 19407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19411
    :cond_2
    add-int/2addr v2, v0

    .line 19412
    add-int/lit8 v2, v2, 0x1

    .line 19413
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 19415
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    .line 19417
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_3
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 19418
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getLeadingCommentsAsBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 19421
    :cond_4
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 19422
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getTrailingCommentsAsBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 19425
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 19426
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    .line 19427
    return v2
.end method

.method public getSpan(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 18773
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 18758
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18725
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 18726
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 18728
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrailingComments()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19151
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19152
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 19153
    check-cast v1, Ljava/lang/String;

    .line 19161
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 19155
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 19156
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 19158
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19159
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 19161
    goto :goto_0
.end method

.method public getTrailingCommentsAsBytes()[B
    .locals 4

    .prologue
    .line 19168
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19169
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 19170
    check-cast v2, Ljava/lang/String;

    .line 19171
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 19172
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19175
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

.method public hasLeadingComments()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18890
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrailingComments()Z
    .locals 2

    .prologue
    .line 19145
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 18410
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 19452
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 19453
    const-string v0, "com.google.protobuf.DescriptorProtos$SourceCodeInfo$Location"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    .line 19455
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 19210
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18382
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 3
    .parameter "other"

    .prologue
    .line 19228
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19229
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 19257
    :goto_0
    return-object p0

    .line 19230
    :cond_0
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19231
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19232
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19234
    :cond_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 19235
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19236
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19238
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19239
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19240
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 19241
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19247
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19248
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19249
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 19250
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19256
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 19243
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 19244
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto :goto_1

    .line 19252
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 19253
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "other"

    .prologue
    .line 19219
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19220
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    .line 19221
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 19223
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18382
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 19263
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19265
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 19268
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 19269
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 19270
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 19271
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 19276
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 19278
    const/4 v0, 0x1

    goto :goto_0

    .line 19273
    :sswitch_0
    const/4 v0, 0x1

    .line 19274
    goto :goto_0

    .line 19283
    :sswitch_1
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v6, :cond_1

    .line 19284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19286
    :cond_1
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19334
    .end local v0           #done:Z
    .end local v4           #tag:I
    .end local v5           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 19335
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 19290
    .restart local v0       #done:Z
    .restart local v4       #tag:I
    .restart local v5       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 19291
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 19292
    .local v3, limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v6, :cond_2

    .line 19293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19295
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_3

    .line 19296
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19298
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 19302
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_3
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v6, :cond_4

    .line 19303
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19305
    :cond_4
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19309
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 19310
    .restart local v2       #length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 19311
    .restart local v3       #limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v6, :cond_5

    .line 19312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19314
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_6

    .line 19315
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19317
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 19321
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19322
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19326
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19327
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19332
    .end local v4           #tag:I
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19333
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 19271
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 18390
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public setLeadingComments(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19038
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19039
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19040
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19041
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19042
    return-object p0
.end method

.method public setLeadingCommentsAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19086
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19087
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19088
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19089
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19090
    return-object p0
.end method

.method public setPath(II)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18593
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18594
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 18595
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18596
    return-object p0
.end method

.method public setSpan(II)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18788
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 18789
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 18790
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18791
    return-object p0
.end method

.method public setTrailingComments(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19182
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19183
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19184
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19185
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19186
    return-object p0
.end method

.method public setTrailingCommentsAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19193
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19194
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19195
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19196
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19197
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
    .line 19434
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

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
    .line 19342
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 19343
    .local v1, bytesWrittenBefore:I
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 19344
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19345
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v4

    .line 19347
    .local v4, pathBytesBefore:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 19348
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 19347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19350
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v3

    .line 19351
    .local v3, pathBytesAfter:I
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    sub-int v8, v3, v4

    if-eq v7, v8, :cond_1

    .line 19353
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 19359
    .end local v2           #i:I
    .end local v3           #pathBytesAfter:I
    .end local v4           #pathBytesBefore:I
    :cond_1
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 19360
    const/16 v7, 0x12

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19361
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19362
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v6

    .line 19363
    .local v6, spanBytesBefore:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 19364
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 19363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19366
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v5

    .line 19367
    .local v5, spanBytesAfter:I
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    sub-int v8, v5, v6

    if-eq v7, v8, :cond_3

    .line 19369
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 19375
    .end local v2           #i:I
    .end local v5           #spanBytesAfter:I
    .end local v6           #spanBytesBefore:I
    :cond_3
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 19376
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getLeadingCommentsAsBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 19378
    :cond_4
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 19379
    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getTrailingCommentsAsBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 19381
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 19382
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 19383
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getCachedSize()I

    move-result v7

    sub-int v8, v0, v1

    if-eq v7, v8, :cond_6

    .line 19384
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 19389
    :cond_6
    return-void
.end method
