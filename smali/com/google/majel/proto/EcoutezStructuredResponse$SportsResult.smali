.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportsResult"
.end annotation


# static fields
.field public static final ASSOCIATION_DATA_FIELD_NUMBER:I = 0x5

.field public static final SPORT_TYPE_BASEBALL:I = 0x1

.field public static final SPORT_TYPE_BASKETBALL:I = 0x5

.field public static final SPORT_TYPE_CRICKET:I = 0x7

.field public static final SPORT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final SPORT_TYPE_FOOTBALL:I = 0x3

.field public static final SPORT_TYPE_GOLF:I = 0xa

.field public static final SPORT_TYPE_MOTOR_RACING:I = 0x8

.field public static final SPORT_TYPE_OLYMPIC_SPORT:I = 0x9

.field public static final SPORT_TYPE_RUGBY:I = 0x6

.field public static final SPORT_TYPE_SOCCER:I = 0x4

.field public static final SPORT_TYPE_TENNIS:I = 0x2

.field public static final SPORT_TYPE_UNKNOWN:I = 0x0

.field public static final TEAM_DATA_FIELD_NUMBER:I = 0x3

.field public static final TEAM_VS_TEAM_DATA_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private associationData_:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

.field private cachedSize:I

.field private hasAssociationData:Z

.field private hasSportType:Z

.field private hasTeamData:Z

.field private hasTeamVsTeamData:Z

.field private hasTitle:Z

.field private sportType_:I

.field private teamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

.field private teamVsTeamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9725
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9743
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 9760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 9777
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9797
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9817
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData_:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 9868
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    .line 9725
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9958
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9952
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 9835
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clearSportType()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 9836
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 9837
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clearTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 9838
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clearTeamVsTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 9839
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clearAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 9840
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    .line 9841
    return-object p0
.end method

.method public clearAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 9829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData:Z

    .line 9830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData_:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 9831
    return-object p0
.end method

.method public clearSportType()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9752
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasSportType:Z

    .line 9753
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 9754
    return-object p0
.end method

.method public clearTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 9789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData:Z

    .line 9790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9791
    return-object p0
.end method

.method public clearTeamVsTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 9809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamVsTeamData:Z

    .line 9810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9811
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 9769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTitle:Z

    .line 9770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 9771
    return-object p0
.end method

.method public getAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 9819
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData_:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9871
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 9873
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getSerializedSize()I

    .line 9875
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9880
    const/4 v0, 0x0

    .line 9881
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasSportType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9882
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getSportType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9885
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9886
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9889
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9890
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9893
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamVsTeamData()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9894
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamVsTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9897
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9898
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9901
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    .line 9902
    return v0
.end method

.method public getSportType()I
    .locals 1

    .prologue
    .line 9744
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    return v0
.end method

.method public getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 9779
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    return-object v0
.end method

.method public getTeamVsTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 9799
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9761
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssociationData()Z
    .locals 1

    .prologue
    .line 9818
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData:Z

    return v0
.end method

.method public hasSportType()Z
    .locals 1

    .prologue
    .line 9745
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasSportType:Z

    return v0
.end method

.method public hasTeamData()Z
    .locals 1

    .prologue
    .line 9778
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData:Z

    return v0
.end method

.method public hasTeamVsTeamData()Z
    .locals 1

    .prologue
    .line 9798
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamVsTeamData:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 9762
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9845
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9910
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9911
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9915
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9916
    :sswitch_0
    return-object p0

    .line 9921
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->setSportType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    goto :goto_0

    .line 9925
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    goto :goto_0

    .line 9929
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    .line 9930
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9931
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->setTeamData(Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    goto :goto_0

    .line 9935
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    .line 9936
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9937
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->setTeamVsTeamData(Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    goto :goto_0

    .line 9941
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    .line 9942
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9943
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->setAssociationData(Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    goto :goto_0

    .line 9911
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 9722
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v0

    return-object v0
.end method

.method public setAssociationData(Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 9821
    if-nez p1, :cond_0

    .line 9822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9824
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData:Z

    .line 9825
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData_:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 9826
    return-object p0
.end method

.method public setSportType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 9747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasSportType:Z

    .line 9748
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 9749
    return-object p0
.end method

.method public setTeamData(Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 9781
    if-nez p1, :cond_0

    .line 9782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9784
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData:Z

    .line 9785
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 9786
    return-object p0
.end method

.method public setTeamVsTeamData(Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 9801
    if-nez p1, :cond_0

    .line 9802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9804
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamVsTeamData:Z

    .line 9805
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData_:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 9806
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 9764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTitle:Z

    .line 9765
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 9766
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
    .line 9851
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasSportType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9852
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getSportType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9854
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9855
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9857
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9858
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9860
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamVsTeamData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9861
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamVsTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9863
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9864
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9866
    :cond_4
    return-void
.end method
