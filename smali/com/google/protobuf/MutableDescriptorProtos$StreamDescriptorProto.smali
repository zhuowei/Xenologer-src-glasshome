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
    .line 7422
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 7432
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    .line 7433
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->initFields()V

    .line 7434
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->makeImmutable()V

    .line 7435
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 7437
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6906
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6942
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 7012
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7112
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6906
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 6907
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6942
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 7012
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7112
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 6907
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 7184
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7185
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7187
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6919
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6926
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6915
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 6916
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6912
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 7407
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7408
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 7409
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 7410
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7411
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7412
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7413
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7414
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7415
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7416
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7418
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7419
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearClientMessageType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 7105
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7106
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7107
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7108
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 7005
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7006
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7007
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 7008
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 7226
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7227
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7228
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7229
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7231
    :cond_0
    return-object p0
.end method

.method public clearServerMessageType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 7175
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7176
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7177
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7178
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 7244
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6901
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
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getClientMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7033
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7034
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7035
    check-cast v1, Ljava/lang/String;

    .line 7043
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 7037
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 7038
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 7040
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7041
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7043
    goto :goto_0
.end method

.method public getClientMessageTypeAsBytes()[B
    .locals 4

    .prologue
    .line 7055
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7056
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 7057
    check-cast v2, Ljava/lang/String;

    .line 7058
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 7059
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7062
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
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 6922
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 7204
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7205
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->ensureOptionsInitialized()V

    .line 7206
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7207
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6953
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6954
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6955
    check-cast v1, Ljava/lang/String;

    .line 6963
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6957
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6958
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6960
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6961
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6963
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 6970
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6971
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6972
    check-cast v2, Ljava/lang/String;

    .line 6973
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6974
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6977
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
    .line 7198
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
    .line 6937
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7377
    const/4 v0, 0x0

    .line 7378
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7379
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7382
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7383
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getClientMessageTypeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7386
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7387
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getServerMessageTypeAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7390
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 7391
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7394
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7395
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->cachedSize:I

    .line 7396
    return v0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7123
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7124
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7125
    check-cast v1, Ljava/lang/String;

    .line 7133
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 7127
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 7128
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 7130
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7131
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7133
    goto :goto_0
.end method

.method public getServerMessageTypeAsBytes()[B
    .locals 4

    .prologue
    .line 7140
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7141
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 7142
    check-cast v2, Ljava/lang/String;

    .line 7143
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 7144
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7147
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
    .line 7022
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

    .line 6947
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
    .line 7192
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
    .line 7117
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
    .line 6930
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7425
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 7426
    const-string v0, "com.google.protobuf.DescriptorProtos$StreamDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 7428
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7235
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7237
    const/4 v0, 0x0

    .line 7240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6901
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 7258
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7259
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 7293
    :goto_0
    return-object p0

    .line 7260
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7261
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7262
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 7263
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 7269
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasClientMessageType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7270
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7271
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 7272
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7278
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasServerMessageType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7279
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7280
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 7281
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7287
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7288
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->ensureOptionsInitialized()V

    .line 7289
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7290
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7292
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 7265
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 7266
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1

    .line 7274
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 7275
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    goto :goto_2

    .line 7283
    .end local v0           #ba:[B
    :cond_7
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 7284
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
    .line 7249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7250
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_0

    .line 7251
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 7253
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6901
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 7299
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7301
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 7304
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 7305
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 7306
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7307
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 7312
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7314
    const/4 v0, 0x1

    goto :goto_0

    .line 7309
    :sswitch_0
    const/4 v0, 0x1

    .line 7310
    goto :goto_0

    .line 7319
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7320
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 7345
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 7346
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 7324
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7325
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 7329
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7330
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    goto :goto_0

    .line 7334
    :sswitch_4
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 7335
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7337
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7338
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 7343
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7344
    const/4 v4, 0x1

    goto :goto_1

    .line 7307
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
    .line 6909
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6901
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setClientMessageType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7074
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7075
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7076
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7077
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7078
    return-object p0
.end method

.method public setClientMessageTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7090
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7091
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7092
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7093
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;

    .line 7094
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6984
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6985
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6986
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6987
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6988
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6995
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 6996
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6997
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 6998
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;

    .line 6999
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7215
    if-nez p1, :cond_0

    .line 7216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7218
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7219
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    .line 7220
    return-object p0
.end method

.method public setServerMessageType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7154
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7155
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7156
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7157
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7158
    return-object p0
.end method

.method public setServerMessageTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7165
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->assertMutable()V

    .line 7166
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7167
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    .line 7168
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;

    .line 7169
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
    .line 7403
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

    .line 7353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 7354
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 7355
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 7357
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 7358
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getClientMessageTypeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 7360
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 7361
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getServerMessageTypeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 7363
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 7364
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 7366
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 7368
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_4

    .line 7369
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7374
    :cond_4
    return-void
.end method
