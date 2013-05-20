.class public final Lcom/google/glass/companion/Proto$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$Error;",
        "Lcom/google/glass/companion/Proto$Error$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$ErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/glass/companion/Proto$Error$ErrorType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8779
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8859
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8780
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->maybeForceBuilderInitialization()V

    .line 8781
    return-void
.end method

.method static synthetic access$7200()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-static {}, Lcom/google/glass/companion/Proto$Error$Builder;->create()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8786
    new-instance v0, Lcom/google/glass/companion/Proto$Error$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8784
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$Error;
    .locals 2

    .prologue
    .line 8805
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    .line 8806
    .local v0, result:Lcom/google/glass/companion/Proto$Error;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8807
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8809
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->build()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$Error;
    .locals 5

    .prologue
    .line 8813
    new-instance v1, Lcom/google/glass/companion/Proto$Error;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 8814
    .local v1, result:Lcom/google/glass/companion/Proto$Error;
    iget v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    .line 8815
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8816
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8817
    or-int/lit8 v2, v2, 0x1

    .line 8819
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    #setter for: Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Error;->access$7402(Lcom/google/glass/companion/Proto$Error;Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8820
    #setter for: Lcom/google/glass/companion/Proto$Error;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Error;->access$7502(Lcom/google/glass/companion/Proto$Error;I)I

    .line 8821
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8790
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8791
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8792
    iget v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    .line 8793
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clear()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clear()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 8888
    iget v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    .line 8889
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8891
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 2

    .prologue
    .line 8797
    invoke-static {}, Lcom/google/glass/companion/Proto$Error$Builder;->create()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clone()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clone()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clone()Lcom/google/glass/companion/Proto$Error$Builder;

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
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->clone()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 8801
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1

    .prologue
    .line 8870
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8864
    iget v1, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

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
    .line 8833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8835
    const/4 v0, 0x0

    .line 8837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8825
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8829
    :cond_0
    :goto_0
    return-object p0

    .line 8826
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Error;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8827
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Error;->getType()Lcom/google/glass/companion/Proto$Error$ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Error$Builder;->setType(Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8844
    const/4 v2, 0x0

    .line 8846
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$Error;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8851
    if-eqz v2, :cond_0

    .line 8852
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    .line 8855
    :cond_0
    return-object p0

    .line 8847
    :catch_0
    move-exception v1

    .line 8848
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    move-object v2, v0

    .line 8849
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8851
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8852
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

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
    .line 8772
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8772
    check-cast p1, Lcom/google/glass/companion/Proto$Error;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

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
    .line 8772
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8876
    if-nez p1, :cond_0

    .line 8877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8879
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Error$Builder;->bitField0_:I

    .line 8880
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Error$Builder;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8882
    return-object p0
.end method
