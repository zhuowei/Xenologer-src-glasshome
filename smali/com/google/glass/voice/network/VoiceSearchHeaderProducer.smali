.class public Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;
.super Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;
.source "VoiceSearchHeaderProducer.java"


# static fields
.field private static final GLASS_S3_APPLICATION_ID:Ljava/lang/String; = "glass"


# instance fields
.field private final majelClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Majel$MajelClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pinholeParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end field

.field private final requestIdSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private final s3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private final s3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/String;

.field private final speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private final timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "s3AudioInfo"
    .parameter "s3RecognizerInfo"
    .parameter
    .parameter "service"
    .parameter "speechLibLogger"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Majel$MajelClientInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/logger/SpeechLibLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, pinholeParamsFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    .local p2, majelClientInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/speech/s3/Majel$MajelClientInfo;>;"
    .local p3, mobileUserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/MobileUser$MobileUserInfo;>;"
    .local p4, s3ClientInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    .local p5, s3UserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3UserInfo;>;"
    .local p8, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 54
    iput-object p2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->majelClientInfoFuture:Ljava/util/concurrent/Future;

    .line 55
    iput-object p3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 56
    iput-object p4, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 57
    iput-object p5, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 58
    iput-object p6, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 59
    iput-object p7, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 60
    iput-object p8, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->requestIdSupplier:Lcom/google/common/base/Supplier;

    .line 61
    iput-object p9, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->service:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 63
    new-instance v0, Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    .line 64
    return-void
.end method


# virtual methods
.method public produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 70
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 72
    .local v0, request:Lcom/google/speech/s3/S3$S3Request;
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setPinholeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeParams;)Lcom/google/speech/s3/S3$S3Request;

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->majelClientInfoFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->majelClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setMajelClientInfoExtension(Lcom/google/speech/speech/s3/Majel$MajelClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 83
    .local v1, s3ClientInfo:Lcom/google/speech/s3/S3$S3ClientInfo;
    const-string v2, "glass"

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 85
    new-instance v3, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v3}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->requestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 86
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 87
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setMobileUserInfoExtension(Lcom/google/speech/s3/MobileUser$MobileUserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 88
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 89
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setS3RecognizerInfoExtension(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 94
    return-object v0
.end method
