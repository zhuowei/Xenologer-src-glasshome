.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnippetResult"
.end annotation


# static fields
.field public static final DOMAIN_FIELD_NUMBER:I = 0x2

.field public static final SNIPPET_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private domain_:Ljava/lang/String;

.field private hasDomain:Z

.field private hasSnippet:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private snippet_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10628
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10633
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 10650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 10667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 10684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 10728
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    .line 10628
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10804
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10798
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 10699
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10700
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->clearDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10701
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10702
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->clearSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10703
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    .line 10704
    return-object p0
.end method

.method public clearDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 10659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasDomain:Z

    .line 10660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 10661
    return-object p0
.end method

.method public clearSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 10693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasSnippet:Z

    .line 10694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 10695
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 10676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasTitle:Z

    .line 10677
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 10678
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 10642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasUrl:Z

    .line 10643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 10644
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10731
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 10733
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getSerializedSize()I

    .line 10735
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10651
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10740
    const/4 v0, 0x0

    .line 10741
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10742
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10745
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10746
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10749
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10750
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10753
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasSnippet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10754
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10757
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    .line 10758
    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10685
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10668
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10634
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomain()Z
    .locals 1

    .prologue
    .line 10652
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasDomain:Z

    return v0
.end method

.method public hasSnippet()Z
    .locals 1

    .prologue
    .line 10686
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasSnippet:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 10669
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 10635
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10708
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10766
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10767
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10771
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10772
    :sswitch_0
    return-object p0

    .line 10777
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    goto :goto_0

    .line 10781
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->setDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    goto :goto_0

    .line 10785
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    goto :goto_0

    .line 10789
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->setSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    goto :goto_0

    .line 10767
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 10625
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasDomain:Z

    .line 10655
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 10656
    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasSnippet:Z

    .line 10689
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 10690
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasTitle:Z

    .line 10672
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 10673
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasUrl:Z

    .line 10638
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 10639
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
    .line 10714
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10715
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10717
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10718
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10720
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10721
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10723
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->hasSnippet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10724
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10726
    :cond_3
    return-void
.end method
