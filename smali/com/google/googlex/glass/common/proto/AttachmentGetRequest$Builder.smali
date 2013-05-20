.class public final Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AttachmentGetRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentGetRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private attachmentId_:Ljava/lang/Object;

.field private bitField0_:I

.field private screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1022
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 831
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 832
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1022
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 837
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 838
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 845
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 819
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getScreenDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 840
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getScreenDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 843
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 2

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    .line 876
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 879
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 5

    .prologue
    .line 883
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V

    .line 884
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 885
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 886
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 887
    or-int/lit8 v2, v2, 0x1

    .line 889
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1302(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 891
    or-int/lit8 v2, v2, 0x2

    .line 893
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 894
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1402(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 898
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1502(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;I)I

    .line 899
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onBuilt()V

    .line 900
    return-object v1

    .line 896
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1402(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 851
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 853
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 857
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 858
    return-object p0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1004
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1006
    return-object p0
.end method

.method public clearScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1095
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1096
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1100
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1101
    return-object p0

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2

    .prologue
    .line 862
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 961
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 967
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAttachmentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 976
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 977
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 980
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 983
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1

    .prologue
    .line 871
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 867
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1038
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    goto :goto_0
.end method

.method public getScreenDimensionsBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1108
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1109
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getScreenDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    return-object v0
.end method

.method public getScreenDimensionsOrBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;

    .line 1118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    goto :goto_0
.end method

.method public hasAttachmentId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 954
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenDimensions()Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 824
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 913
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 923
    :goto_0
    return-object p0

    .line 914
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->hasAttachmentId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 916
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1300(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 917
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 919
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->hasScreenDimensions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 922
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    const/4 v2, 0x0

    .line 936
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    if-eqz v2, :cond_0

    .line 942
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 945
    :cond_0
    return-object p0

    .line 937
    :catch_0
    move-exception v1

    .line 938
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-object v2, v0

    .line 939
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 942
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 904
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    if-eqz v0, :cond_0

    .line 905
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object p0

    .line 908
    .end local p0
    :goto_0
    return-object p0

    .line 907
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1076
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1083
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1087
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1088
    return-object p0

    .line 1081
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 991
    if-nez p1, :cond_0

    .line 992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 994
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 995
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 997
    return-object p0
.end method

.method public setAttachmentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1013
    if-nez p1, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1016
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1017
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1018
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1019
    return-object p0
.end method

.method public setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1063
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1064
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1068
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1069
    return-object p0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1046
    if-nez p1, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1049
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1050
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1054
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1055
    return-object p0

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
