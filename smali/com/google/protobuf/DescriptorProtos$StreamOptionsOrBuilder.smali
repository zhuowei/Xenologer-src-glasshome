.class public interface abstract Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamOptionsOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getClientInitialTokens()J
.end method

.method public abstract getClientLogging()I
.end method

.method public abstract getDeprecated()Z
.end method

.method public abstract getSecurityLabel()Ljava/lang/String;
.end method

.method public abstract getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
.end method

.method public abstract getServerInitialTokens()J
.end method

.method public abstract getServerLogging()I
.end method

.method public abstract getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
.end method

.method public abstract getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
.end method

.method public abstract getUninterpretedOptionCount()I
.end method

.method public abstract getUninterpretedOptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
.end method

.method public abstract getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasClientInitialTokens()Z
.end method

.method public abstract hasClientLogging()Z
.end method

.method public abstract hasDeprecated()Z
.end method

.method public abstract hasSecurityLabel()Z
.end method

.method public abstract hasSecurityLevel()Z
.end method

.method public abstract hasServerInitialTokens()Z
.end method

.method public abstract hasServerLogging()Z
.end method

.method public abstract hasTokenUnit()Z
.end method
