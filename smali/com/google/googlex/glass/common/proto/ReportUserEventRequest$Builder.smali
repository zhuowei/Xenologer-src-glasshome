.class public final Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReportUserEventRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ReportUserEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ReportUserEventRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private hardwareVersion_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private softwareVersion_:Ljava/lang/Object;

.field private timestamp_:J

.field private userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            "Lcom/google/common/logging/GlassUserEventProto$Builder;",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userEventProto_:Lcom/google/common/logging/GlassUserEventProto;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 951
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1387
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 677
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 678
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 951
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1387
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 683
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 691
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getUserEventProtoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            "Lcom/google/common/logging/GlassUserEventProto$Builder;",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1547
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getUserEventProtoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 689
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    .line 732
    .local v0, result:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 735
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 5

    .prologue
    .line 739
    new-instance v1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V

    .line 740
    .local v1, result:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 741
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 742
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 743
    or-int/lit8 v2, v2, 0x1

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$502(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 747
    or-int/lit8 v2, v2, 0x2

    .line 749
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$602(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 751
    or-int/lit8 v2, v2, 0x4

    .line 753
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$702(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 755
    or-int/lit8 v2, v2, 0x8

    .line 757
    :cond_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$802(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;J)J

    .line 758
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 759
    or-int/lit8 v2, v2, 0x10

    .line 761
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$902(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 763
    or-int/lit8 v2, v2, 0x20

    .line 765
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1002(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 767
    or-int/lit8 v2, v2, 0x40

    .line 769
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_7

    .line 770
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1102(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    .line 774
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1202(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;I)I

    .line 775
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onBuilt()V

    .line 776
    return-object v1

    .line 772
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/common/logging/GlassUserEventProto;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1102(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2

    .prologue
    .line 695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 699
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 703
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 707
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 708
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 709
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 713
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 714
    return-object p0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 929
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 931
    return-object p0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1025
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1026
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1027
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1028
    return-object p0
.end method

.method public clearHardwareVersion()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1365
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1367
    return-object p0
.end method

.method public clearSessionId()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1123
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1124
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1125
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1268
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1269
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1270
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 1189
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1190
    return-object p0
.end method

.method public clearUserEventProto()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1496
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1501
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1502
    return-object p0

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2

    .prologue
    .line 718
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

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
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 874
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 875
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 880
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

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 892
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 893
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 894
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 897
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 900
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

.method public getData()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 971
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 972
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 977
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

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 989
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 990
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 991
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 994
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 997
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1310
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1311
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1316
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

.method public getHardwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1329
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1330
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1336
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

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1068
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1069
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1074
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

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1087
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1088
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1091
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1094
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

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1213
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1214
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1216
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1219
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

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1231
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1232
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1233
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1236
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1239
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

.method public getTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1164
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0
.end method

.method public getUserEventProtoBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 1514
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1515
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1516
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getUserEventProtoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    return-object v0
.end method

.method public getUserEventProtoOrBuilder()Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    .line 1531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 863
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 960
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

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

.method public hasHardwareVersion()Z
    .locals 2

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 1057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 2

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1154
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserEventProto()Z
    .locals 2

    .prologue
    .line 1400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 670
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hasUserEventProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 789
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 822
    :goto_0
    return-object p0

    .line 790
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 792
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$500(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 795
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 797
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$600(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 798
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 800
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 802
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$700(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 803
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 805
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 806
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 808
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 809
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 810
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$900(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 811
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 813
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasHardwareVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 815
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1000(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 818
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasUserEventProto()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 819
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 821
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    const/4 v2, 0x0

    .line 841
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 850
    :cond_0
    return-object p0

    .line 842
    :catch_0
    move-exception v1

    .line 843
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-object v2, v0

    .line 844
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 780
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    if-eqz v0, :cond_0

    .line 781
    check-cast p1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object p0

    .line 784
    .end local p0
    :goto_0
    return-object p0

    .line 783
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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1471
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1478
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1482
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1483
    return-object p0

    .line 1476
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 915
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 916
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 917
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 918
    return-object p0
.end method

.method public setActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 942
    if-nez p1, :cond_0

    .line 943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 945
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 946
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 947
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 948
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1009
    if-nez p1, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1012
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1013
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1015
    return-object p0
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1039
    if-nez p1, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1042
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1043
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1044
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1045
    return-object p0
.end method

.method public setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1348
    if-nez p1, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1351
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1352
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1354
    return-object p0
.end method

.method public setHardwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1378
    if-nez p1, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1381
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1382
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1383
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1384
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1106
    if-nez p1, :cond_0

    .line 1107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1109
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1110
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1111
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1112
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1136
    if-nez p1, :cond_0

    .line 1137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1139
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1140
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1141
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1142
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1251
    if-nez p1, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1254
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1255
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1256
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1257
    return-object p0
.end method

.method public setSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1281
    if-nez p1, :cond_0

    .line 1282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1284
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1285
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1287
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1175
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1177
    return-object p0
.end method

.method public setUserEventProto(Lcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1452
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1453
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1457
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1458
    return-object p0

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1429
    if-nez p1, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1433
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1437
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1438
    return-object p0

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
