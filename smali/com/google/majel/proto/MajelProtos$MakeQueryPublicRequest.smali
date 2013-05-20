.class public final Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeQueryPublicRequest"
.end annotation


# static fields
.field public static final AUTH_INFO_FIELD_NUMBER:I = 0x2

.field public static final QUERY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

.field private cachedSize:I

.field private hasAuthInfo:Z

.field private hasQueryId:Z

.field private queryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 524
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    .line 463
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->clearQueryId()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    .line 504
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->clearAuthInfo()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    .line 506
    return-object p0
.end method

.method public clearAuthInfo()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasAuthInfo:Z

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 499
    return-object p0
.end method

.method public clearQueryId()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasQueryId:Z

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 479
    return-object p0
.end method

.method public getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->getSerializedSize()I

    .line 531
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    return v0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasQueryId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->getQueryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasAuthInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    .line 546
    return v0
.end method

.method public hasAuthInfo()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasAuthInfo:Z

    return v0
.end method

.method public hasQueryId()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasQueryId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 555
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 559
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    :sswitch_0
    return-object p0

    .line 565
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    goto :goto_0

    .line 569
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    .line 570
    .local v1, value:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 571
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->setAuthInfo(Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    goto :goto_0

    .line 555
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
    .line 460
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAuthInfo(Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 492
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasAuthInfo:Z

    .line 493
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 494
    return-object p0
.end method

.method public setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasQueryId:Z

    .line 473
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 474
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
    .line 516
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasQueryId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->getQueryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->hasAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 522
    :cond_1
    return-void
.end method
