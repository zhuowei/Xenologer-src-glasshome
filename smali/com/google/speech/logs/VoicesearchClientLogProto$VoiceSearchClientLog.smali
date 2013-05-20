.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearchClientLog"
.end annotation


# static fields
.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x6

.field public static final APPLICATION_VERSION_FIELD_NUMBER:I = 0x8

.field public static final APPLICATION_VERSION_NAME_FIELD_NUMBER:I = 0x10

.field public static final BUNDLED_CLIENT_EVENTS_FIELD_NUMBER:I = 0xa

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x5

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0xf

.field public static final IME_LANG_COUNT_FIELD_NUMBER:I = 0xc

.field public static final INSTALL_ID_FIELD_NUMBER:I = 0x2

.field public static final INTENT_TYPE_FIELD_NUMBER:I = 0x11

.field public static final INTENT_TYPE_INTENT_ASSIST:I = 0x1

.field public static final INTENT_TYPE_INTENT_GLOBAL_SEARCH:I = 0x2

.field public static final INTENT_TYPE_INTENT_MAIN:I = 0x0

.field public static final INTENT_TYPE_INTENT_NDEF_DISCOVERED:I = 0x6

.field public static final INTENT_TYPE_INTENT_SEARCH_LONG_PRESS:I = 0x3

.field public static final INTENT_TYPE_INTENT_SEND:I = 0x4

.field public static final INTENT_TYPE_INTENT_WEB_SEARCH:I = 0x5

.field public static final LOCALE_FIELD_NUMBER:I = 0x9

.field public static final PACKAGE_ID_FIELD_NUMBER:I = 0xb

.field public static final PAIRED_BLUETOOTH_FIELD_NUMBER:I = 0xe

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x3

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_TIME_MSEC_FIELD_NUMBER:I = 0x1

.field public static final TRIGGER_APPLICATION_ID_FIELD_NUMBER:I = 0x7

.field public static final VOICESEARCH_LANG_COUNT_FIELD_NUMBER:I = 0xd


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersionName_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private bundledClientEvents_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private deviceModel_:Ljava/lang/String;

.field private experimentId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasApplicationId:Z

.field private hasApplicationVersion:Z

.field private hasApplicationVersionName:Z

.field private hasDeviceModel:Z

.field private hasImeLangCount:Z

.field private hasInstallId:Z

.field private hasIntentType:Z

.field private hasLocale:Z

.field private hasPackageId:Z

.field private hasPairedBluetooth:Z

.field private hasPlatformId:Z

.field private hasPlatformVersion:Z

.field private hasRequestTimeMsec:Z

.field private hasTriggerApplicationId:Z

.field private hasVoicesearchLangCount:Z

.field private imeLangCount_:I

.field private installId_:Ljava/lang/String;

.field private intentType_:I

.field private locale_:Ljava/lang/String;

.field private packageId_:Ljava/lang/String;

.field private pairedBluetooth_:Z

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private requestTimeMsec_:J

.field private triggerApplicationId_:Ljava/lang/String;

.field private voicesearchLangCount_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->intentType_:I

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 285
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 302
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 319
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 368
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 67
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    return-object v0
.end method


# virtual methods
.method public addBundledClientEvents(Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return-object p0
.end method

.method public addExperimentId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearRequestTimeMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 401
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearInstallId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 402
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPackageId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 403
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPlatformId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 404
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPlatformVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 405
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearDeviceModel()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 406
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 407
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearTriggerApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 408
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearIntentType()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 409
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 410
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationVersionName()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 411
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearLocale()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 412
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearImeLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 413
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearVoicesearchLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 414
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPairedBluetooth()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 415
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearBundledClientEvents()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 416
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearExperimentId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 418
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public clearApplicationVersionName()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public clearBundledClientEvents()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 363
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public clearExperimentId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 396
    return-object p0
.end method

.method public clearImeLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    .line 295
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 296
    return-object p0
.end method

.method public clearInstallId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public clearIntentType()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasIntentType:Z

    .line 227
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->intentType_:I

    .line 228
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public clearPackageId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public clearPairedBluetooth()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    .line 329
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 330
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public clearRequestTimeMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 92
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public clearVoicesearchLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    .line 312
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 313
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundledClientEvents(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    return-object v0
.end method

.method public getBundledClientEventsCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundledClientEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getSerializedSize()I

    .line 488
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    return-object v0
.end method

.method public getImeLangCount()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentType()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->intentType_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPairedBluetooth()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeMsec()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getRequestTimeMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 499
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getInstallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 507
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 510
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 511
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 514
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 515
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 518
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 519
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 522
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 523
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 526
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 527
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 530
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getBundledClientEventsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 531
    .local v1, element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 534
    .end local v1           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 535
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPackageId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 538
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 539
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getImeLangCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 542
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 543
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getVoicesearchLangCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 546
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 547
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPairedBluetooth()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 551
    :cond_d
    const/4 v0, 0x0

    .line 552
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 556
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 557
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 559
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 560
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 563
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasIntentType()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 564
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getIntentType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 567
    :cond_10
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 568
    return v3
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicesearchLangCount()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    return v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    return v0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    return v0
.end method

.method public hasApplicationVersionName()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    return v0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    return v0
.end method

.method public hasImeLangCount()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    return v0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    return v0
.end method

.method public hasIntentType()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasIntentType:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    return v0
.end method

.method public hasPackageId()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    return v0
.end method

.method public hasPairedBluetooth()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    return v0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    return v0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    return v0
.end method

.method public hasRequestTimeMsec()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    return v0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    return v0
.end method

.method public hasVoicesearchLangCount()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 422
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
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 577
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    :sswitch_0
    return-object p0

    .line 587
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setRequestTimeMsec(J)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 591
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 595
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 599
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 603
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 607
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 611
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 615
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 619
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 623
    :sswitch_a
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    .line 624
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->addBundledClientEvents(Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 629
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 633
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setImeLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 637
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setVoicesearchLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 641
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPairedBluetooth(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 645
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->addExperimentId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 649
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersionName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 653
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setIntentType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
    .end sparse-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    .line 188
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    .line 239
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setApplicationVersionName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    .line 256
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setBundledClientEvents(ILcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 345
    if-nez p2, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    .line 171
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setExperimentId(ILjava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 378
    if-nez p2, :cond_0

    .line 379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-object p0
.end method

.method public setImeLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    .line 290
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 291
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    .line 103
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setIntentType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasIntentType:Z

    .line 222
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->intentType_:I

    .line 223
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    .line 273
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    .line 120
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setPairedBluetooth(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    .line 324
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 325
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    .line 137
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    .line 154
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setRequestTimeMsec(J)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    .line 86
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 87
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    .line 205
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setVoicesearchLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    .line 307
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 308
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
    .line 428
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getRequestTimeMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 437
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 444
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 447
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 449
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 450
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 452
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 453
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 455
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getBundledClientEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 456
    .local v0, element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 458
    .end local v0           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 459
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 461
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 462
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getImeLangCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 464
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 465
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getVoicesearchLangCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 467
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 468
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPairedBluetooth()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 470
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 474
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 476
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasIntentType()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 477
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getIntentType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 479
    :cond_10
    return-void
.end method
