.class public final Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$NavigationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$NavigationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$NavigationRequest;",
        "Lcom/google/glass/companion/Proto$NavigationRequest$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$NavigationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private uri_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7244
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7245
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 7246
    return-void
.end method

.method static synthetic access$5700()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7251
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7249
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 2

    .prologue
    .line 7270
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    .line 7271
    .local v0, result:Lcom/google/glass/companion/Proto$NavigationRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7272
    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7274
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->build()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 5

    .prologue
    .line 7278
    new-instance v1, Lcom/google/glass/companion/Proto$NavigationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 7279
    .local v1, result:Lcom/google/glass/companion/Proto$NavigationRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7280
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7281
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7282
    or-int/lit8 v2, v2, 0x1

    .line 7284
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$5902(Lcom/google/glass/companion/Proto$NavigationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7285
    #setter for: Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$6002(Lcom/google/glass/companion/Proto$NavigationRequest;I)I

    .line 7286
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7255
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7257
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7258
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUri()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 7396
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7397
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7399
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 2

    .prologue
    .line 7262
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

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
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 7266
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7237
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7341
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7342
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7345
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7348
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

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7360
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7361
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7362
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7365
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7368
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

.method public hasUri()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7331
    iget v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7300
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7290
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7296
    :cond_0
    :goto_0
    return-object p0

    .line 7291
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7292
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7293
    #getter for: Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$5900(Lcom/google/glass/companion/Proto$NavigationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7307
    const/4 v2, 0x0

    .line 7309
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$NavigationRequest;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7314
    if-eqz v2, :cond_0

    .line 7315
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    .line 7318
    :cond_0
    return-object p0

    .line 7310
    :catch_0
    move-exception v1

    .line 7311
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    move-object v2, v0

    .line 7312
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7314
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7315
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    :cond_1
    throw v3
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
    .line 7237
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7237
    check-cast p1, Lcom/google/glass/companion/Proto$NavigationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

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
    .line 7237
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7380
    if-nez p1, :cond_0

    .line 7381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7383
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7384
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7386
    return-object p0
.end method

.method public setUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7410
    if-nez p1, :cond_0

    .line 7411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7413
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 7414
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 7416
    return-object p0
.end method
