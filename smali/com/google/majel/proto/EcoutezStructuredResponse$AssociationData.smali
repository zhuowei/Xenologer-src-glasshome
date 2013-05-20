.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationData"
.end annotation


# static fields
.field public static final MATCH_LIST_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMatchList:Z

.field private hasName:Z

.field private matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9250
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 9272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9311
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    .line 9250
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9373
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9367
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 9290
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 9291
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 9292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    .line 9293
    return-object p0
.end method

.method public clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 9284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList:Z

    .line 9285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9286
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 9264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasName:Z

    .line 9265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 9266
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9314
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    if-gez v0, :cond_0

    .line 9316
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getSerializedSize()I

    .line 9318
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    return v0
.end method

.method public getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 9274
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9256
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9323
    const/4 v0, 0x0

    .line 9324
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9325
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9328
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9329
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9332
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    .line 9333
    return v0
.end method

.method public hasMatchList()Z
    .locals 1

    .prologue
    .line 9273
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 9257
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9297
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9342
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9346
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9347
    :sswitch_0
    return-object p0

    .line 9352
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    goto :goto_0

    .line 9356
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    .line 9357
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9358
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    goto :goto_0

    .line 9342
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9247
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v0

    return-object v0
.end method

.method public setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9276
    if-nez p1, :cond_0

    .line 9277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList:Z

    .line 9280
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9281
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasName:Z

    .line 9260
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 9261
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9303
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9304
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9306
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9307
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9309
    :cond_1
    return-void
.end method
