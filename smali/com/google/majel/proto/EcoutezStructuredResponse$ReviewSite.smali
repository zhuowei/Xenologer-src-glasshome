.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewSite"
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final REVIEW_COUNT_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasReviewCount:Z

.field private hasUrl:Z

.field private name_:Ljava/lang/String;

.field private reviewCount_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3514
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3553
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3593
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    .line 3514
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3661
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3655
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3568
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 3569
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 3570
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->clearReviewCount()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 3571
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    .line 3572
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasName:Z

    .line 3529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3530
    return-object p0
.end method

.method public clearReviewCount()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3562
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasReviewCount:Z

    .line 3563
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3564
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasUrl:Z

    .line 3546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3547
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3596
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    if-gez v0, :cond_0

    .line 3598
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getSerializedSize()I

    .line 3600
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 3554
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3605
    const/4 v0, 0x0

    .line 3606
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3607
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3610
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3611
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3614
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasReviewCount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3615
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getReviewCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3618
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    .line 3619
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3521
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasName:Z

    return v0
.end method

.method public hasReviewCount()Z
    .locals 1

    .prologue
    .line 3555
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasReviewCount:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 3538
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3576
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3627
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3628
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3632
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3633
    :sswitch_0
    return-object p0

    .line 3638
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    goto :goto_0

    .line 3642
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    goto :goto_0

    .line 3646
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->setReviewCount(I)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    goto :goto_0

    .line 3628
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 3511
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "value"

    .prologue
    .line 3523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasName:Z

    .line 3524
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3525
    return-object p0
.end method

.method public setReviewCount(I)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "value"

    .prologue
    .line 3557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasReviewCount:Z

    .line 3558
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3559
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "value"

    .prologue
    .line 3540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasUrl:Z

    .line 3541
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3542
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
    .line 3582
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3583
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3585
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3586
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3588
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->hasReviewCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3589
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->getReviewCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3591
    :cond_2
    return-void
.end method
