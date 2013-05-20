.class public final Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
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
    name = "StreamDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final CLIENT_MESSAGE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_MESSAGE_TYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientMessageType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

.field private serverMessageType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6976
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6986
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    .line 6987
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 6988
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->makeImmutable()V

    .line 6989
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 6991
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6460
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6496
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6566
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6666
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6460
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 6461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6496
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6566
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6666
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6461
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 6738
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6739
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6741
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6473
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6480
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6469
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6470
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6466
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 6961
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6962
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 6963
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6964
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6965
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6966
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6967
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6968
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6969
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6970
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6972
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6973
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearClientMessageType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6659
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6660
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6661
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6662
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6559
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6560
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6561
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6562
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 6780
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6781
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6782
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6783
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6785
    :cond_0
    return-object p0
.end method

.method public clearServerMessageType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6729
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6730
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6731
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6732
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6798
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

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
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getClientMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6587
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6588
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6589
    check-cast v1, Ljava/lang/String;

    .line 6597
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6591
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6592
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6594
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6595
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6597
    goto :goto_0
.end method

.method public getClientMessageTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6609
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6610
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6611
    check-cast v2, Ljava/lang/String;

    .line 6612
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6613
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6616
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
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6476
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 6758
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6759
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->ensureOptionsInitialized()V

    .line 6760
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6761
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6507
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6508
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6509
    check-cast v1, Ljava/lang/String;

    .line 6517
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6511
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6512
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6514
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6515
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6517
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 6524
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6525
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6526
    check-cast v2, Ljava/lang/String;

    .line 6527
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6528
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6531
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

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 6752
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6491
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6931
    const/4 v0, 0x0

    .line 6932
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 6933
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6936
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 6937
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getClientMessageTypeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6940
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 6941
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getServerMessageTypeAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6944
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 6945
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6948
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6949
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->cachedSize:I

    .line 6950
    return v0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6677
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6678
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6679
    check-cast v1, Ljava/lang/String;

    .line 6687
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6681
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6682
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6684
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6685
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6687
    goto :goto_0
.end method

.method public getServerMessageTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6694
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6695
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6696
    check-cast v2, Ljava/lang/String;

    .line 6697
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6698
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6701
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

.method public hasClientMessageType()Z
    .locals 2

    .prologue
    .line 6576
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

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

    .line 6501
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

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
    .line 6746
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

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

.method public hasServerMessageType()Z
    .locals 2

    .prologue
    .line 6671
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

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
    .line 6484
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6979
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 6980
    const-string v0, "com.google.protobuf.DescriptorProtos$StreamDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6982
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6789
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6790
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6791
    const/4 v0, 0x0

    .line 6794
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
    .line 6455
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 6812
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6813
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6847
    :goto_0
    return-object p0

    .line 6814
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6815
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6816
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6817
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6823
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasClientMessageType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6824
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6825
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6826
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6832
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasServerMessageType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6833
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6834
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 6835
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6841
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6842
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->ensureOptionsInitialized()V

    .line 6843
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6844
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6846
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 6819
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6820
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1

    .line 6828
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6829
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    goto :goto_2

    .line 6837
    .end local v0           #ba:[B
    :cond_7
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6838
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 6803
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6804
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_0

    .line 6805
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 6807
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6455
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 6853
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6855
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6858
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6859
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 6860
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6861
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 6866
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6868
    const/4 v0, 0x1

    goto :goto_0

    .line 6863
    :sswitch_0
    const/4 v0, 0x1

    .line 6864
    goto :goto_0

    .line 6873
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 6899
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 6900
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 6878
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 6883
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 6888
    :sswitch_4
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 6889
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6891
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6892
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6897
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6898
    const/4 v4, 0x1

    goto :goto_1

    .line 6861
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6463
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setClientMessageType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6628
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6629
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6630
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6631
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6632
    return-object p0
.end method

.method public setClientMessageTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6645
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6646
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6647
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 6648
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6538
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6539
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6540
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6541
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6542
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6549
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6550
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6551
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6552
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6553
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6768
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6769
    if-nez p1, :cond_0

    .line 6770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6772
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6773
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6774
    return-object p0
.end method

.method public setServerMessageType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6708
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6709
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6710
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6711
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6712
    return-object p0
.end method

.method public setServerMessageTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6719
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6720
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6721
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6722
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6723
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
    .line 6957
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

    .line 6907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 6908
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 6909
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6911
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 6912
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getClientMessageTypeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6914
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 6915
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getServerMessageTypeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6917
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 6918
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6920
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6921
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 6922
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_4

    .line 6923
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6928
    :cond_4
    return-void
.end method
