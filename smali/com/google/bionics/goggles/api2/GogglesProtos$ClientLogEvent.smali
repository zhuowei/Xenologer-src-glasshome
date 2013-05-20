.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLogEvent"
.end annotation


# static fields
.field public static final CLIENT_EVENT_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final IMPRESSION_FIELD_NUMBER:I = 0x4

.field public static final USER_EVENT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

.field private clientTimeMs_:J

.field private hasClientEvent:Z

.field private hasClientTimeMs:Z

.field private hasImpression:Z

.field private hasUserEvent:Z

.field private impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

.field private userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2935
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2940
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2957
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2977
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2997
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3044
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 2935
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3126
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3120
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 3015
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearClientTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3016
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3017
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3018
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3019
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 3020
    return-object p0
.end method

.method public clearClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    .line 2990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2991
    return-object p0
.end method

.method public clearClientTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 2

    .prologue
    .line 2949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    .line 2950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2951
    return-object p0
.end method

.method public clearImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 3009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    .line 3010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3011
    return-object p0
.end method

.method public clearUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    .line 2970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2971
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3047
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 3049
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getSerializedSize()I

    .line 3051
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    return v0
.end method

.method public getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    return-object v0
.end method

.method public getClientTimeMs()J
    .locals 2

    .prologue
    .line 2941
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    return-wide v0
.end method

.method public getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3056
    const/4 v0, 0x0

    .line 3057
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3058
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3061
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3062
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3065
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3066
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3069
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3070
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3073
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 3074
    return v0
.end method

.method public getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    return-object v0
.end method

.method public hasClientEvent()Z
    .locals 1

    .prologue
    .line 2978
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    return v0
.end method

.method public hasClientTimeMs()Z
    .locals 1

    .prologue
    .line 2942
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    return v0
.end method

.method public hasImpression()Z
    .locals 1

    .prologue
    .line 2998
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    return v0
.end method

.method public hasUserEvent()Z
    .locals 1

    .prologue
    .line 2958
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3024
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3083
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3087
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3088
    :sswitch_0
    return-object p0

    .line 3093
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setClientTimeMs(J)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3097
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    .line 3098
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3099
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setUserEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3103
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    .line 3104
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3105
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setClientEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3109
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    :sswitch_4
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    .line 3110
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3111
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setImpression(Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3083
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2932
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public setClientEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2981
    if-nez p1, :cond_0

    .line 2982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2984
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    .line 2985
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2986
    return-object p0
.end method

.method public setClientTimeMs(J)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    .line 2945
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2946
    return-object p0
.end method

.method public setImpression(Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 3001
    if-nez p1, :cond_0

    .line 3002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3004
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    .line 3005
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3006
    return-object p0
.end method

.method public setUserEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2961
    if-nez p1, :cond_0

    .line 2962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2964
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    .line 2965
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2966
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
    .line 3030
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3033
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3034
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3036
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3037
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3039
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3040
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3042
    :cond_3
    return-void
.end method
