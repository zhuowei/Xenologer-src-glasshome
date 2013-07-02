.class public interface abstract Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;
.super Ljava/lang/Object;
.source "ApkGlasswareMetadataOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVersion(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
.end method

.method public abstract getVersionCount()I
.end method

.method public abstract getVersionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionOrBuilder(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;
.end method

.method public abstract getVersionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPackageName()Z
.end method
