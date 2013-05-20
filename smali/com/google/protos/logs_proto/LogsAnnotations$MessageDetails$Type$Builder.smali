.class public final Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;",
        ">;",
        "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private logType_:Ljava/lang/Object;

.field private sourceType_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2112
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->maybeForceBuilderInitialization()V

    .line 2113
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2117
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2118
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->maybeForceBuilderInitialization()V

    .line 2119
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2094
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2125
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2100
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2121
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 2

    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    .line 2152
    .local v0, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2155
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 5

    .prologue
    .line 2159
    new-instance v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 2160
    .local v1, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2161
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2162
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2163
    or-int/lit8 v2, v2, 0x1

    .line 2165
    :cond_0
    iget-object v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$1802(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2167
    or-int/lit8 v2, v2, 0x2

    .line 2169
    :cond_1
    iget-object v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$1902(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$2002(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;I)I

    .line 2171
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onBuilt()V

    .line 2172
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2131
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2133
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2134
    return-object p0
.end method

.method public clearLogType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2358
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2359
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getLogType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2360
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2361
    return-object p0
.end method

.method public clearSourceType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2286
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getSourceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2287
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2288
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 2

    .prologue
    .line 2138
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

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
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1

    .prologue
    .line 2147
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2143
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2316
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2317
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2319
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2322
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getLogTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2330
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2331
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2332
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2335
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2338
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2243
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2244
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2246
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2249
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSourceTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2257
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2258
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2259
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2262
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2265
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasLogType()Z
    .locals 2

    .prologue
    .line 2309
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

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

.method public hasSourceType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2236
    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 2105
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2201
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->hasSourceType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2209
    :cond_0
    :goto_0
    return v0

    .line 2205
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->hasLogType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2216
    const/4 v2, 0x0

    .line 2218
    .local v2, parsedMessage:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    :try_start_0
    sget-object v3, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    if-eqz v2, :cond_0

    .line 2224
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    .line 2227
    :cond_0
    return-object p0

    .line 2219
    :catch_0
    move-exception v1

    .line 2220
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-object v2, v0

    .line 2221
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2224
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2176
    instance-of v0, p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    if-eqz v0, :cond_0

    .line 2177
    check-cast p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object p0

    .line 2180
    .end local p0
    :goto_0
    return-object p0

    .line 2179
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2185
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2197
    :goto_0
    return-object p0

    .line 2186
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->hasSourceType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2188
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$1800(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2189
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2191
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->hasLogType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2192
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2193
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->access$1900(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2194
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2196
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setLogType(Ljava/lang/String;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2346
    if-nez p1, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2349
    :cond_0
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2350
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2351
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2352
    return-object p0
.end method

.method public setLogTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2368
    if-nez p1, :cond_0

    .line 2369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2371
    :cond_0
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2372
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->logType_:Ljava/lang/Object;

    .line 2373
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2374
    return-object p0
.end method

.method public setSourceType(Ljava/lang/String;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2273
    if-nez p1, :cond_0

    .line 2274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2276
    :cond_0
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2277
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2278
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2279
    return-object p0
.end method

.method public setSourceTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2295
    if-nez p1, :cond_0

    .line 2296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2298
    :cond_0
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->bitField0_:I

    .line 2299
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->sourceType_:Ljava/lang/Object;

    .line 2300
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->onChanged()V

    .line 2301
    return-object p0
.end method
