.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseballMatch"
.end annotation


# static fields
.field public static final FIRST_TEAM_ERRORS_FIELD_NUMBER:I = 0x3

.field public static final FIRST_TEAM_HITS_FIELD_NUMBER:I = 0x2

.field public static final FIRST_TEAM_RUNS_FIELD_NUMBER:I = 0x1

.field public static final SECOND_TEAM_ERRORS_FIELD_NUMBER:I = 0x6

.field public static final SECOND_TEAM_HITS_FIELD_NUMBER:I = 0x4

.field public static final SECOND_TEAM_RUNS_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private firstTeamErrors_:I

.field private firstTeamHits_:I

.field private firstTeamRuns_:I

.field private hasFirstTeamErrors:Z

.field private hasFirstTeamHits:Z

.field private hasFirstTeamRuns:Z

.field private hasSecondTeamErrors:Z

.field private hasSecondTeamHits:Z

.field private hasSecondTeamRuns:Z

.field private secondTeamErrors_:I

.field private secondTeamHits_:I

.field private secondTeamRuns_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6980
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6985
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 7002
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 7019
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 7036
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 7053
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 7070
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 7122
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    .line 6980
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7214
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7208
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 7085
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearFirstTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7086
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearFirstTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7087
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearFirstTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7088
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearSecondTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7089
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearSecondTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7090
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clearSecondTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 7091
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    .line 7092
    return-object p0
.end method

.method public clearFirstTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7028
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamErrors:Z

    .line 7029
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 7030
    return-object p0
.end method

.method public clearFirstTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7011
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamHits:Z

    .line 7012
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 7013
    return-object p0
.end method

.method public clearFirstTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6994
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamRuns:Z

    .line 6995
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 6996
    return-object p0
.end method

.method public clearSecondTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7079
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamErrors:Z

    .line 7080
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 7081
    return-object p0
.end method

.method public clearSecondTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7045
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamHits:Z

    .line 7046
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 7047
    return-object p0
.end method

.method public clearSecondTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7062
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamRuns:Z

    .line 7063
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 7064
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7125
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    if-gez v0, :cond_0

    .line 7127
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSerializedSize()I

    .line 7129
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    return v0
.end method

.method public getFirstTeamErrors()I
    .locals 1

    .prologue
    .line 7020
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    return v0
.end method

.method public getFirstTeamHits()I
    .locals 1

    .prologue
    .line 7003
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    return v0
.end method

.method public getFirstTeamRuns()I
    .locals 1

    .prologue
    .line 6986
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    return v0
.end method

.method public getSecondTeamErrors()I
    .locals 1

    .prologue
    .line 7071
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    return v0
.end method

.method public getSecondTeamHits()I
    .locals 1

    .prologue
    .line 7037
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    return v0
.end method

.method public getSecondTeamRuns()I
    .locals 1

    .prologue
    .line 7054
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7134
    const/4 v0, 0x0

    .line 7135
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamRuns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7136
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamRuns()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7139
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamHits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7140
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamHits()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7143
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamErrors()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7144
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamErrors()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7147
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamHits()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7148
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamHits()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7151
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamRuns()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7152
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamRuns()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7155
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamErrors()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7156
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamErrors()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7159
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    .line 7160
    return v0
.end method

.method public hasFirstTeamErrors()Z
    .locals 1

    .prologue
    .line 7021
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamErrors:Z

    return v0
.end method

.method public hasFirstTeamHits()Z
    .locals 1

    .prologue
    .line 7004
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamHits:Z

    return v0
.end method

.method public hasFirstTeamRuns()Z
    .locals 1

    .prologue
    .line 6987
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamRuns:Z

    return v0
.end method

.method public hasSecondTeamErrors()Z
    .locals 1

    .prologue
    .line 7072
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamErrors:Z

    return v0
.end method

.method public hasSecondTeamHits()Z
    .locals 1

    .prologue
    .line 7038
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamHits:Z

    return v0
.end method

.method public hasSecondTeamRuns()Z
    .locals 1

    .prologue
    .line 7055
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamRuns:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7096
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7169
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7173
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7174
    :sswitch_0
    return-object p0

    .line 7179
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setFirstTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7183
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setFirstTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7187
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setFirstTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7191
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setSecondTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7195
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setSecondTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7199
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->setSecondTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    goto :goto_0

    .line 7169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 6977
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v0

    return-object v0
.end method

.method public setFirstTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 7023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamErrors:Z

    .line 7024
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 7025
    return-object p0
.end method

.method public setFirstTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 7006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamHits:Z

    .line 7007
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 7008
    return-object p0
.end method

.method public setFirstTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 6989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamRuns:Z

    .line 6990
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 6991
    return-object p0
.end method

.method public setSecondTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 7074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamErrors:Z

    .line 7075
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 7076
    return-object p0
.end method

.method public setSecondTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 7040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamHits:Z

    .line 7041
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 7042
    return-object p0
.end method

.method public setSecondTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 7057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamRuns:Z

    .line 7058
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 7059
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
    .line 7102
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamRuns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7103
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamRuns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7105
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamHits()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7106
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamHits()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7108
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasFirstTeamErrors()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7109
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getFirstTeamErrors()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7111
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamHits()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7112
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamHits()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7114
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamRuns()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7115
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamRuns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7117
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->hasSecondTeamErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7118
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->getSecondTeamErrors()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7120
    :cond_5
    return-void
.end method
