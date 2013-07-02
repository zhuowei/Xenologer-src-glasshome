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
    .line 10668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10747
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10669
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 10670
    return-void
.end method

.method static synthetic access$10200()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10661
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10675
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10673
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 2

    .prologue
    .line 10694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    .line 10695
    .local v0, result:Lcom/google/glass/companion/Proto$NavigationRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10696
    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10698
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->build()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 5

    .prologue
    .line 10702
    new-instance v1, Lcom/google/glass/companion/Proto$NavigationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 10703
    .local v1, result:Lcom/google/glass/companion/Proto$NavigationRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10704
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10705
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10706
    or-int/lit8 v2, v2, 0x1

    .line 10708
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$10402(Lcom/google/glass/companion/Proto$NavigationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10709
    #setter for: Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$10502(Lcom/google/glass/companion/Proto$NavigationRequest;I)I

    .line 10710
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10679
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10681
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10682
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUri()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1

    .prologue
    .line 10824
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10825
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10827
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 2

    .prologue
    .line 10686
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
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10661
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
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 10690
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10661
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10766
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10767
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 10768
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10770
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10771
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10772
    iput-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10776
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10788
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10789
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10790
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10793
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10796
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

    .line 10756
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
    .line 10725
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 10714
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10721
    :goto_0
    return-object p0

    .line 10715
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10716
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10717
    #getter for: Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$10400(Lcom/google/glass/companion/Proto$NavigationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10720
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->access$10600(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

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
    .line 10732
    const/4 v2, 0x0

    .line 10734
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

    .line 10739
    if-eqz v2, :cond_0

    .line 10740
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    .line 10743
    :cond_0
    return-object p0

    .line 10735
    :catch_0
    move-exception v1

    .line 10736
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    move-object v2, v0

    .line 10737
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10739
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 10740
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
    .line 10661
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10661
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
    .line 10661
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10808
    if-nez p1, :cond_0

    .line 10809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10811
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10812
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10814
    return-object p0
.end method

.method public setUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10838
    if-nez p1, :cond_0

    .line 10839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10841
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->bitField0_:I

    .line 10842
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->uri_:Ljava/lang/Object;

    .line 10844
    return-object p0
.end method
