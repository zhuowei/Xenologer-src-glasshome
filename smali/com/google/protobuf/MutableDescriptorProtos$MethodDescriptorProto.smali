.class public final Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
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
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_TYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inputType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

.field private outputType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6426
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6436
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    .line 6437
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->initFields()V

    .line 6438
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->makeImmutable()V

    .line 6439
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 6441
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5946
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6016
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6116
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 5910
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 5911
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5946
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6016
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6116
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 5911
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 6188
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6189
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6191
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 5923
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5930
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5919
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 5920
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 5916
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 6411
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6412
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 6413
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6414
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6415
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6416
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6417
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6418
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6419
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6420
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6422
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6423
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearInputType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6109
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6110
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6111
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6112
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6009
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6010
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6011
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6012
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 6230
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6231
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6232
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6233
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6235
    :cond_0
    return-object p0
.end method

.method public clearOutputType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6179
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6180
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6181
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6182
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6248
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

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
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 5926
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6037
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6038
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6039
    check-cast v1, Ljava/lang/String;

    .line 6047
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6041
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6042
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6044
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6045
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6047
    goto :goto_0
.end method

.method public getInputTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6059
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6060
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6061
    check-cast v2, Ljava/lang/String;

    .line 6062
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6063
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6066
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

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 6208
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6209
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->ensureOptionsInitialized()V

    .line 6210
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6211
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5957
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 5958
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5959
    check-cast v1, Ljava/lang/String;

    .line 5967
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 5961
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 5962
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 5964
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5965
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5967
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 5974
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 5975
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 5976
    check-cast v2, Ljava/lang/String;

    .line 5977
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5978
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 5981
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

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 6202
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6127
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6128
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6129
    check-cast v1, Ljava/lang/String;

    .line 6137
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6131
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6132
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6134
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6135
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6137
    goto :goto_0
.end method

.method public getOutputTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6144
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6145
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6146
    check-cast v2, Ljava/lang/String;

    .line 6147
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6148
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6151
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5941
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6381
    const/4 v0, 0x0

    .line 6382
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 6383
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6386
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 6387
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getInputTypeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6390
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 6391
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOutputTypeAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6394
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 6395
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6398
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6399
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->cachedSize:I

    .line 6400
    return v0
.end method

.method public hasInputType()Z
    .locals 2

    .prologue
    .line 6026
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5951
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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
    .line 6196
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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

.method public hasOutputType()Z
    .locals 2

    .prologue
    .line 6121
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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
    .line 5934
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6429
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 6430
    const-string v0, "com.google.protobuf.DescriptorProtos$MethodDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6432
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6239
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6240
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6241
    const/4 v0, 0x0

    .line 6244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5905
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 6262
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6263
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6297
    :goto_0
    return-object p0

    .line 6264
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6265
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6266
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6267
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6273
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6274
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6275
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6276
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6282
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6283
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6284
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 6285
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6291
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6292
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->ensureOptionsInitialized()V

    .line 6293
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6294
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6296
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 6269
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6270
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1

    .line 6278
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6279
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    goto :goto_2

    .line 6287
    .end local v0           #ba:[B
    :cond_7
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6288
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 6253
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6254
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 6255
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 6257
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5905
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 6303
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6305
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6308
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6309
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 6310
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6311
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 6316
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6318
    const/4 v0, 0x1

    goto :goto_0

    .line 6313
    :sswitch_0
    const/4 v0, 0x1

    .line 6314
    goto :goto_0

    .line 6323
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6324
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 6349
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 6350
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 6328
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6329
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    goto :goto_0

    .line 6333
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6334
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    goto :goto_0

    .line 6338
    :sswitch_4
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 6339
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6341
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6342
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6347
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6348
    const/4 v4, 0x1

    goto :goto_1

    .line 6311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 5913
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setInputType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6078
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6079
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6080
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6081
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6082
    return-object p0
.end method

.method public setInputTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6094
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6095
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6096
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6097
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6098
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5988
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 5989
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5990
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 5991
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 5992
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6000
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6001
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6002
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6003
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6218
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6219
    if-nez p1, :cond_0

    .line 6220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6222
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6223
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6224
    return-object p0
.end method

.method public setOutputType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6158
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6159
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6160
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6161
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6162
    return-object p0
.end method

.method public setOutputTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6169
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6170
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6171
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6172
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6173
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
    .line 6407
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
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6357
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 6358
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 6359
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6361
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 6362
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getInputTypeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6364
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 6365
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOutputTypeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6367
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 6368
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6370
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6371
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 6372
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_4

    .line 6373
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6378
    :cond_4
    return-void
.end method
