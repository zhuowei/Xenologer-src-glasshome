.class public final Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
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
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private method_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

.field private stream_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5878
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5888
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    .line 5889
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->initFields()V

    .line 5890
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->makeImmutable()V

    .line 5891
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 5893
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5290
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5326
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5396
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5493
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5290
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 5291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5326
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5396
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5493
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5291
    return-void
.end method

.method private ensureMethodInitialized()V
    .locals 1

    .prologue
    .line 5398
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5401
    :cond_0
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5633
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5635
    :cond_0
    return-void
.end method

.method private ensureStreamInitialized()V
    .locals 1

    .prologue
    .line 5495
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5498
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5303
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5310
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5299
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5300
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5296
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllMethod(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 5464
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5465
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5466
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5468
    return-object p0
.end method

.method public addAllStream(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 5593
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5594
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5595
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5597
    return-object p0
.end method

.method public addMethod()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 5441
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5442
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5443
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 5444
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5445
    return-object v0
.end method

.method public addMethod(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5451
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5452
    if-nez p1, :cond_0

    .line 5453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5455
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5456
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5457
    return-object p0
.end method

.method public addStream(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5576
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5577
    if-nez p1, :cond_0

    .line 5578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5580
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5581
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5582
    return-object p0
.end method

.method public addStream()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 5562
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5563
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5564
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 5565
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5566
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5865
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5866
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 5867
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5868
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5869
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5870
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5871
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5872
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5874
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5875
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearMethod()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5487
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5489
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5389
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5390
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5391
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5392
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    .line 5674
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5675
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5676
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5677
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5679
    :cond_0
    return-object p0
.end method

.method public clearStream()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5624
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5626
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5702
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

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
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5306
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5429
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 5406
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5412
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableMethod(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5435
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public getMutableMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5421
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5422
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5423
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 5652
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5653
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureOptionsInitialized()V

    .line 5654
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5655
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getMutableStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5552
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public getMutableStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5530
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5531
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5532
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5337
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5338
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5339
    check-cast v1, Ljava/lang/String;

    .line 5347
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 5341
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 5342
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 5344
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5345
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5347
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 5354
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5355
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 5356
    check-cast v2, Ljava/lang/String;

    .line 5357
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5358
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5361
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

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 5646
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5321
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5831
    const/4 v1, 0x0

    .line 5832
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 5833
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 5836
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 5837
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5838
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5842
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 5843
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5844
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5843
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5848
    .end local v0           #i:I
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_3

    .line 5849
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5852
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 5853
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->cachedSize:I

    .line 5854
    return v1
.end method

.method public getStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5542
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public getStreamCount()I
    .locals 1

    .prologue
    .line 5507
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5517
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5331
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 5640
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

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
    .line 5314
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5881
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 5882
    const-string v0, "com.google.protobuf.DescriptorProtos$ServiceDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5884
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5683
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5684
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5698
    :cond_0
    :goto_1
    return v1

    .line 5683
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5688
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getStreamCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5689
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5688
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5693
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5694
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5698
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5285
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 5716
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5717
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5743
    :goto_0
    return-object p0

    .line 5718
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5719
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5720
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5721
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5727
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5728
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5729
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5732
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5733
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureOptionsInitialized()V

    .line 5734
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5735
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5737
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5738
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5739
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5742
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 5723
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 5724
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 5707
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5708
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_0

    .line 5709
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    .line 5711
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5285
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 5749
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5751
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5754
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5755
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5757
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5762
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5764
    const/4 v0, 0x1

    goto :goto_0

    .line 5759
    :sswitch_0
    const/4 v0, 0x1

    .line 5760
    goto :goto_0

    .line 5769
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5770
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5793
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 5794
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 5774
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->addMethod()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5778
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 5779
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5781
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5782
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5786
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->addStream()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5791
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5792
    const/4 v4, 0x1

    goto :goto_1

    .line 5757
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5293
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(ILcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5475
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5476
    if-nez p2, :cond_0

    .line 5477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5479
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5480
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5481
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5368
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5369
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5370
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5371
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5372
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5379
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5380
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5381
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5382
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5383
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5662
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5663
    if-nez p1, :cond_0

    .line 5664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5666
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5667
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5668
    return-object p0
.end method

.method public setStream(ILcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5608
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5609
    if-nez p2, :cond_0

    .line 5610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5612
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5613
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5614
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
    .line 5861
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5801
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 5802
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 5803
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5805
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5806
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5807
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5806
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5811
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 5812
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5814
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 5815
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5816
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5815
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5820
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5821
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 5822
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_4

    .line 5823
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5828
    :cond_4
    return-void
.end method
