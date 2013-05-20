.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static final BASEBALL_FIELD_NUMBER:I = 0x9

.field public static final FIRST_TEAM_SCORE_FIELD_NUMBER:I = 0x5

.field public static final MAX_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final MINUTES_FIELD_NUMBER:I = 0x7

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final PERIOD_STATUS_ABOUT_TO_START:I = 0x0

.field public static final PERIOD_STATUS_ENDED:I = 0x2

.field public static final PERIOD_STATUS_IN_PROGRESS:I = 0x1

.field public static final PERIOD_TYPE_NEXT_SCORE_WINS:I = 0x3

.field public static final PERIOD_TYPE_OVERTIME:I = 0x1

.field public static final PERIOD_TYPE_REGULAR:I = 0x0

.field public static final PERIOD_TYPE_SHOOTOUTS:I = 0x2

.field public static final SECONDS_FIELD_NUMBER:I = 0x8

.field public static final SECOND_TEAM_SCORE_FIELD_NUMBER:I = 0x6

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

.field private cachedSize:I

.field private firstTeamScore_:Ljava/lang/String;

.field private hasBaseball:Z

.field private hasFirstTeamScore:Z

.field private hasMaxNumber:Z

.field private hasMinutes:Z

.field private hasNumber:Z

.field private hasSecondTeamScore:Z

.field private hasSeconds:Z

.field private hasStatus:Z

.field private hasType:Z

.field private maxNumber_:I

.field private minutes_:Ljava/lang/String;

.field private number_:I

.field private secondTeamScore_:Ljava/lang/String;

.field private seconds_:Ljava/lang/String;

.field private status_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6635
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6651
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 6668
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 6685
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 6702
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 6719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 6736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 6753
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 6770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 6787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6854
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    .line 6635
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6972
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6966
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6805
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6806
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6807
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6808
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearMaxNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6809
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearFirstTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6810
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearSecondTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6811
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearMinutes()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6812
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearSeconds()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6813
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clearBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 6814
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    .line 6815
    return-object p0
.end method

.method public clearBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasBaseball:Z

    .line 6800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6801
    return-object p0
.end method

.method public clearFirstTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasFirstTeamScore:Z

    .line 6729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 6730
    return-object p0
.end method

.method public clearMaxNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6711
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMaxNumber:Z

    .line 6712
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 6713
    return-object p0
.end method

.method public clearMinutes()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes:Z

    .line 6763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 6764
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6694
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasNumber:Z

    .line 6695
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 6696
    return-object p0
.end method

.method public clearSecondTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSecondTeamScore:Z

    .line 6746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 6747
    return-object p0
.end method

.method public clearSeconds()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 6779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds:Z

    .line 6780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 6781
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6677
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasStatus:Z

    .line 6678
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 6679
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6660
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasType:Z

    .line 6661
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 6662
    return-object p0
.end method

.method public getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 6789
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6857
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    if-gez v0, :cond_0

    .line 6859
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSerializedSize()I

    .line 6861
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    return v0
.end method

.method public getFirstTeamScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6720
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNumber()I
    .locals 1

    .prologue
    .line 6703
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    return v0
.end method

.method public getMinutes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6754
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 6686
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    return v0
.end method

.method public getSecondTeamScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6737
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6771
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6866
    const/4 v0, 0x0

    .line 6867
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6868
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6871
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6872
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6875
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6876
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6879
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMaxNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6880
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getMaxNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6883
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasFirstTeamScore()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6884
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getFirstTeamScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6887
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSecondTeamScore()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6888
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSecondTeamScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6891
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6892
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getMinutes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6895
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6896
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSeconds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6899
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasBaseball()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6900
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6903
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    .line 6904
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 6669
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6652
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    return v0
.end method

.method public hasBaseball()Z
    .locals 1

    .prologue
    .line 6788
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasBaseball:Z

    return v0
.end method

.method public hasFirstTeamScore()Z
    .locals 1

    .prologue
    .line 6721
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasFirstTeamScore:Z

    return v0
.end method

.method public hasMaxNumber()Z
    .locals 1

    .prologue
    .line 6704
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMaxNumber:Z

    return v0
.end method

.method public hasMinutes()Z
    .locals 1

    .prologue
    .line 6755
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 6687
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasNumber:Z

    return v0
.end method

.method public hasSecondTeamScore()Z
    .locals 1

    .prologue
    .line 6738
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSecondTeamScore:Z

    return v0
.end method

.method public hasSeconds()Z
    .locals 1

    .prologue
    .line 6772
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 6670
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasStatus:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6653
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6819
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6912
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6913
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6917
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6918
    :sswitch_0
    return-object p0

    .line 6923
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6927
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6931
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6935
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setMaxNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6939
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setFirstTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6943
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setSecondTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6947
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setMinutes(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6951
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setSeconds(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6955
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    .line 6956
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6957
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->setBaseball(Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto :goto_0

    .line 6913
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 6632
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    return-object v0
.end method

.method public setBaseball(Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6791
    if-nez p1, :cond_0

    .line 6792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6794
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasBaseball:Z

    .line 6795
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball_:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6796
    return-object p0
.end method

.method public setFirstTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasFirstTeamScore:Z

    .line 6724
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 6725
    return-object p0
.end method

.method public setMaxNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMaxNumber:Z

    .line 6707
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 6708
    return-object p0
.end method

.method public setMinutes(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes:Z

    .line 6758
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 6759
    return-object p0
.end method

.method public setNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasNumber:Z

    .line 6690
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 6691
    return-object p0
.end method

.method public setSecondTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSecondTeamScore:Z

    .line 6741
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 6742
    return-object p0
.end method

.method public setSeconds(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds:Z

    .line 6775
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 6776
    return-object p0
.end method

.method public setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasStatus:Z

    .line 6673
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 6674
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .parameter "value"

    .prologue
    .line 6655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasType:Z

    .line 6656
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 6657
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
    .line 6825
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6826
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6828
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6829
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6831
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6832
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6834
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMaxNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6835
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getMaxNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6837
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasFirstTeamScore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6838
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getFirstTeamScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6840
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSecondTeamScore()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6841
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSecondTeamScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6843
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6844
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getMinutes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6846
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6847
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSeconds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6849
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasBaseball()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6850
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getBaseball()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6852
    :cond_8
    return-void
.end method
