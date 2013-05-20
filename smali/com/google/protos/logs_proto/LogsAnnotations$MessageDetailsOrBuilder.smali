.class public interface abstract Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetailsOrBuilder;
.super Ljava/lang/Object;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageDetailsOrBuilder"
.end annotation


# virtual methods
.method public abstract getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
.end method

.method public abstract getMayAppearInCount()I
.end method

.method public abstract getMayAppearInList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMayAppearInOrBuilder(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;
.end method

.method public abstract getMayAppearInOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;",
            ">;"
        }
    .end annotation
.end method
