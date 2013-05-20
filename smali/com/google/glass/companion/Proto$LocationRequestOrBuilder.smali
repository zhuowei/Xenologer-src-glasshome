.class public interface abstract Lcom/google/glass/companion/Proto$LocationRequestOrBuilder;
.super Ljava/lang/Object;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getMinDistance()F
.end method

.method public abstract getMinTime()J
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getProviderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSendLastKnownLocation()Z
.end method

.method public abstract getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
.end method

.method public abstract hasMinDistance()Z
.end method

.method public abstract hasMinTime()Z
.end method

.method public abstract hasProvider()Z
.end method

.method public abstract hasSendLastKnownLocation()Z
.end method

.method public abstract hasType()Z
.end method
