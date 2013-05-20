.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicItem"
.end annotation


# static fields
.field public static final ALBUM_FIELD_NUMBER:I = 0x2

.field public static final ARTIST_FIELD_NUMBER:I = 0x1

.field public static final GENRE_FIELD_NUMBER:I = 0x4

.field public static final IS_EXPLICIT_FIELD_NUMBER:I = 0x5

.field public static final SONG_FIELD_NUMBER:I = 0x3


# instance fields
.field private album_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private cachedSize:I

.field private genre_:Ljava/lang/String;

.field private hasAlbum:Z

.field private hasArtist:Z

.field private hasGenre:Z

.field private hasIsExplicit:Z

.field private hasSong:Z

.field private isExplicit_:Z

.field private song_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4466
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 4488
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 4505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 4522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 4539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 4587
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    .line 4466
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 4554
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clearArtist()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 4555
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clearAlbum()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 4556
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clearSong()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 4557
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 4558
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clearIsExplicit()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 4559
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    .line 4560
    return-object p0
.end method

.method public clearAlbum()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 4497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasAlbum:Z

    .line 4498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 4499
    return-object p0
.end method

.method public clearArtist()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 4480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasArtist:Z

    .line 4481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 4482
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 4531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasGenre:Z

    .line 4532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 4533
    return-object p0
.end method

.method public clearIsExplicit()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4548
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasIsExplicit:Z

    .line 4549
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 4550
    return-object p0
.end method

.method public clearSong()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 4514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasSong:Z

    .line 4515
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 4516
    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4472
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4590
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 4592
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getSerializedSize()I

    .line 4594
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExplicit()Z
    .locals 1

    .prologue
    .line 4540
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4599
    const/4 v0, 0x0

    .line 4600
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasArtist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4601
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4604
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4605
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4608
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasSong()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4609
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4612
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasGenre()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4613
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4616
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasIsExplicit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4617
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getIsExplicit()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4620
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    .line 4621
    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 4490
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasAlbum:Z

    return v0
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 4473
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasArtist:Z

    return v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 4524
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasGenre:Z

    return v0
.end method

.method public hasIsExplicit()Z
    .locals 1

    .prologue
    .line 4541
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasIsExplicit:Z

    return v0
.end method

.method public hasSong()Z
    .locals 1

    .prologue
    .line 4507
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasSong:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4564
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4630
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4634
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4635
    :sswitch_0
    return-object p0

    .line 4640
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->setArtist(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    goto :goto_0

    .line 4644
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->setAlbum(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    goto :goto_0

    .line 4648
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->setSong(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    goto :goto_0

    .line 4652
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    goto :goto_0

    .line 4656
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->setIsExplicit(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    goto :goto_0

    .line 4630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 4463
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4671
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4665
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasAlbum:Z

    .line 4493
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 4494
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasArtist:Z

    .line 4476
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 4477
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasGenre:Z

    .line 4527
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 4528
    return-object p0
.end method

.method public setIsExplicit(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasIsExplicit:Z

    .line 4544
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 4545
    return-object p0
.end method

.method public setSong(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasSong:Z

    .line 4510
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 4511
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
    .line 4570
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4571
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4573
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4574
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4576
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasSong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4577
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4579
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasGenre()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4580
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4582
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->hasIsExplicit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4583
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->getIsExplicit()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4585
    :cond_4
    return-void
.end method
