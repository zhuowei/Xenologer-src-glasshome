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
    .line 681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1407
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 682
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 683
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1407
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 688
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 689
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 670
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
    .line 1566
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1567
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getUserEventProtoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 694
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    .line 737
    .local v0, result:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 740
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 5

    .prologue
    .line 744
    new-instance v1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V

    .line 745
    .local v1, result:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 746
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 747
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 748
    or-int/lit8 v2, v2, 0x1

    .line 750
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$502(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 752
    or-int/lit8 v2, v2, 0x2

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$602(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 756
    or-int/lit8 v2, v2, 0x4

    .line 758
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$702(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 760
    or-int/lit8 v2, v2, 0x8

    .line 762
    :cond_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$802(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;J)J

    .line 763
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 764
    or-int/lit8 v2, v2, 0x10

    .line 766
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$902(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 768
    or-int/lit8 v2, v2, 0x20

    .line 770
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1002(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 772
    or-int/lit8 v2, v2, 0x40

    .line 774
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_7

    .line 775
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1102(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    .line 779
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1202(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;I)I

    .line 780
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onBuilt()V

    .line 781
    return-object v1

    .line 777
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
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2

    .prologue
    .line 700
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 702
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 704
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 706
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 707
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 708
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 710
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 714
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 718
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 719
    return-object p0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 936
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 937
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 938
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 939
    return-object p0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1037
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1038
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1039
    return-object p0
.end method

.method public clearHardwareVersion()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1385
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1387
    return-object p0
.end method

.method public clearSessionId()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1137
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1138
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1139
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1285
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1287
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 1203
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1204
    return-object p0
.end method

.method public clearUserEventProto()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1516
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1517
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1521
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1522
    return-object p0

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2

    .prologue
    .line 723
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
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 664
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
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 879
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 880
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 882
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 888
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

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 901
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 902
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 905
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 908
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
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 978
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 979
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 980
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 982
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 984
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 988
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

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1001
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1002
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1005
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1008
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
    .line 732
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1327
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1328
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1330
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1331
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1332
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1336
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

.method public getHardwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1349
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1350
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1353
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1356
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
    .locals 4

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1079
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1080
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1082
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1088
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

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1101
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1102
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1105
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1108
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
    .locals 4

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1227
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1228
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1230
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1236
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

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1249
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1250
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1253
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1256
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
    .line 1178
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1435
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
    .line 1534
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1535
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1536
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
    .line 1548
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    .line 1551
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

    .line 868
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
    .line 968
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
    .line 1316
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
    .line 1068
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
    .line 1216
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
    .line 1168
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
    .line 1420
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
    .line 675
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
    .line 831
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hasUserEventProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x0

    .line 837
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
    .line 794
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 827
    :goto_0
    return-object p0

    .line 795
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 797
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$500(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 798
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 800
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 802
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$600(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 803
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 805
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 807
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$700(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 808
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 810
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 811
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 813
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 815
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$900(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 818
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasHardwareVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 819
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 820
    #getter for: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->access$1000(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 821
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 823
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasUserEventProto()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 824
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 826
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
    .line 844
    const/4 v2, 0x0

    .line 846
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

    .line 851
    if-eqz v2, :cond_0

    .line 852
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 855
    :cond_0
    return-object p0

    .line 847
    :catch_0
    move-exception v1

    .line 848
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-object v2, v0

    .line 849
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 852
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 785
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    if-eqz v0, :cond_0

    .line 786
    check-cast p1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object p0

    .line 789
    .end local p0
    :goto_0
    return-object p0

    .line 788
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
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
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
    .line 664
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
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
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
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1491
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1498
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1502
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1503
    return-object p0

    .line 1496
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0

    .line 1500
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
    .line 920
    if-nez p1, :cond_0

    .line 921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 924
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 925
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 926
    return-object p0
.end method

.method public setActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 953
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 954
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->action_:Ljava/lang/Object;

    .line 955
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 956
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1020
    if-nez p1, :cond_0

    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1023
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1024
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1025
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1026
    return-object p0
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1054
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->data_:Ljava/lang/Object;

    .line 1055
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1056
    return-object p0
.end method

.method public setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1368
    if-nez p1, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1371
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1372
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1373
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1374
    return-object p0
.end method

.method public setHardwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1398
    if-nez p1, :cond_0

    .line 1399
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1401
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1402
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->hardwareVersion_:Ljava/lang/Object;

    .line 1403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1404
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1123
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1124
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1125
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1126
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1154
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1156
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1268
    if-nez p1, :cond_0

    .line 1269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1271
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1272
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1274
    return-object p0
.end method

.method public setSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1301
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1302
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 1303
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1304
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1189
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->timestamp_:J

    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1191
    return-object p0
.end method

.method public setUserEventProto(Lcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1472
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 1473
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->onChanged()V

    .line 1477
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->bitField0_:I

    .line 1478
    return-object p0

    .line 1475
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
    .line 1448
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1449
    if-nez p1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1452
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

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
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->userEventProtoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
