.class public final Lcom/google/majel/proto/MajelProtos$MajelRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelRequest"
.end annotation


# static fields
.field public static final AUTH_INFO_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_INFO_FIELD_NUMBER:I = 0x3

.field public static final CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final LAT_LNG_FIELD_NUMBER:I = 0x4

.field public static final QUERY_FIELD_NUMBER:I = 0x1


# instance fields
.field private authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

.field private cachedSize:I

.field private clientInfo_:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

.field private context_:Lcom/google/majel/proto/ContextProtos$Context;

.field private hasAuthInfo:Z

.field private hasClientInfo:Z

.field private hasContext:Z

.field private hasLatLng:Z

.field private hasQuery:Z

.field private latLng_:Lcom/google/majel/proto/LatLngProtos$LatLng;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 52
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo_:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 72
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 92
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clearQuery()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 111
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clearAuthInfo()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 112
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clearClientInfo()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 113
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clearLatLng()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 114
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clearContext()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    .line 116
    return-object p0
.end method

.method public clearAuthInfo()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasAuthInfo:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 46
    return-object p0
.end method

.method public clearClientInfo()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasClientInfo:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo_:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 66
    return-object p0
.end method

.method public clearContext()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasContext:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 106
    return-object p0
.end method

.method public clearLatLng()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasLatLng:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 86
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasQuery:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getSerializedSize()I

    .line 150
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    return v0
.end method

.method public getClientInfo()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo_:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    return-object v0
.end method

.method public getContext()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    return-object v0
.end method

.method public getLatLng()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasAuthInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasClientInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getClientInfo()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasLatLng()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getLatLng()Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getContext()Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    .line 177
    return v0
.end method

.method public hasAuthInfo()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasAuthInfo:Z

    return v0
.end method

.method public hasClientInfo()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasClientInfo:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasContext:Z

    return v0
.end method

.method public hasLatLng()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasLatLng:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasQuery:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 186
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :sswitch_0
    return-object p0

    .line 196
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->setQuery(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    goto :goto_0

    .line 200
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    .line 201
    .local v1, value:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->setAuthInfo(Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    goto :goto_0

    .line 206
    .end local v1           #value:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    .line 207
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->setClientInfo(Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    goto :goto_0

    .line 212
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    .line 213
    .local v1, value:Lcom/google/majel/proto/LatLngProtos$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->setLatLng(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    goto :goto_0

    .line 218
    .end local v1           #value:Lcom/google/majel/proto/LatLngProtos$LatLng;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v1}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    .line 219
    .local v1, value:Lcom/google/majel/proto/ContextProtos$Context;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->setContext(Lcom/google/majel/proto/ContextProtos$Context;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAuthInfo(Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasAuthInfo:Z

    .line 40
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo_:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 41
    return-object p0
.end method

.method public setClientInfo(Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasClientInfo:Z

    .line 60
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo_:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 61
    return-object p0
.end method

.method public setContext(Lcom/google/majel/proto/ContextProtos$Context;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasContext:Z

    .line 100
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 101
    return-object p0
.end method

.method public setLatLng(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasLatLng:Z

    .line 80
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 81
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasQuery:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 21
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
    .line 126
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getAuthInfo()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasClientInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getClientInfo()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getLatLng()Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->getContext()Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 141
    :cond_4
    return-void
.end method
