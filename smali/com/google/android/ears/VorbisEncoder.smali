.class public Lcom/google/android/ears/VorbisEncoder;
.super Ljava/lang/Object;
.source "VorbisEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "vorbisencoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()[B
.end method

.method public static native encodeData([BI)[B
.end method

.method public static native init(IIF)[B
.end method
