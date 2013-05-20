.class public interface abstract Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;
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
    name = "LocationMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getLocation()Lcom/google/glass/companion/Proto$Location;
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getProviderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReceiver()Ljava/lang/String;
.end method

.method public abstract getReceiverBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasProvider()Z
.end method

.method public abstract hasReceiver()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasType()Z
.end method
