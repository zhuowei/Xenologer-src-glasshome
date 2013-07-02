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
    .line 6324
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6334
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    .line 6335
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->initFields()V

    .line 6336
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->makeImmutable()V

    .line 6337
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 6339
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5772
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5842
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5939
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5736
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 5737
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5772
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5842
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5939
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5737
    return-void
.end method

.method private ensureMethodInitialized()V
    .locals 1

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5847
    :cond_0
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 6078
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6079
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6081
    :cond_0
    return-void
.end method

.method private ensureStreamInitialized()V
    .locals 1

    .prologue
    .line 5941
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 5944
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5749
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5756
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5745
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 5746
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5742
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
    .line 5910
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5911
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5912
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5914
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
    .line 6039
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6040
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 6041
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6043
    return-object p0
.end method

.method public addMethod()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 5887
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5888
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5889
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 5890
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5891
    return-object v0
.end method

.method public addMethod(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5897
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5898
    if-nez p1, :cond_0

    .line 5899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5901
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5902
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5903
    return-object p0
.end method

.method public addStream(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6022
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6023
    if-nez p1, :cond_0

    .line 6024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6026
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 6027
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6028
    return-object p0
.end method

.method public addStream()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 6008
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6009
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 6010
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 6011
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6012
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6311
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6312
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 6313
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 6314
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6315
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 6316
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 6317
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6318
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6320
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6321
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearMethod()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5933
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 5935
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5835
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5836
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5837
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5838
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    .line 6120
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6121
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6122
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6123
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6125
    :cond_0
    return-object p0
.end method

.method public clearStream()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 6070
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    .line 6072
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 6148
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5731
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
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5752
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5875
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 5852
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
    .line 5858
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5859
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5861
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
    .line 5881
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
    .line 5867
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5868
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5869
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 6098
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6099
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureOptionsInitialized()V

    .line 6100
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6101
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getMutableStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5998
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
    .line 5976
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5977
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 5978
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5783
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5784
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5785
    check-cast v1, Ljava/lang/String;

    .line 5793
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 5787
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 5788
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 5790
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5791
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5793
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 5800
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5801
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 5802
    check-cast v2, Ljava/lang/String;

    .line 5803
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5804
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5807
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
    .line 6092
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
    .line 5767
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6277
    const/4 v1, 0x0

    .line 6278
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 6279
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 6282
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 6283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6284
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6288
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 6289
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6290
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6294
    .end local v0           #i:I
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_3

    .line 6295
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6298
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 6299
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->cachedSize:I

    .line 6300
    return v1
.end method

.method public getStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5988
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public getStreamCount()I
    .locals 1

    .prologue
    .line 5953
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
    .line 5963
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5966
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

    .line 5777
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
    .line 6086
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
    .line 5760
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6327
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 6328
    const-string v0, "com.google.protobuf.DescriptorProtos$ServiceDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6330
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6130
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6144
    :cond_0
    :goto_1
    return v1

    .line 6129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6134
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getStreamCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 6135
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getStream(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6139
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6140
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6144
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5731
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 6162
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6163
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6189
    :goto_0
    return-object p0

    .line 6164
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6165
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6166
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6167
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 6173
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6174
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 6175
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6178
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6179
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureOptionsInitialized()V

    .line 6180
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6181
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6183
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6184
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 6185
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6188
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 6169
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6170
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
    .line 6153
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6154
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_0

    .line 6155
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    .line 6157
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5731
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 6195
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6197
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6200
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6201
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 6202
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6203
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 6208
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6210
    const/4 v0, 0x1

    goto :goto_0

    .line 6205
    :sswitch_0
    const/4 v0, 0x1

    .line 6206
    goto :goto_0

    .line 6215
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 6239
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 6240
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 6220
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->addMethod()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6224
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 6225
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6227
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6228
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6232
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->addStream()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6237
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6238
    const/4 v4, 0x1

    goto :goto_1

    .line 6203
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
    .line 5739
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(ILcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5921
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5922
    if-nez p2, :cond_0

    .line 5923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5925
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureMethodInitialized()V

    .line 5926
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5927
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5814
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5815
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5816
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5817
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5818
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5825
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 5826
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5827
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 5828
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    .line 5829
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6108
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6109
    if-nez p1, :cond_0

    .line 6110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6112
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 6113
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 6114
    return-object p0
.end method

.method public setStream(ILcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6054
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->assertMutable()V

    .line 6055
    if-nez p2, :cond_0

    .line 6056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6058
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->ensureStreamInitialized()V

    .line 6059
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6060
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
    .line 6307
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

    .line 6247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 6248
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 6249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6251
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6252
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6253
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6257
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 6258
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6260
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 6261
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6262
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->stream_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6266
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 6268
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_4

    .line 6269
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6274
    :cond_4
    return-void
.end method
