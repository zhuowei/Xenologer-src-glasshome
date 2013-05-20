.class public interface abstract Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
.super Ljava/lang/Object;
.source "MenuItemOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;
.end method

.method public abstract getBroadcastAction()Ljava/lang/String;
.end method

.method public abstract getBroadcastActionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRemoveWhenSelected()Z
.end method

.method public abstract getValue(I)Lcom/google/googlex/glass/common/proto/MenuValue;
.end method

.method public abstract getValueCount()I
.end method

.method public abstract getValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValueOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;
.end method

.method public abstract getValueOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasBroadcastAction()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasRemoveWhenSelected()Z
.end method
