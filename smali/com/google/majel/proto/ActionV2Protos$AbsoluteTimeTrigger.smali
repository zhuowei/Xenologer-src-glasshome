.class public final Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbsoluteTimeTrigger"
.end annotation


# static fields
.field public static final SYMBOLIC_TIME_AFTERNOON:I = 0x1

.field public static final SYMBOLIC_TIME_EVENING:I = 0x2

.field public static final SYMBOLIC_TIME_FIELD_NUMBER:I = 0x2

.field public static final SYMBOLIC_TIME_MORNING:I = 0x0

.field public static final SYMBOLIC_TIME_NIGHT:I = 0x3

.field public static final SYMBOLIC_TIME_TIME_UNSPECIFIED:I = 0x4

.field public static final SYMBOLIC_TIME_WEEKEND:I = 0x5

.field public static final TIME_MS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSymbolicTime:Z

.field private hasTimeMs:Z

.field private symbolicTime_:I

.field private timeMs_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6829
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 6859
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 6895
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    .line 6829
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6955
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6949
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->clearTimeMs()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 6875
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->clearSymbolicTime()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 6876
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    .line 6877
    return-object p0
.end method

.method public clearSymbolicTime()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6868
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasSymbolicTime:Z

    .line 6869
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 6870
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 2

    .prologue
    .line 6851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasTimeMs:Z

    .line 6852
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 6853
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6898
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    if-gez v0, :cond_0

    .line 6900
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->getSerializedSize()I

    .line 6902
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 6907
    const/4 v0, 0x0

    .line 6908
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasTimeMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6909
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->getTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6912
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasSymbolicTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6913
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->getSymbolicTime()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6916
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    .line 6917
    return v0
.end method

.method public getSymbolicTime()I
    .locals 1

    .prologue
    .line 6861
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    return v0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 6843
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    return-wide v0
.end method

.method public hasSymbolicTime()Z
    .locals 1

    .prologue
    .line 6860
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasSymbolicTime:Z

    return v0
.end method

.method public hasTimeMs()Z
    .locals 1

    .prologue
    .line 6844
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasTimeMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6881
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6926
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6930
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6931
    :sswitch_0
    return-object p0

    .line 6936
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->setTimeMs(J)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    goto :goto_0

    .line 6940
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->setSymbolicTime(I)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    goto :goto_0

    .line 6926
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 6826
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v0

    return-object v0
.end method

.method public setSymbolicTime(I)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 6863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasSymbolicTime:Z

    .line 6864
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 6865
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 6846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasTimeMs:Z

    .line 6847
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 6848
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6888
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->getTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 6890
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->hasSymbolicTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6891
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->getSymbolicTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6893
    :cond_1
    return-void
.end method
