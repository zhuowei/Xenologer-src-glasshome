.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeamData"
.end annotation


# static fields
.field public static final DEPRECATED_LOGO_URL_FIELD_NUMBER:I = 0x8

.field public static final IN_PROGRESS_MATCH_FIELD_NUMBER:I = 0x7

.field public static final LAST_MATCH_FIELD_NUMBER:I = 0x5

.field public static final LOGO_FIELD_NUMBER:I = 0x9

.field public static final MATCH_LIST_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NEXT_MATCH_FIELD_NUMBER:I = 0x6

.field public static final PLAYOFFS_STANDINGS_FIELD_NUMBER:I = 0x3

.field public static final REGULAR_SEASON_STANDINGS_FIELD_NUMBER:I = 0x2

.field public static final SHORT_NAME_FIELD_NUMBER:I = 0xa


# instance fields
.field private cachedSize:I

.field private dEPRECATEDLogoUrl_:Ljava/lang/String;

.field private hasDEPRECATEDLogoUrl:Z

.field private hasInProgressMatch:Z

.field private hasLastMatch:Z

.field private hasLogo:Z

.field private hasMatchList:Z

.field private hasName:Z

.field private hasNextMatch:Z

.field private hasPlayoffsStandings:Z

.field private hasRegularSeasonStandings:Z

.field private hasShortName:Z

.field private inProgressMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field private lastMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field private logo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field private name_:Ljava/lang/String;

.field private nextMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field private playoffsStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

.field private regularSeasonStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

.field private shortName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8857
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8862
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 8879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 8896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 8913
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 8933
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8953
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8973
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8993
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9013
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9033
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    .line 8857
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9242
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9236
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 9051
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9052
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9053
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearDEPRECATEDLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9054
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9055
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearRegularSeasonStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9056
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearPlayoffsStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9057
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9058
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9059
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9060
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clearInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9061
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    .line 9062
    return-object p0
.end method

.method public clearDEPRECATEDLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasDEPRECATEDLogoUrl:Z

    .line 8906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 8907
    return-object p0
.end method

.method public clearInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 9045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch:Z

    .line 9046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9047
    return-object p0
.end method

.method public clearLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 9005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch:Z

    .line 9006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9007
    return-object p0
.end method

.method public clearLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLogo:Z

    .line 8926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 8927
    return-object p0
.end method

.method public clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasMatchList:Z

    .line 8986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8987
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasName:Z

    .line 8872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 8873
    return-object p0
.end method

.method public clearNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 9025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch:Z

    .line 9026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9027
    return-object p0
.end method

.method public clearPlayoffsStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasPlayoffsStandings:Z

    .line 8966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8967
    return-object p0
.end method

.method public clearRegularSeasonStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasRegularSeasonStandings:Z

    .line 8946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8947
    return-object p0
.end method

.method public clearShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 8888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasShortName:Z

    .line 8889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 8890
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9107
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    if-gez v0, :cond_0

    .line 9109
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getSerializedSize()I

    .line 9111
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8897
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 9035
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method

.method public getLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8995
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method

.method public getLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 8915
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method

.method public getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 8975
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8863
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 9015
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method

.method public getPlayoffsStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 8955
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    return-object v0
.end method

.method public getRegularSeasonStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8935
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9116
    const/4 v0, 0x0

    .line 9117
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9118
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9121
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasRegularSeasonStandings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9122
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getRegularSeasonStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9125
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasPlayoffsStandings()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9126
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getPlayoffsStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9129
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasMatchList()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9130
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9133
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9134
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9137
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9138
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9141
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9142
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9145
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasDEPRECATEDLogoUrl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9146
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getDEPRECATEDLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9149
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLogo()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9150
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9153
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasShortName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9154
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9157
    :cond_9
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    .line 9158
    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8880
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDEPRECATEDLogoUrl()Z
    .locals 1

    .prologue
    .line 8898
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasDEPRECATEDLogoUrl:Z

    return v0
.end method

.method public hasInProgressMatch()Z
    .locals 1

    .prologue
    .line 9034
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch:Z

    return v0
.end method

.method public hasLastMatch()Z
    .locals 1

    .prologue
    .line 8994
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch:Z

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 8914
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLogo:Z

    return v0
.end method

.method public hasMatchList()Z
    .locals 1

    .prologue
    .line 8974
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasMatchList:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 8864
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasName:Z

    return v0
.end method

.method public hasNextMatch()Z
    .locals 1

    .prologue
    .line 9014
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch:Z

    return v0
.end method

.method public hasPlayoffsStandings()Z
    .locals 1

    .prologue
    .line 8954
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasPlayoffsStandings:Z

    return v0
.end method

.method public hasRegularSeasonStandings()Z
    .locals 1

    .prologue
    .line 8934
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasRegularSeasonStandings:Z

    return v0
.end method

.method public hasShortName()Z
    .locals 1

    .prologue
    .line 8881
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasShortName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9066
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9167
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9171
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9172
    :sswitch_0
    return-object p0

    .line 9177
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9181
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    .line 9182
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9183
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setRegularSeasonStandings(Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9187
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    .line 9188
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9189
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setPlayoffsStandings(Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9193
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    .line 9194
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9195
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9199
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    .line 9200
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9201
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setLastMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9205
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    .line 9206
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9207
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setNextMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9211
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    .line 9212
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9213
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setInProgressMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9217
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setDEPRECATEDLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9221
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    .line 9222
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9223
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9227
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->setShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    goto :goto_0

    .line 9167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 8854
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v0

    return-object v0
.end method

.method public setDEPRECATEDLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasDEPRECATEDLogoUrl:Z

    .line 8901
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 8902
    return-object p0
.end method

.method public setInProgressMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9037
    if-nez p1, :cond_0

    .line 9038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9040
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch:Z

    .line 9041
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9042
    return-object p0
.end method

.method public setLastMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8997
    if-nez p1, :cond_0

    .line 8998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9000
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch:Z

    .line 9001
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9002
    return-object p0
.end method

.method public setLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8917
    if-nez p1, :cond_0

    .line 8918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8920
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLogo:Z

    .line 8921
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 8922
    return-object p0
.end method

.method public setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8977
    if-nez p1, :cond_0

    .line 8978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8980
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasMatchList:Z

    .line 8981
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 8982
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasName:Z

    .line 8867
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 8868
    return-object p0
.end method

.method public setNextMatch(Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9017
    if-nez p1, :cond_0

    .line 9018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9020
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch:Z

    .line 9021
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch_:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9022
    return-object p0
.end method

.method public setPlayoffsStandings(Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8957
    if-nez p1, :cond_0

    .line 8958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8960
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasPlayoffsStandings:Z

    .line 8961
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 8962
    return-object p0
.end method

.method public setRegularSeasonStandings(Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8937
    if-nez p1, :cond_0

    .line 8938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8940
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasRegularSeasonStandings:Z

    .line 8941
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings_:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8942
    return-object p0
.end method

.method public setShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 8883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasShortName:Z

    .line 8884
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 8885
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
    .line 9072
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9073
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9075
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasRegularSeasonStandings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9076
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getRegularSeasonStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9078
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasPlayoffsStandings()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9079
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getPlayoffsStandings()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9081
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasMatchList()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9082
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9084
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9085
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9087
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9088
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9090
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9091
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9093
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasDEPRECATEDLogoUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9094
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getDEPRECATEDLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9096
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLogo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9097
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9099
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasShortName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9100
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9102
    :cond_9
    return-void
.end method
