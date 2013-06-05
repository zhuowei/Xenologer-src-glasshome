.class public interface abstract Lcom/google/android/ears/s3/listeners/SoundSearchListener;
.super Ljava/lang/Object;
.source "SoundSearchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;
    }
.end annotation


# virtual methods
.method public abstract onDone()V
.end method

.method public abstract onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V
.end method

.method public abstract onSoundSearchResult(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$EarsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
