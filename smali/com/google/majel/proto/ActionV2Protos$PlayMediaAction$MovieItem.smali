.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MovieItem"
.end annotation


# static fields
.field public static final GENRE_FIELD_NUMBER:I = 0x3

.field public static final MOVIE_APP_URL_FIELD_NUMBER:I = 0x6

.field public static final PLAY_TIME_MINUTES_FIELD_NUMBER:I = 0x2

.field public static final RELEASE_DATE_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private genre_:Ljava/lang/String;

.field private hasGenre:Z

.field private hasMovieAppUrl:Z

.field private hasPlayTimeMinutes:Z

.field private hasReleaseDate:Z

.field private hasTitle:Z

.field private movieAppUrl_:Ljava/lang/String;

.field private playTimeMinutes_:I

.field private releaseDate_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4679
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 4701
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 4718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 4735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 4755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 4803
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    .line 4679
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 4770
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 4771
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clearPlayTimeMinutes()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 4772
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 4773
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clearReleaseDate()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 4774
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clearMovieAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 4775
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    .line 4776
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 4727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasGenre:Z

    .line 4728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 4729
    return-object p0
.end method

.method public clearMovieAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 4764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasMovieAppUrl:Z

    .line 4765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 4766
    return-object p0
.end method

.method public clearPlayTimeMinutes()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4710
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasPlayTimeMinutes:Z

    .line 4711
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 4712
    return-object p0
.end method

.method public clearReleaseDate()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 4747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasReleaseDate:Z

    .line 4748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 4749
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 4693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasTitle:Z

    .line 4694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 4695
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4806
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 4808
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getSerializedSize()I

    .line 4810
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4756
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTimeMinutes()I
    .locals 1

    .prologue
    .line 4702
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    return v0
.end method

.method public getReleaseDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4815
    const/4 v0, 0x0

    .line 4816
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4817
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4820
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasPlayTimeMinutes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4821
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getPlayTimeMinutes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4824
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasGenre()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4825
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4828
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasReleaseDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4829
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getReleaseDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4832
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasMovieAppUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4833
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getMovieAppUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4836
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    .line 4837
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 4720
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasGenre:Z

    return v0
.end method

.method public hasMovieAppUrl()Z
    .locals 1

    .prologue
    .line 4757
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasMovieAppUrl:Z

    return v0
.end method

.method public hasPlayTimeMinutes()Z
    .locals 1

    .prologue
    .line 4703
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasPlayTimeMinutes:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 4736
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasReleaseDate:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 4686
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4780
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4846
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4850
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4851
    :sswitch_0
    return-object p0

    .line 4856
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    goto :goto_0

    .line 4860
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->setPlayTimeMinutes(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    goto :goto_0

    .line 4864
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    goto :goto_0

    .line 4868
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    .line 4869
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4870
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->setReleaseDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    goto :goto_0

    .line 4874
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->setMovieAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    goto :goto_0

    .line 4846
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
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
    .line 4676
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4889
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4883
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    return-object v0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasGenre:Z

    .line 4723
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 4724
    return-object p0
.end method

.method public setMovieAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasMovieAppUrl:Z

    .line 4760
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 4761
    return-object p0
.end method

.method public setPlayTimeMinutes(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasPlayTimeMinutes:Z

    .line 4706
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 4707
    return-object p0
.end method

.method public setReleaseDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4739
    if-nez p1, :cond_0

    .line 4740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4742
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasReleaseDate:Z

    .line 4743
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 4744
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasTitle:Z

    .line 4689
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 4690
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
    .line 4786
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4787
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4789
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasPlayTimeMinutes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4790
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getPlayTimeMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4792
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasGenre()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4793
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4795
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4796
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getReleaseDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4798
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->hasMovieAppUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4799
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->getMovieAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4801
    :cond_4
    return-void
.end method
