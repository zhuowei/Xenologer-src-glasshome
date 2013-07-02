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
    .line 20077
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    .line 20087
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    .line 20088
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->initFields()V

    .line 20089
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->makeImmutable()V

    .line 20090
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 20092
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19015
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 19050
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19335
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19476
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19768
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19015
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 19016
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 19050
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19335
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19476
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19768
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19016
    return-void
.end method

.method private ensurePathInitialized()V
    .locals 1

    .prologue
    .line 19052
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19055
    :cond_0
    return-void
.end method

.method private ensureSpanInitialized()V
    .locals 1

    .prologue
    .line 19337
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19340
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19027
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 19034
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 19024
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19021
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
    .line 19292
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19293
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19294
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19296
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
    .line 19451
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19452
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19453
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19455
    return-object p0
.end method

.method public addPath(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "value"

    .prologue
    .line 19256
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19257
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19258
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19259
    return-object p0
.end method

.method public addSpan(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "value"

    .prologue
    .line 19433
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19434
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19435
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19436
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20066
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 20067
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 20068
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 20069
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 20070
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 20071
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 20072
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 20073
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 20074
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clearLeadingComments()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19761
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19762
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19763
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19764
    return-object p0
.end method

.method public clearPath()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19328
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19330
    return-object p0
.end method

.method public clearSpan()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19469
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19471
    return-object p0
.end method

.method public clearTrailingComments()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19831
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19832
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19833
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19834
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19842
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19010
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
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 19030
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingComments()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19561
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19562
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 19563
    check-cast v1, Ljava/lang/String;

    .line 19571
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 19565
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 19566
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 19568
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19569
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 19571
    goto :goto_0
.end method

.method public getLeadingCommentsAsBytes()[B
    .locals 4

    .prologue
    .line 19615
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19616
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 19617
    check-cast v2, Ljava/lang/String;

    .line 19618
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 19619
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19622
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
    .line 19121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19122
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19123
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
    .line 19370
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19371
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19372
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
    .line 19045
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 19188
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
    .line 19155
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 19156
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
    .line 19086
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19087
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 19089
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
    .line 20020
    const/4 v2, 0x0

    .line 20021
    .local v2, size:I
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 20022
    const/4 v0, 0x0

    .line 20023
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 20024
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 20023
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20027
    :cond_0
    add-int/2addr v2, v0

    .line 20028
    add-int/lit8 v2, v2, 0x1

    .line 20029
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 20031
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    .line 20033
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 20034
    const/4 v0, 0x0

    .line 20035
    .restart local v0       #dataSize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 20036
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 20035
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20039
    :cond_2
    add-int/2addr v2, v0

    .line 20040
    add-int/lit8 v2, v2, 0x1

    .line 20041
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 20043
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    .line 20045
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_3
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 20046
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getLeadingCommentsAsBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 20049
    :cond_4
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 20050
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getTrailingCommentsAsBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 20053
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 20054
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    .line 20055
    return v2
.end method

.method public getSpan(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 19401
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
    .line 19386
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 19387
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
    .line 19353
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 19356
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
    .line 19779
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19780
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 19781
    check-cast v1, Ljava/lang/String;

    .line 19789
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 19783
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 19784
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 19786
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19787
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 19789
    goto :goto_0
.end method

.method public getTrailingCommentsAsBytes()[B
    .locals 4

    .prologue
    .line 19796
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19797
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 19798
    check-cast v2, Ljava/lang/String;

    .line 19799
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 19800
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19803
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

    .line 19518
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
    .line 19773
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
    .line 19038
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 20080
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 20081
    const-string v0, "com.google.protobuf.DescriptorProtos$SourceCodeInfo$Location"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    .line 20083
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 19838
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19010
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 3
    .parameter "other"

    .prologue
    .line 19856
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19857
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 19885
    :goto_0
    return-object p0

    .line 19858
    :cond_0
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19859
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19860
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19862
    :cond_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 19863
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19864
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19866
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19867
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19868
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 19869
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19875
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19876
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19877
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 19878
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19884
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 19871
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 19872
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto :goto_1

    .line 19880
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 19881
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
    .line 19847
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19848
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    .line 19849
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 19851
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19010
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 19891
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19893
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 19896
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 19897
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 19898
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 19899
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 19904
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 19906
    const/4 v0, 0x1

    goto :goto_0

    .line 19901
    :sswitch_0
    const/4 v0, 0x1

    .line 19902
    goto :goto_0

    .line 19911
    :sswitch_1
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v6, :cond_1

    .line 19912
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19914
    :cond_1
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19962
    .end local v0           #done:Z
    .end local v4           #tag:I
    .end local v5           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 19963
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 19918
    .restart local v0       #done:Z
    .restart local v4       #tag:I
    .restart local v5       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 19919
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 19920
    .local v3, limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-nez v6, :cond_2

    .line 19921
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 19923
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_3

    .line 19924
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19926
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 19930
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_3
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v6, :cond_4

    .line 19931
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19933
    :cond_4
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19937
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 19938
    .restart local v2       #length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 19939
    .restart local v3       #limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    if-nez v6, :cond_5

    .line 19940
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 19942
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_6

    .line 19943
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19945
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 19949
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19954
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19960
    .end local v4           #tag:I
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19961
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 19899
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
    .line 19018
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public setLeadingComments(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19666
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19667
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19668
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19669
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19670
    return-object p0
.end method

.method public setLeadingCommentsAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19714
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19715
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19716
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19717
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 19718
    return-object p0
.end method

.method public setPath(II)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19221
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19222
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensurePathInitialized()V

    .line 19223
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19224
    return-object p0
.end method

.method public setSpan(II)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19416
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19417
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->ensureSpanInitialized()V

    .line 19418
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19419
    return-object p0
.end method

.method public setTrailingComments(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19810
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19811
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19812
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19813
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19814
    return-object p0
.end method

.method public setTrailingCommentsAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 19821
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->assertMutable()V

    .line 19822
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19823
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 19824
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 19825
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
    .line 20062
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
    .line 19970
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 19971
    .local v1, bytesWrittenBefore:I
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 19972
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19973
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19974
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v4

    .line 19975
    .local v4, pathBytesBefore:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 19976
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 19975
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19978
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v3

    .line 19979
    .local v3, pathBytesAfter:I
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->pathCachedDataSize:I

    sub-int v8, v3, v4

    if-eq v7, v8, :cond_1

    .line 19981
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 19987
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

    .line 19988
    const/16 v7, 0x12

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19989
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 19990
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v6

    .line 19991
    .local v6, spanBytesBefore:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 19992
    iget-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 19991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19994
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v5

    .line 19995
    .local v5, spanBytesAfter:I
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->spanCachedDataSize:I

    sub-int v8, v5, v6

    if-eq v7, v8, :cond_3

    .line 19997
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 20003
    .end local v2           #i:I
    .end local v5           #spanBytesAfter:I
    .end local v6           #spanBytesBefore:I
    :cond_3
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 20004
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getLeadingCommentsAsBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 20006
    :cond_4
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 20007
    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getTrailingCommentsAsBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 20009
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 20010
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 20011
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->getCachedSize()I

    move-result v7

    sub-int v8, v0, v1

    if-eq v7, v8, :cond_6

    .line 20012
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 20017
    :cond_6
    return-void
.end method
