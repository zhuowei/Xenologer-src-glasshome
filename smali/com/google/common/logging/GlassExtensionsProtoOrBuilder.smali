.class public interface abstract Lcom/google/common/logging/GlassExtensionsProtoOrBuilder;
.super Ljava/lang/Object;
.source "GlassExtensionsProtoOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;
.end method

.method public abstract getUserEventCount()I
.end method

.method public abstract getUserEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserEventOrBuilder(I)Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
.end method

.method public abstract getUserEventOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHardwareVersion()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSoftwareVersion()Z
.end method
