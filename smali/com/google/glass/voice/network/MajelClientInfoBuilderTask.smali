.class public Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "MajelClientInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/speech/s3/Majel$MajelClientInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final GLASS_MAJEL_CLIENT_ID:I = 0xf


# instance fields
.field private final deviceParams:Lcom/google/android/speech/params/DeviceParams;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/params/DeviceParams;)V
    .locals 1
    .parameter "deviceParams"

    .prologue
    .line 25
    const-string v0, "MajelClientInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;->deviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 27
    return-void
.end method

.method private static getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected build()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 4

    .prologue
    .line 33
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->addCapabilities(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    new-instance v2, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v2}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setPreviewParams(Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    new-instance v2, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v2}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setScreenParams(Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    new-instance v2, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v2}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setBrowserParams(Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;->deviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v2}, Lcom/google/android/speech/params/DeviceParams;->getDeviceCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    .line 61
    .local v0, clientInfo:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;->build()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method
