.class public final Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelClientInfo"
.end annotation


# static fields
.field public static final BROWSER_PARAMS_FIELD_NUMBER:I = 0x6

.field public static final CAPABILITIES_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_FIELD_NUMBER:I = 0xa

.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0xb

.field public static final CONTEXT_FIELD_NUMBER:I = 0x3

.field public static final GSERVICES_COUNTRY_CODE_FIELD_NUMBER:I = 0xc

.field public static final PREVIEW_PARAMS_FIELD_NUMBER:I = 0x5

.field public static final SAFESEARCH_LEVEL_FIELD_NUMBER:I = 0x4

.field public static final SCREEN_PARAMS_FIELD_NUMBER:I = 0x9

.field public static final SYSTEM_TIME_MS_FIELD_NUMBER:I = 0x7

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x8

.field public static final USE_COMPRESSED_RESPONSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

.field private cachedSize:I

.field private capabilities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientName_:Ljava/lang/String;

.field private client_:I

.field private context_:Lcom/google/majel/proto/ContextProtos$Context;

.field private gservicesCountryCode_:Ljava/lang/String;

.field private hasBrowserParams:Z

.field private hasClient:Z

.field private hasClientName:Z

.field private hasContext:Z

.field private hasGservicesCountryCode:Z

.field private hasPreviewParams:Z

.field private hasSafesearchLevel:Z

.field private hasScreenParams:Z

.field private hasSystemTimeMs:Z

.field private hasTimeZone:Z

.field private hasUseCompressedResponse:Z

.field private previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

.field private safesearchLevel_:I

.field private screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

.field private systemTimeMs_:J

.field private timeZone_:Ljava/lang/String;

.field private useCompressedResponse_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-boolean v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    .line 59
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 79
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 99
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 119
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 190
    iput v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    return-object v0
.end method


# virtual methods
.method public addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object p0
.end method

.method public final clear()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearUseCompressedResponse()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 240
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearCapabilities()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 241
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearPreviewParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 242
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearBrowserParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 243
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearScreenParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 244
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearContext()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 245
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearSafesearchLevel()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 246
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearSystemTimeMs()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 247
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearTimeZone()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 248
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearClient()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 249
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearClientName()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 250
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearGservicesCountryCode()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 252
    return-object p0
.end method

.method public clearBrowserParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasBrowserParams:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 93
    return-object p0
.end method

.method public clearCapabilities()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    .line 53
    return-object p0
.end method

.method public clearClient()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    .line 200
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 201
    return-object p0
.end method

.method public clearClientName()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public clearContext()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasContext:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 133
    return-object p0
.end method

.method public clearGservicesCountryCode()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public clearPreviewParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasPreviewParams:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 73
    return-object p0
.end method

.method public clearSafesearchLevel()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSafesearchLevel:Z

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 150
    return-object p0
.end method

.method public clearScreenParams()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasScreenParams:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 113
    return-object p0
.end method

.method public clearSystemTimeMs()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 167
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public clearUseCompressedResponse()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    .line 25
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 26
    return-object p0
.end method

.method public getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSerializedSize()I

    .line 307
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    return v0
.end method

.method public getCapabilities(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    return-object v0
.end method

.method public getClient()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    return-object v0
.end method

.method public getGservicesCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    return-object v0
.end method

.method public getSafesearchLevel()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    return v0
.end method

.method public getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 312
    const/4 v3, 0x0

    .line 313
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getUseCompressedResponse()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 320
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 323
    .end local v1           #element:Ljava/lang/Integer;
    :cond_1
    add-int/2addr v3, v0

    .line 324
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 326
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasContext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getContext()Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSafesearchLevel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSafesearchLevel()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasPreviewParams()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 338
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasBrowserParams()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 343
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSystemTimeMs()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 346
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 347
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 350
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasScreenParams()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 351
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 354
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 355
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClient()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 358
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 359
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 362
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 363
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 366
    :cond_b
    iput v3, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 367
    return v3
.end method

.method public getSystemTimeMs()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    return v0
.end method

.method public hasBrowserParams()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasBrowserParams:Z

    return v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    return v0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasContext:Z

    return v0
.end method

.method public hasGservicesCountryCode()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    return v0
.end method

.method public hasPreviewParams()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasPreviewParams:Z

    return v0
.end method

.method public hasSafesearchLevel()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSafesearchLevel:Z

    return v0
.end method

.method public hasScreenParams()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasScreenParams:Z

    return v0
.end method

.method public hasSystemTimeMs()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    return v0
.end method

.method public hasUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 256
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 376
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    :sswitch_0
    return-object p0

    .line 386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setUseCompressedResponse(Z)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 390
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 394
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v1}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    .line 395
    .local v1, value:Lcom/google/majel/proto/ContextProtos$Context;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setContext(Lcom/google/majel/proto/ContextProtos$Context;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 400
    .end local v1           #value:Lcom/google/majel/proto/ContextProtos$Context;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setSafesearchLevel(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 404
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    .line 405
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 406
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setPreviewParams(Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 410
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    .line 411
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setBrowserParams(Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 416
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 420
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 424
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    .line 425
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setScreenParams(Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 430
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 434
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setClientName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 438
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public setBrowserParams(Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasBrowserParams:Z

    .line 87
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 88
    return-object p0
.end method

.method public setCapabilities(II)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    .line 195
    iput p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 196
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    .line 212
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setContext(Lcom/google/majel/proto/ContextProtos$Context;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasContext:Z

    .line 127
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context_:Lcom/google/majel/proto/ContextProtos$Context;

    .line 128
    return-object p0
.end method

.method public setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    .line 229
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public setPreviewParams(Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasPreviewParams:Z

    .line 67
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 68
    return-object p0
.end method

.method public setSafesearchLevel(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSafesearchLevel:Z

    .line 144
    iput p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 145
    return-object p0
.end method

.method public setScreenParams(Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasScreenParams:Z

    .line 107
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 108
    return-object p0
.end method

.method public setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    .line 161
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 162
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    .line 178
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setUseCompressedResponse(Z)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    .line 20
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 21
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
    .line 262
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getUseCompressedResponse()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 266
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 268
    .end local v0           #element:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasContext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getContext()Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSafesearchLevel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSafesearchLevel()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasPreviewParams()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasBrowserParams()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 281
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSystemTimeMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 283
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 284
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 286
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasScreenParams()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 289
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 290
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClient()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 292
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 293
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 295
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 296
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 298
    :cond_b
    return-void
.end method
