.class public interface abstract Lcom/google/googlex/glass/common/proto/GlasswareRegistryOrBuilder;
.super Ljava/lang/Object;
.source "GlasswareRegistryOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getRegistryEntries(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
.end method

.method public abstract getRegistryEntriesCount()I
.end method

.method public abstract getRegistryEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegistryEntriesOrBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;
.end method

.method public abstract getRegistryEntriesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;",
            ">;"
        }
    .end annotation
.end method
