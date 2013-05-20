.class public final Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCalendarEventAction"
.end annotation


# static fields
.field public static final CALENDAR_EVENT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private calendarEvent_:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

.field private hasCalendarEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2937
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent_:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 2977
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    .line 2937
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3031
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3025
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->clearCalendarEvent()Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    .line 2961
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    .line 2962
    return-object p0
.end method

.method public clearCalendarEvent()Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1

    .prologue
    .line 2954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->hasCalendarEvent:Z

    .line 2955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent_:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 2956
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2980
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 2982
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->getSerializedSize()I

    .line 2984
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    return v0
.end method

.method public getCalendarEvent()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent_:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2989
    const/4 v0, 0x0

    .line 2990
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->hasCalendarEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2991
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->getCalendarEvent()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2994
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    .line 2995
    return v0
.end method

.method public hasCalendarEvent()Z
    .locals 1

    .prologue
    .line 2943
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->hasCalendarEvent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2966
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3004
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3008
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3009
    :sswitch_0
    return-object p0

    .line 3014
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    .line 3015
    .local v1, value:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3016
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->setCalendarEvent(Lcom/google/majel/proto/CalendarProtos$CalendarEvent;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    goto :goto_0

    .line 3004
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 2934
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public setCalendarEvent(Lcom/google/majel/proto/CalendarProtos$CalendarEvent;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2946
    if-nez p1, :cond_0

    .line 2947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2949
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->hasCalendarEvent:Z

    .line 2950
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent_:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 2951
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
    .line 2972
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->hasCalendarEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2973
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->getCalendarEvent()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2975
    :cond_0
    return-void
.end method
