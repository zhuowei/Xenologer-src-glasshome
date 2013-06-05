.class public Lcom/google/android/ears/s3/audio/AudioListeners;
.super Ljava/lang/Object;
.source "AudioListeners.java"

# interfaces
.implements Lcom/google/android/ears/s3/audio/AudioListener;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioListeners"


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/ears/s3/audio/AudioListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "AudioListeners"

    invoke-static {v0}, Lcom/google/android/ears/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/ears/s3/audio/AudioListeners;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ears/s3/audio/AudioListeners;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addAudioEventListener(Lcom/google/android/ears/s3/audio/AudioListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/ears/s3/audio/AudioListeners;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 30
    sget-boolean v2, Lcom/google/android/ears/s3/audio/AudioListeners;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "AudioListeners"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/google/android/ears/s3/audio/AudioListeners;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/ears/s3/audio/AudioListener;

    .line 32
    .local v1, listener:Lcom/google/android/ears/s3/audio/AudioListener;
    invoke-interface {v1}, Lcom/google/android/ears/s3/audio/AudioListener;->onStart()V

    goto :goto_0

    .line 34
    .end local v1           #listener:Lcom/google/android/ears/s3/audio/AudioListener;
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 38
    sget-boolean v2, Lcom/google/android/ears/s3/audio/AudioListeners;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "AudioListeners"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/google/android/ears/s3/audio/AudioListeners;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/ears/s3/audio/AudioListener;

    .line 40
    .local v1, listener:Lcom/google/android/ears/s3/audio/AudioListener;
    invoke-interface {v1}, Lcom/google/android/ears/s3/audio/AudioListener;->onStop()V

    goto :goto_0

    .line 42
    .end local v1           #listener:Lcom/google/android/ears/s3/audio/AudioListener;
    :cond_1
    return-void
.end method

.method public postAudioLevel(I)V
    .locals 3
    .parameter "audioLevel"

    .prologue
    .line 46
    if-ltz p1, :cond_0

    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    iget-object v2, p0, Lcom/google/android/ears/s3/audio/AudioListeners;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/ears/s3/audio/AudioListener;

    .line 48
    .local v1, listener:Lcom/google/android/ears/s3/audio/AudioListener;
    invoke-interface {v1, p1}, Lcom/google/android/ears/s3/audio/AudioListener;->postAudioLevel(I)V

    goto :goto_1

    .line 46
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/ears/s3/audio/AudioListener;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 50
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
