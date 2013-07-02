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
    .line 831
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 832
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 833
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 838
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 846
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 820
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
    .line 1131
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 841
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getScreenDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 844
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    .line 877
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 880
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 5

    .prologue
    .line 884
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V

    .line 885
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 886
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 887
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 888
    or-int/lit8 v2, v2, 0x1

    .line 890
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1302(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 892
    or-int/lit8 v2, v2, 0x2

    .line 894
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 895
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1402(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 899
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1502(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;I)I

    .line 900
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onBuilt()V

    .line 901
    return-object v1

    .line 897
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
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 850
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 852
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 854
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 858
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 859
    return-object p0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1008
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1009
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1010
    return-object p0
.end method

.method public clearScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1099
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1100
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1104
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1105
    return-object p0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2

    .prologue
    .line 863
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
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 814
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
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 962
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 963
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 965
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 971
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getAttachmentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 979
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 980
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 981
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 984
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 987
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
    .line 872
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 868
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1042
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
    .line 1111
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1113
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
    .line 1119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;

    .line 1122
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

    .line 955
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
    .line 1033
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
    .line 825
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
    .line 928
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 914
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 924
    :goto_0
    return-object p0

    .line 915
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->hasAttachmentId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 917
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->access$1300(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 918
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 920
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->hasScreenDimensions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 923
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
    .line 935
    const/4 v2, 0x0

    .line 937
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

    .line 942
    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 946
    :cond_0
    return-object p0

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-object v2, v0

    .line 940
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 943
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 905
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    if-eqz v0, :cond_0

    .line 906
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object p0

    .line 909
    .end local p0
    :goto_0
    return-object p0

    .line 908
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
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 814
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
    .line 814
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
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 814
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
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1080
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1087
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1091
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1092
    return-object p0

    .line 1085
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 999
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1000
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1001
    return-object p0
.end method

.method public setAttachmentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1020
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1021
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->attachmentId_:Ljava/lang/Object;

    .line 1022
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1023
    return-object p0
.end method

.method public setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1068
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1072
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1073
    return-object p0

    .line 1070
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
    .line 1049
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 1054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->onChanged()V

    .line 1058
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->bitField0_:I

    .line 1059
    return-object p0

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->screenDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
