.class public final Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetAlarmAction"
.end annotation


# static fields
.field public static final ALARM_LABEL_FIELD_NUMBER:I = 0x1

.field public static final ALARM_LABEL_SPAN_FIELD_NUMBER:I = 0x2

.field public static final DATE_FIELD_NUMBER:I = 0x4

.field public static final SECONDS_FROM_NOW_FIELD_NUMBER:I = 0x5

.field public static final TIME_FIELD_NUMBER:I = 0x3


# instance fields
.field private alarmLabelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private alarmLabel_:Ljava/lang/String;

.field private cachedSize:I

.field private date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private hasAlarmLabel:Z

.field private hasAlarmLabelSpan:Z

.field private hasDate:Z

.field private hasSecondsFromNow:Z

.field private hasTime:Z

.field private secondsFromNow_:I

.field private time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6601
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 6623
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6643
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 6663
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 6683
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 6731
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    .line 6601
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6821
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6815
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 6698
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clearAlarmLabel()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 6699
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clearAlarmLabelSpan()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 6700
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clearTime()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 6701
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clearDate()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 6702
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clearSecondsFromNow()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 6703
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    .line 6704
    return-object p0
.end method

.method public clearAlarmLabel()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 6615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabel:Z

    .line 6616
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 6617
    return-object p0
.end method

.method public clearAlarmLabelSpan()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 6635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabelSpan:Z

    .line 6636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6637
    return-object p0
.end method

.method public clearDate()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 6675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasDate:Z

    .line 6676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 6677
    return-object p0
.end method

.method public clearSecondsFromNow()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6692
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasSecondsFromNow:Z

    .line 6693
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 6694
    return-object p0
.end method

.method public clearTime()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 6655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasTime:Z

    .line 6656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 6657
    return-object p0
.end method

.method public getAlarmLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6607
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 6625
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6734
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 6736
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getSerializedSize()I

    .line 6738
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    return v0
.end method

.method public getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 6665
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0
.end method

.method public getSecondsFromNow()I
    .locals 1

    .prologue
    .line 6684
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6743
    const/4 v0, 0x0

    .line 6744
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6745
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getAlarmLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6748
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabelSpan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6749
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getAlarmLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6752
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6753
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6756
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6757
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6760
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasSecondsFromNow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6761
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getSecondsFromNow()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6764
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    .line 6765
    return v0
.end method

.method public getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 6645
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    return-object v0
.end method

.method public hasAlarmLabel()Z
    .locals 1

    .prologue
    .line 6608
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabel:Z

    return v0
.end method

.method public hasAlarmLabelSpan()Z
    .locals 1

    .prologue
    .line 6624
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabelSpan:Z

    return v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 6664
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasDate:Z

    return v0
.end method

.method public hasSecondsFromNow()Z
    .locals 1

    .prologue
    .line 6685
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasSecondsFromNow:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 6644
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6708
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6773
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6774
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6778
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6779
    :sswitch_0
    return-object p0

    .line 6784
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->setAlarmLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    goto :goto_0

    .line 6788
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 6789
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6790
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->setAlarmLabelSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    goto :goto_0

    .line 6794
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    .line 6795
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6796
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    goto :goto_0

    .line 6800
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    .line 6801
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6802
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->setDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    goto :goto_0

    .line 6806
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->setSecondsFromNow(I)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    goto :goto_0

    .line 6774
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
    .line 6598
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabel:Z

    .line 6611
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 6612
    return-object p0
.end method

.method public setAlarmLabelSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6627
    if-nez p1, :cond_0

    .line 6628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6630
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabelSpan:Z

    .line 6631
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6632
    return-object p0
.end method

.method public setDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6667
    if-nez p1, :cond_0

    .line 6668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6670
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasDate:Z

    .line 6671
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 6672
    return-object p0
.end method

.method public setSecondsFromNow(I)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasSecondsFromNow:Z

    .line 6688
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 6689
    return-object p0
.end method

.method public setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6647
    if-nez p1, :cond_0

    .line 6648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6650
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasTime:Z

    .line 6651
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 6652
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
    .line 6714
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6715
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getAlarmLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6717
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasAlarmLabelSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6718
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getAlarmLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6720
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6721
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6723
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6724
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6726
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->hasSecondsFromNow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6727
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->getSecondsFromNow()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6729
    :cond_4
    return-void
.end method
