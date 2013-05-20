.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# static fields
.field public static final BASEBALL_FIELD_NUMBER:I = 0x12

.field public static final BOX_URL_FIELD_NUMBER:I = 0xe

.field public static final CURRENT_PERIOD_NUM_FIELD_NUMBER:I = 0x6

.field public static final DEPRECATED_FIRST_TEAM_LOGO_URL_FIELD_NUMBER:I = 0x13

.field public static final DEPRECATED_SECOND_TEAM_LOGO_URL_FIELD_NUMBER:I = 0x14

.field public static final FIRST_IS_WINNER_FIELD_NUMBER:I = 0x9

.field public static final FIRST_SCORE_FIELD_NUMBER:I = 0x8

.field public static final FIRST_TEAM_FIELD_NUMBER:I = 0x7

.field public static final FIRST_TEAM_LOGO_FIELD_NUMBER:I = 0x15

.field public static final FIRST_TEAM_SHORT_NAME_FIELD_NUMBER:I = 0x18

.field public static final FORUM_URL_FIELD_NUMBER:I = 0x1b

.field public static final IS_HIDDEN_FIELD_NUMBER:I = 0x2

.field public static final IS_HIDDEN_SECONDARY_FIELD_NUMBER:I = 0x3

.field public static final LIVE_STREAM_URL_FIELD_NUMBER:I = 0x1a

.field public static final LIVE_UPDATE_URL_FIELD_NUMBER:I = 0x19

.field public static final MATCH_STATUS_CANCELLED:I = 0x4

.field public static final MATCH_STATUS_DELAYED:I = 0x5

.field public static final MATCH_STATUS_DONE:I = 0x0

.field public static final MATCH_STATUS_IN_PROGRESS:I = 0x1

.field public static final MATCH_STATUS_NOT_STARTED:I = 0x2

.field public static final MATCH_STATUS_POSTPONED:I = 0x3

.field public static final MATCH_STATUS_SUSPENDED:I = 0x7

.field public static final MATCH_STATUS_TBD:I = 0x6

.field public static final MATCH_STATUS_WITHDRAWN:I = 0x8

.field public static final PERIOD_FIELD_NUMBER:I = 0x11

.field public static final PREVIEW_URL_FIELD_NUMBER:I = 0xf

.field public static final RECAP_URL_FIELD_NUMBER:I = 0xd

.field public static final SECOND_IS_WINNER_FIELD_NUMBER:I = 0xc

.field public static final SECOND_SCORE_FIELD_NUMBER:I = 0xb

.field public static final SECOND_TEAM_FIELD_NUMBER:I = 0xa

.field public static final SECOND_TEAM_LOGO_FIELD_NUMBER:I = 0x16

.field public static final SECOND_TEAM_SHORT_NAME_FIELD_NUMBER:I = 0x17

.field public static final START_TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final START_TIME_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TICKETS_URL_FIELD_NUMBER:I = 0x10


# instance fields
.field private baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

.field private boxUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private currentPeriodNum_:I

.field private dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

.field private dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

.field private firstIsWinner_:Z

.field private firstScore_:Ljava/lang/String;

.field private firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private firstTeamShortName_:Ljava/lang/String;

.field private firstTeam_:Ljava/lang/String;

.field private forumUrl_:Ljava/lang/String;

.field private hasBaseball:Z

.field private hasBoxUrl:Z

.field private hasCurrentPeriodNum:Z

.field private hasDEPRECATEDFirstTeamLogoUrl:Z

.field private hasDEPRECATEDSecondTeamLogoUrl:Z

.field private hasFirstIsWinner:Z

.field private hasFirstScore:Z

.field private hasFirstTeam:Z

.field private hasFirstTeamLogo:Z

.field private hasFirstTeamShortName:Z

.field private hasForumUrl:Z

.field private hasIsHidden:Z

.field private hasIsHiddenSecondary:Z

.field private hasLiveStreamUrl:Z

.field private hasLiveUpdateUrl:Z

.field private hasPreviewUrl:Z

.field private hasRecapUrl:Z

.field private hasSecondIsWinner:Z

.field private hasSecondScore:Z

.field private hasSecondTeam:Z

.field private hasSecondTeamLogo:Z

.field private hasSecondTeamShortName:Z

.field private hasStartTime:Z

.field private hasStartTimestamp:Z

.field private hasStatus:Z

.field private hasTicketsUrl:Z

.field private isHiddenSecondary_:Z

.field private isHidden_:Z

.field private liveStreamUrl_:Ljava/lang/String;

.field private liveUpdateUrl_:Ljava/lang/String;

.field private period_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Period;",
            ">;"
        }
    .end annotation
.end field

.field private previewUrl_:Ljava/lang/String;

.field private recapUrl_:Ljava/lang/String;

.field private secondIsWinner_:Z

.field private secondScore_:Ljava/lang/String;

.field private secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private secondTeamShortName_:Ljava/lang/String;

.field private secondTeam_:Ljava/lang/String;

.field private startTime_:Ljava/lang/String;

.field private startTimestamp_:J

.field private status_:I

.field private ticketsUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7377
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7393
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 7410
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 7427
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 7444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 7461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 7478
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 7495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 7512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 7529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 7546
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 7583
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 7600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 7617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 7634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 7651
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7671
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 7688
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 7705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 7722
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 7739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 7756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 7773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 7790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 7807
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 7823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    .line 7857
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7996
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    .line 7377
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8264
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8258
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method


# virtual methods
.method public addPeriod(Lcom/google/majel/proto/EcoutezStructuredResponse$Period;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7840
    if-nez p1, :cond_0

    .line 7841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7843
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    .line 7846
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7847
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7875
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7876
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearIsHidden()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7877
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearIsHiddenSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7878
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearStartTimestamp()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7879
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearStartTime()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7880
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearCurrentPeriodNum()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7881
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7882
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7883
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7884
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7885
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearFirstScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7886
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearFirstIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7887
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7888
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7889
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7890
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7891
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearSecondScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7892
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearSecondIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7893
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearRecapUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7894
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearBoxUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7895
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearLiveUpdateUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7896
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearLiveStreamUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7897
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearPreviewUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7898
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearTicketsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7899
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearForumUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7900
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearPeriod()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7901
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clearBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 7902
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    .line 7903
    return-object p0
.end method

.method public clearBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBaseball:Z

    .line 7870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7871
    return-object p0
.end method

.method public clearBoxUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBoxUrl:Z

    .line 7732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 7733
    return-object p0
.end method

.method public clearCurrentPeriodNum()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7487
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum:Z

    .line 7488
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 7489
    return-object p0
.end method

.method public clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDFirstTeamLogoUrl:Z

    .line 7539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 7540
    return-object p0
.end method

.method public clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDSecondTeamLogoUrl:Z

    .line 7644
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 7645
    return-object p0
.end method

.method public clearFirstIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7592
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstIsWinner:Z

    .line 7593
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 7594
    return-object p0
.end method

.method public clearFirstScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstScore:Z

    .line 7576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 7577
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeam:Z

    .line 7505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 7506
    return-object p0
.end method

.method public clearFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo:Z

    .line 7559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7560
    return-object p0
.end method

.method public clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamShortName:Z

    .line 7522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 7523
    return-object p0
.end method

.method public clearForumUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasForumUrl:Z

    .line 7817
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 7818
    return-object p0
.end method

.method public clearIsHidden()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7419
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHidden:Z

    .line 7420
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 7421
    return-object p0
.end method

.method public clearIsHiddenSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7436
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHiddenSecondary:Z

    .line 7437
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 7438
    return-object p0
.end method

.method public clearLiveStreamUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveStreamUrl:Z

    .line 7766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 7767
    return-object p0
.end method

.method public clearLiveUpdateUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveUpdateUrl:Z

    .line 7749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 7750
    return-object p0
.end method

.method public clearPeriod()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7850
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    .line 7851
    return-object p0
.end method

.method public clearPreviewUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasPreviewUrl:Z

    .line 7783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 7784
    return-object p0
.end method

.method public clearRecapUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasRecapUrl:Z

    .line 7715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 7716
    return-object p0
.end method

.method public clearSecondIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7697
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondIsWinner:Z

    .line 7698
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 7699
    return-object p0
.end method

.method public clearSecondScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondScore:Z

    .line 7681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 7682
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeam:Z

    .line 7610
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 7611
    return-object p0
.end method

.method public clearSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo:Z

    .line 7664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7665
    return-object p0
.end method

.method public clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamShortName:Z

    .line 7627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 7628
    return-object p0
.end method

.method public clearStartTime()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTime:Z

    .line 7471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 7472
    return-object p0
.end method

.method public clearStartTimestamp()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 7453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp:Z

    .line 7454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 7455
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7402
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStatus:Z

    .line 7403
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 7404
    return-object p0
.end method

.method public clearTicketsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 7799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasTicketsUrl:Z

    .line 7800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 7801
    return-object p0
.end method

.method public getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 7859
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    return-object v0
.end method

.method public getBoxUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7723
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7999
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    if-gez v0, :cond_0

    .line 8001
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSerializedSize()I

    .line 8003
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    return v0
.end method

.method public getCurrentPeriodNum()I
    .locals 1

    .prologue
    .line 7479
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    return v0
.end method

.method public getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7530
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7635
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstIsWinner()Z
    .locals 1

    .prologue
    .line 7584
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    return v0
.end method

.method public getFirstScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7567
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7496
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 7548
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method

.method public getFirstTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7513
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getForumUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7808
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHidden()Z
    .locals 1

    .prologue
    .line 7411
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    return v0
.end method

.method public getIsHiddenSecondary()Z
    .locals 1

    .prologue
    .line 7428
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    return v0
.end method

.method public getLiveStreamUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7757
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7740
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "index"

    .prologue
    .line 7830
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 7828
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeriodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Period;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7826
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7774
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7706
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondIsWinner()Z
    .locals 1

    .prologue
    .line 7689
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    return v0
.end method

.method public getSecondScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7672
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7601
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 7653
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method

.method public getSecondTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7618
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 8008
    const/4 v2, 0x0

    .line 8009
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8010
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 8013
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHidden()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8014
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getIsHidden()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8017
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHiddenSecondary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8018
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getIsHiddenSecondary()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8021
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8022
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStartTimestamp()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8025
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8026
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8029
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8030
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getCurrentPeriodNum()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 8033
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeam()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8034
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8037
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstScore()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8038
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstScore()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8041
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstIsWinner()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 8042
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstIsWinner()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8045
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeam()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8046
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8049
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondScore()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 8050
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondScore()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8053
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondIsWinner()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8054
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondIsWinner()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 8057
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasRecapUrl()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 8058
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getRecapUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8061
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBoxUrl()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 8062
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getBoxUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8065
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasPreviewUrl()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 8066
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8069
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasTicketsUrl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 8070
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getTicketsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8073
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 8074
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    const/16 v3, 0x11

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 8077
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBaseball()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 8078
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8081
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDFirstTeamLogoUrl()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 8082
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8085
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDSecondTeamLogoUrl()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 8086
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8089
    :cond_13
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 8090
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8093
    :cond_14
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 8094
    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8097
    :cond_15
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamShortName()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 8098
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamShortName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8101
    :cond_16
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamShortName()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8102
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamShortName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8105
    :cond_17
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveUpdateUrl()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8106
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getLiveUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8109
    :cond_18
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveStreamUrl()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 8110
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getLiveStreamUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8113
    :cond_19
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasForumUrl()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 8114
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getForumUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8117
    :cond_1a
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    .line 8118
    return v2
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7462
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .prologue
    .line 7445
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 7394
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    return v0
.end method

.method public getTicketsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7791
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBaseball()Z
    .locals 1

    .prologue
    .line 7858
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBaseball:Z

    return v0
.end method

.method public hasBoxUrl()Z
    .locals 1

    .prologue
    .line 7724
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBoxUrl:Z

    return v0
.end method

.method public hasCurrentPeriodNum()Z
    .locals 1

    .prologue
    .line 7480
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum:Z

    return v0
.end method

.method public hasDEPRECATEDFirstTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 7531
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDFirstTeamLogoUrl:Z

    return v0
.end method

.method public hasDEPRECATEDSecondTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 7636
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDSecondTeamLogoUrl:Z

    return v0
.end method

.method public hasFirstIsWinner()Z
    .locals 1

    .prologue
    .line 7585
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstIsWinner:Z

    return v0
.end method

.method public hasFirstScore()Z
    .locals 1

    .prologue
    .line 7568
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstScore:Z

    return v0
.end method

.method public hasFirstTeam()Z
    .locals 1

    .prologue
    .line 7497
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeam:Z

    return v0
.end method

.method public hasFirstTeamLogo()Z
    .locals 1

    .prologue
    .line 7547
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo:Z

    return v0
.end method

.method public hasFirstTeamShortName()Z
    .locals 1

    .prologue
    .line 7514
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamShortName:Z

    return v0
.end method

.method public hasForumUrl()Z
    .locals 1

    .prologue
    .line 7809
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasForumUrl:Z

    return v0
.end method

.method public hasIsHidden()Z
    .locals 1

    .prologue
    .line 7412
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHidden:Z

    return v0
.end method

.method public hasIsHiddenSecondary()Z
    .locals 1

    .prologue
    .line 7429
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHiddenSecondary:Z

    return v0
.end method

.method public hasLiveStreamUrl()Z
    .locals 1

    .prologue
    .line 7758
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveStreamUrl:Z

    return v0
.end method

.method public hasLiveUpdateUrl()Z
    .locals 1

    .prologue
    .line 7741
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveUpdateUrl:Z

    return v0
.end method

.method public hasPreviewUrl()Z
    .locals 1

    .prologue
    .line 7775
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasPreviewUrl:Z

    return v0
.end method

.method public hasRecapUrl()Z
    .locals 1

    .prologue
    .line 7707
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasRecapUrl:Z

    return v0
.end method

.method public hasSecondIsWinner()Z
    .locals 1

    .prologue
    .line 7690
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondIsWinner:Z

    return v0
.end method

.method public hasSecondScore()Z
    .locals 1

    .prologue
    .line 7673
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondScore:Z

    return v0
.end method

.method public hasSecondTeam()Z
    .locals 1

    .prologue
    .line 7602
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeam:Z

    return v0
.end method

.method public hasSecondTeamLogo()Z
    .locals 1

    .prologue
    .line 7652
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo:Z

    return v0
.end method

.method public hasSecondTeamShortName()Z
    .locals 1

    .prologue
    .line 7619
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamShortName:Z

    return v0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 7463
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTime:Z

    return v0
.end method

.method public hasStartTimestamp()Z
    .locals 1

    .prologue
    .line 7446
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 7395
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStatus:Z

    return v0
.end method

.method public hasTicketsUrl()Z
    .locals 1

    .prologue
    .line 7792
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasTicketsUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7907
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8127
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8131
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8132
    :sswitch_0
    return-object p0

    .line 8137
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setIsHidden(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8145
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setIsHiddenSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8149
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setStartTimestamp(J)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8153
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setStartTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8157
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setCurrentPeriodNum(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8161
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8165
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setFirstScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8169
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setFirstIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8173
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8177
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setSecondScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8181
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setSecondIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8185
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setRecapUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8189
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setBoxUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 8193
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8197
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setTicketsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8201
    :sswitch_11
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    .line 8202
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8203
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->addPeriod(Lcom/google/majel/proto/EcoutezStructuredResponse$Period;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8207
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :sswitch_12
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    .line 8208
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8209
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setBaseball(Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8213
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8217
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8221
    :sswitch_15
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    .line 8222
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8223
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setFirstTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8227
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :sswitch_16
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    .line 8228
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8229
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setSecondTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8233
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8237
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8241
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setLiveUpdateUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8245
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setLiveStreamUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8249
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->setForumUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto/16 :goto_0

    .line 8127
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
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
    .line 7374
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v0

    return-object v0
.end method

.method public setBaseball(Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7861
    if-nez p1, :cond_0

    .line 7862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7864
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBaseball:Z

    .line 7865
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7866
    return-object p0
.end method

.method public setBoxUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBoxUrl:Z

    .line 7727
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 7728
    return-object p0
.end method

.method public setCurrentPeriodNum(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum:Z

    .line 7483
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 7484
    return-object p0
.end method

.method public setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDFirstTeamLogoUrl:Z

    .line 7534
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 7535
    return-object p0
.end method

.method public setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDSecondTeamLogoUrl:Z

    .line 7639
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 7640
    return-object p0
.end method

.method public setFirstIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstIsWinner:Z

    .line 7588
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 7589
    return-object p0
.end method

.method public setFirstScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstScore:Z

    .line 7571
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 7572
    return-object p0
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeam:Z

    .line 7500
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 7501
    return-object p0
.end method

.method public setFirstTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7550
    if-nez p1, :cond_0

    .line 7551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo:Z

    .line 7554
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7555
    return-object p0
.end method

.method public setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamShortName:Z

    .line 7517
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 7518
    return-object p0
.end method

.method public setForumUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasForumUrl:Z

    .line 7812
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 7813
    return-object p0
.end method

.method public setIsHidden(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHidden:Z

    .line 7415
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 7416
    return-object p0
.end method

.method public setIsHiddenSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHiddenSecondary:Z

    .line 7432
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 7433
    return-object p0
.end method

.method public setLiveStreamUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveStreamUrl:Z

    .line 7761
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 7762
    return-object p0
.end method

.method public setLiveUpdateUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveUpdateUrl:Z

    .line 7744
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 7745
    return-object p0
.end method

.method public setPeriod(ILcom/google/majel/proto/EcoutezStructuredResponse$Period;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7833
    if-nez p2, :cond_0

    .line 7834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7836
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7837
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasPreviewUrl:Z

    .line 7778
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 7779
    return-object p0
.end method

.method public setRecapUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasRecapUrl:Z

    .line 7710
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 7711
    return-object p0
.end method

.method public setSecondIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondIsWinner:Z

    .line 7693
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 7694
    return-object p0
.end method

.method public setSecondScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondScore:Z

    .line 7676
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 7677
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeam:Z

    .line 7605
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 7606
    return-object p0
.end method

.method public setSecondTeamLogo(Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7655
    if-nez p1, :cond_0

    .line 7656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7658
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo:Z

    .line 7659
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo_:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7660
    return-object p0
.end method

.method public setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamShortName:Z

    .line 7622
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 7623
    return-object p0
.end method

.method public setStartTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTime:Z

    .line 7466
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 7467
    return-object p0
.end method

.method public setStartTimestamp(J)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp:Z

    .line 7449
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 7450
    return-object p0
.end method

.method public setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStatus:Z

    .line 7398
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 7399
    return-object p0
.end method

.method public setTicketsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .parameter "value"

    .prologue
    .line 7794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasTicketsUrl:Z

    .line 7795
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 7796
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7913
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7914
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7916
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7917
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getIsHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7919
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasIsHiddenSecondary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7920
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getIsHiddenSecondary()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7922
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7923
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStartTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 7925
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7926
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7928
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7929
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getCurrentPeriodNum()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7931
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeam()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7932
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7934
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstScore()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7935
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstScore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7937
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstIsWinner()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7938
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstIsWinner()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7940
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeam()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7941
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7943
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondScore()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7944
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondScore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7946
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondIsWinner()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7947
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondIsWinner()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7949
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasRecapUrl()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7950
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getRecapUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7952
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBoxUrl()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7953
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getBoxUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7955
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasPreviewUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 7956
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7958
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasTicketsUrl()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7959
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getTicketsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7961
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 7962
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7964
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasBaseball()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7965
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7967
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDFirstTeamLogoUrl()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 7968
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7970
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasDEPRECATEDSecondTeamLogoUrl()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7971
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7973
    :cond_13
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 7974
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7976
    :cond_14
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 7977
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7979
    :cond_15
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamShortName()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7980
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7982
    :cond_16
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamShortName()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7983
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7985
    :cond_17
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveUpdateUrl()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7986
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getLiveUpdateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7988
    :cond_18
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasLiveStreamUrl()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7989
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getLiveStreamUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7991
    :cond_19
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasForumUrl()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7992
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getForumUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7994
    :cond_1a
    return-void
.end method
