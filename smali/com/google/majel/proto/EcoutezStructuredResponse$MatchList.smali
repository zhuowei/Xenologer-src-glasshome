.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchList"
.end annotation


# static fields
.field public static final HAS_HIDDEN_MATCHES_FIELD_NUMBER:I = 0x1

.field public static final HAS_HIDDEN_MATCHES_SECONDARY_FIELD_NUMBER:I = 0x2

.field public static final MATCH_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasHasHiddenMatches:Z

.field private hasHasHiddenMatchesSecondary:Z

.field private hasHiddenMatchesSecondary_:Z

.field private hasHiddenMatches_:Z

.field private match_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Match;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8272
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8277
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 8294
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 8310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    .line 8367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    .line 8272
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8437
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8431
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0
.end method


# virtual methods
.method public addMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "value"

    .prologue
    .line 8327
    if-nez p1, :cond_0

    .line 8328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8330
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    .line 8333
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8334
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 8342
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->clearHasHiddenMatches()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8343
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->clearHasHiddenMatchesSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8344
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->clearMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8345
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    .line 8346
    return-object p0
.end method

.method public clearHasHiddenMatches()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8286
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatches:Z

    .line 8287
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 8288
    return-object p0
.end method

.method public clearHasHiddenMatchesSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8303
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatchesSecondary:Z

    .line 8304
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 8305
    return-object p0
.end method

.method public clearMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 8337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    .line 8338
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8370
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    if-gez v0, :cond_0

    .line 8372
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getSerializedSize()I

    .line 8374
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    return v0
.end method

.method public getHasHiddenMatches()Z
    .locals 1

    .prologue
    .line 8278
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    return v0
.end method

.method public getHasHiddenMatchesSecondary()Z
    .locals 1

    .prologue
    .line 8295
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    return v0
.end method

.method public getMatch(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "index"

    .prologue
    .line 8317
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 8315
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8313
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 8379
    const/4 v2, 0x0

    .line 8380
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8381
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getHasHiddenMatches()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8384
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatchesSecondary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8385
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getHasHiddenMatchesSecondary()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8388
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getMatchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 8389
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 8392
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    .line 8393
    return v2
.end method

.method public hasHasHiddenMatches()Z
    .locals 1

    .prologue
    .line 8279
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatches:Z

    return v0
.end method

.method public hasHasHiddenMatchesSecondary()Z
    .locals 1

    .prologue
    .line 8296
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatchesSecondary:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8350
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8401
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8402
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8406
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8407
    :sswitch_0
    return-object p0

    .line 8412
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->setHasHiddenMatches(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    goto :goto_0

    .line 8416
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->setHasHiddenMatchesSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    goto :goto_0

    .line 8420
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    .line 8421
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8422
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->addMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    goto :goto_0

    .line 8402
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 8269
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v0

    return-object v0
.end method

.method public setHasHiddenMatches(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "value"

    .prologue
    .line 8281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatches:Z

    .line 8282
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 8283
    return-object p0
.end method

.method public setHasHiddenMatchesSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "value"

    .prologue
    .line 8298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatchesSecondary:Z

    .line 8299
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 8300
    return-object p0
.end method

.method public setMatch(ILcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8320
    if-nez p2, :cond_0

    .line 8321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8323
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8324
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8356
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8357
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getHasHiddenMatches()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8359
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHasHiddenMatchesSecondary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8360
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getHasHiddenMatchesSecondary()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8362
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getMatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 8363
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 8365
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_2
    return-void
.end method
