.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeamVsTeamData"
.end annotation


# static fields
.field public static final DEPRECATED_FIRST_TEAM_LOGO_URL_FIELD_NUMBER:I = 0x4

.field public static final DEPRECATED_SECOND_TEAM_LOGO_URL_FIELD_NUMBER:I = 0x5

.field public static final FIRST_TEAM_FIELD_NUMBER:I = 0x1

.field public static final FIRST_TEAM_LOGO_FIELD_NUMBER:I = 0x6

.field public static final FIRST_TEAM_SHORT_NAME_FIELD_NUMBER:I = 0x8

.field public static final MATCH_LIST_FIELD_NUMBER:I = 0x3

.field public static final SECOND_TEAM_FIELD_NUMBER:I = 0x2

.field public static final SECOND_TEAM_LOGO_FIELD_NUMBER:I = 0x7

.field public static final SECOND_TEAM_SHORT_NAME_FIELD_NUMBER:I = 0x9


# instance fields
.field private cachedSize:I

.field private dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

.field private dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

.field private firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private firstTeamShortName_:Ljava/lang/String;

.field private firstTeam_:Ljava/lang/String;

.field private hasDEPRECATEDFirstTeamLogoUrl:Z

.field private hasDEPRECATEDSecondTeamLogoUrl:Z

.field private hasFirstTeam:Z

.field private hasFirstTeamLogo:Z

.field private hasFirstTeamShortName:Z

.field private hasMatchList:Z

.field private hasSecondTeam:Z

.field private hasSecondTeamLogo:Z

.field private hasSecondTeamShortName:Z

.field private matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field private secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private secondTeamShortName_:Ljava/lang/String;

.field private secondTeam_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9381
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 9403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 9420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 9437
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 9474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 9491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 9508
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9528
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9595
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    .line 9381
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9717
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9711
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9546
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9547
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9548
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9549
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9550
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9551
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9552
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9553
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9554
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9555
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    .line 9556
    return-object p0
.end method

.method public clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDFirstTeamLogoUrl:Z

    .line 9430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 9431
    return-object p0
.end method

.method public clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDSecondTeamLogoUrl:Z

    .line 9501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 9502
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeam:Z

    .line 9396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 9397
    return-object p0
.end method

.method public clearFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamLogo:Z

    .line 9450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9451
    return-object p0
.end method

.method public clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamShortName:Z

    .line 9413
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 9414
    return-object p0
.end method

.method public clearMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasMatchList:Z

    .line 9541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9542
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeam:Z

    .line 9467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 9468
    return-object p0
.end method

.method public clearSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamLogo:Z

    .line 9521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9522
    return-object p0
.end method

.method public clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamShortName:Z

    .line 9484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 9485
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9598
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    if-gez v0, :cond_0

    .line 9600
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSerializedSize()I

    .line 9602
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9421
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9492
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9387
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 9439
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method

.method public getFirstTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9404
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 9530
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9458
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 9510
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method

.method public getSecondTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9475
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9607
    const/4 v0, 0x0

    .line 9608
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9609
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9612
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9613
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9616
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasMatchList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9617
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9620
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDFirstTeamLogoUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9621
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9624
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDSecondTeamLogoUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9625
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9628
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamLogo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9629
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9632
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamLogo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9633
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9636
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamShortName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9637
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeamShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9640
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamShortName()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9641
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeamShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9644
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    .line 9645
    return v0
.end method

.method public hasDEPRECATEDFirstTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 9422
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDFirstTeamLogoUrl:Z

    return v0
.end method

.method public hasDEPRECATEDSecondTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 9493
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDSecondTeamLogoUrl:Z

    return v0
.end method

.method public hasFirstTeam()Z
    .locals 1

    .prologue
    .line 9388
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeam:Z

    return v0
.end method

.method public hasFirstTeamLogo()Z
    .locals 1

    .prologue
    .line 9438
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamLogo:Z

    return v0
.end method

.method public hasFirstTeamShortName()Z
    .locals 1

    .prologue
    .line 9405
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamShortName:Z

    return v0
.end method

.method public hasMatchList()Z
    .locals 1

    .prologue
    .line 9529
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasMatchList:Z

    return v0
.end method

.method public hasSecondTeam()Z
    .locals 1

    .prologue
    .line 9459
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeam:Z

    return v0
.end method

.method public hasSecondTeamLogo()Z
    .locals 1

    .prologue
    .line 9509
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamLogo:Z

    return v0
.end method

.method public hasSecondTeamShortName()Z
    .locals 1

    .prologue
    .line 9476
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamShortName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9560
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9653
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9654
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9658
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9659
    :sswitch_0
    return-object p0

    .line 9664
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9668
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9672
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    .line 9673
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9674
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9678
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9682
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9686
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    .line 9687
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9688
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setFirstTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9692
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    .line 9693
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9694
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setSecondTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9698
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9702
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    goto :goto_0

    .line 9654
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
    .line 9378
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v0

    return-object v0
.end method

.method public setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDFirstTeamLogoUrl:Z

    .line 9425
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 9426
    return-object p0
.end method

.method public setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDSecondTeamLogoUrl:Z

    .line 9496
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 9497
    return-object p0
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeam:Z

    .line 9391
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 9392
    return-object p0
.end method

.method public setFirstTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9441
    if-nez p1, :cond_0

    .line 9442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9444
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamLogo:Z

    .line 9445
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9446
    return-object p0
.end method

.method public setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamShortName:Z

    .line 9408
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 9409
    return-object p0
.end method

.method public setMatchList(Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9532
    if-nez p1, :cond_0

    .line 9533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9535
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasMatchList:Z

    .line 9536
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList_:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9537
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeam:Z

    .line 9462
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 9463
    return-object p0
.end method

.method public setSecondTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9512
    if-nez p1, :cond_0

    .line 9513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9515
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamLogo:Z

    .line 9516
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9517
    return-object p0
.end method

.method public setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .parameter "value"

    .prologue
    .line 9478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamShortName:Z

    .line 9479
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 9480
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
    .line 9566
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9567
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9569
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9570
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9572
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasMatchList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9573
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9575
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDFirstTeamLogoUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9576
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9578
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasDEPRECATEDSecondTeamLogoUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9579
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9581
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamLogo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9582
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9584
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamLogo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9585
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9587
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasFirstTeamShortName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9588
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getFirstTeamShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9590
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->hasSecondTeamShortName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9591
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->getSecondTeamShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9593
    :cond_8
    return-void
.end method
