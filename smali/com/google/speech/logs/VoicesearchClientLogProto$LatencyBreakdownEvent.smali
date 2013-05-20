.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyBreakdownEvent"
.end annotation


# static fields
.field public static final EVENT_FIELD_NUMBER:I = 0x1

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_END:I = 0x13

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_START:I = 0x12

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESTART_START:I = 0x1b

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_END:I = 0x18

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_START:I = 0x17

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_END:I = 0x16

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_START:I = 0x15

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_END:I = 0x11

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_START:I = 0x10

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_SEARCH_PLATE_ON_DRAW_START:I = 0x14

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_STARTUP_UI_THREAD_IDLE:I = 0x20

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_END:I = 0x1c

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_END:I = 0x1a

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_START:I = 0x19

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_CARD:I = 0x27

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW:I = 0xe

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE:I = 0xf

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLBACK:I = 0xd

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLED_JS:I = 0xc

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_COMMIT:I = 0x4

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_JESR:I = 0xa

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_NONJESR:I = 0xb

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_LOGIN_COMPLETE:I = 0x5

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_JESR:I = 0x6

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_NONJESR:I = 0x7

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_JESR:I = 0x8

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_NONJESR:I = 0x9

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_CANCEL:I = 0x1f

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_END:I = 0x1e

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_START:I = 0x1d

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB:I = 0x1

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST:I = 0x23

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CORPORA_LOAD:I = 0x3

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_HANDLE_ACTION:I = 0x26

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END:I = 0x22

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START:I = 0x21

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE:I = 0x2

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECOGNIZE:I = 0x0

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SELECT_ACTION:I = 0x25

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SWITCH_QUERY:I = 0x24

.field public static final OFFSET_MSEC_FIELD_NUMBER:I = 0x2

.field public static final SUBLATENCY_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private event_:I

.field private hasEvent:Z

.field private hasOffsetMsec:Z

.field private hasSublatency:Z

.field private offsetMsec_:I

.field private sublatency_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1798
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1845
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1862
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1879
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1919
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 1798
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1987
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1981
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    .line 1894
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearEvent()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1895
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearOffsetMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1896
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearSublatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1897
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 1898
    return-object p0
.end method

.method public clearEvent()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1854
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    .line 1855
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1856
    return-object p0
.end method

.method public clearOffsetMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1871
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    .line 1872
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1873
    return-object p0
.end method

.method public clearSublatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1888
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    .line 1889
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1890
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1922
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSerializedSize()I

    .line 1926
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 1846
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    return v0
.end method

.method public getOffsetMsec()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1931
    const/4 v0, 0x0

    .line 1932
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1933
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getEvent()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1937
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getOffsetMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1940
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1941
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSublatency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1944
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 1945
    return v0
.end method

.method public getSublatency()I
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .prologue
    .line 1847
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    return v0
.end method

.method public hasOffsetMsec()Z
    .locals 1

    .prologue
    .line 1864
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    return v0
.end method

.method public hasSublatency()Z
    .locals 1

    .prologue
    .line 1881
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1902
    const/4 v0, 0x1

    return v0
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
    .line 1795
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1954
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1958
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1959
    :sswitch_0
    return-object p0

    .line 1964
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setEvent(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 1968
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setOffsetMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 1972
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setSublatency(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 1954
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setEvent(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    .line 1850
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1851
    return-object p0
.end method

.method public setOffsetMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    .line 1867
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1868
    return-object p0
.end method

.method public setSublatency(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    .line 1884
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1885
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
    .line 1908
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getEvent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1911
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1912
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getOffsetMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1914
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1915
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSublatency()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1917
    :cond_2
    return-void
.end method
