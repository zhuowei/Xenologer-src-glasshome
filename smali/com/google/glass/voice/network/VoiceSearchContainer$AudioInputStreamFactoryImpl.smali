.class public Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioInputStreamFactoryImpl"
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    .line 441
    return-void
.end method
