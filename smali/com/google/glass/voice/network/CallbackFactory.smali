.class public Lcom/google/glass/voice/network/CallbackFactory;
.super Ljava/lang/Object;
.source "CallbackFactory.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3CallbackFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;,
        Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;
    }
.end annotation


# instance fields
.field private final endpointerEventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, endpointerEventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/voice/network/CallbackFactory;->endpointerEventPreprocessors:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/android/speech/embedded/Greco3Callback;
    .locals 3
    .parameter
    .parameter "listener"
    .parameter "mode"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            ")",
            "Lcom/google/android/speech/embedded/Greco3Callback;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, wrapped:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    new-instance v0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;

    new-instance v1, Lcom/google/glass/voice/network/EndpointerEventProcessor;

    iget-object v2, p0, Lcom/google/glass/voice/network/CallbackFactory;->endpointerEventPreprocessors:Ljava/util/List;

    invoke-direct {v1, p2, p4, v2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;-><init>(Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Ljava/util/List;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;-><init>(Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/glass/voice/network/EndpointerEventProcessor;)V

    return-object v0
.end method
