.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayoffsStandings"
.end annotation


# static fields
.field public static final FIRST_TEAM_FIELD_NUMBER:I = 0x1

.field public static final FIRST_TEAM_WINS_FIELD_NUMBER:I = 0x2

.field public static final SECOND_TEAM_FIELD_NUMBER:I = 0x3

.field public static final SECOND_TEAM_WINS_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private firstTeamWins_:I

.field private firstTeam_:Ljava/lang/String;

.field private hasFirstTeam:Z

.field private hasFirstTeamWins:Z

.field private hasSecondTeam:Z

.field private hasSecondTeamWins:Z

.field private secondTeamWins_:I

.field private secondTeam_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8673
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 8695
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 8712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 8729
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 8773
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    .line 8673
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8849
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8843
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 8744
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8745
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->clearFirstTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8746
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8747
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->clearSecondTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8748
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    .line 8749
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 8687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeam:Z

    .line 8688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 8689
    return-object p0
.end method

.method public clearFirstTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8704
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeamWins:Z

    .line 8705
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 8706
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 8721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeam:Z

    .line 8722
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 8723
    return-object p0
.end method

.method public clearSecondTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8738
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeamWins:Z

    .line 8739
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 8740
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8776
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    if-gez v0, :cond_0

    .line 8778
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getSerializedSize()I

    .line 8780
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    return v0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8679
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamWins()I
    .locals 1

    .prologue
    .line 8696
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    return v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8713
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamWins()I
    .locals 1

    .prologue
    .line 8730
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8785
    const/4 v0, 0x0

    .line 8786
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8787
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getFirstTeam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8790
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeamWins()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8791
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getFirstTeamWins()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8794
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeam()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8795
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getSecondTeam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8798
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeamWins()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8799
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getSecondTeamWins()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8802
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    .line 8803
    return v0
.end method

.method public hasFirstTeam()Z
    .locals 1

    .prologue
    .line 8680
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeam:Z

    return v0
.end method

.method public hasFirstTeamWins()Z
    .locals 1

    .prologue
    .line 8697
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeamWins:Z

    return v0
.end method

.method public hasSecondTeam()Z
    .locals 1

    .prologue
    .line 8714
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeam:Z

    return v0
.end method

.method public hasSecondTeamWins()Z
    .locals 1

    .prologue
    .line 8731
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeamWins:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8753
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8811
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8812
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8816
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8817
    :sswitch_0
    return-object p0

    .line 8822
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    goto :goto_0

    .line 8826
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->setFirstTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    goto :goto_0

    .line 8830
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    goto :goto_0

    .line 8834
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->setSecondTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    goto :goto_0

    .line 8812
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 8670
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v0

    return-object v0
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeam:Z

    .line 8683
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 8684
    return-object p0
.end method

.method public setFirstTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeamWins:Z

    .line 8700
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 8701
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeam:Z

    .line 8717
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 8718
    return-object p0
.end method

.method public setSecondTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeamWins:Z

    .line 8734
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 8735
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
    .line 8759
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8760
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getFirstTeam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8762
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasFirstTeamWins()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8763
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getFirstTeamWins()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8765
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeam()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8766
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getSecondTeam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8768
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->hasSecondTeamWins()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8769
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->getSecondTeamWins()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8771
    :cond_3
    return-void
.end method
