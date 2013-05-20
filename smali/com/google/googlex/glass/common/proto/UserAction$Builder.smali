.class public final Lcom/google/googlex/glass/common/proto/UserAction$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserAction.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/UserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/UserAction$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private payload_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 669
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 560
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->maybeForceBuilderInitialization()V

    .line 561
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 669
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 566
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->maybeForceBuilderInitialization()V

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/UserAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->create()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1

    .prologue
    .line 573
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_UserAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 569
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    .line 600
    .local v0, result:Lcom/google/googlex/glass/common/proto/UserAction;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 603
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 5

    .prologue
    .line 607
    new-instance v1, Lcom/google/googlex/glass/common/proto/UserAction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/UserAction;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/UserAction$1;)V

    .line 608
    .local v1, result:Lcom/google/googlex/glass/common/proto/UserAction;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 609
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 610
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 611
    or-int/lit8 v2, v2, 0x1

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    #setter for: Lcom/google/googlex/glass/common/proto/UserAction;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/UserAction;->access$502(Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 614
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 615
    or-int/lit8 v2, v2, 0x2

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/UserAction;->payload_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/UserAction;->access$602(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    #setter for: Lcom/google/googlex/glass/common/proto/UserAction;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction;->access$702(Lcom/google/googlex/glass/common/proto/UserAction;I)I

    .line 619
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onBuilt()V

    .line 620
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 578
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 579
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clear()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clear()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clear()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clear()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPayload()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 779
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 780
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 781
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 699
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 701
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 586
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->create()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

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
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->clone()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_UserAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 724
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 725
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 730
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

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 742
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 743
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 744
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 747
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 750
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

.method public getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    return-object v0
.end method

.method public hasPayload()Z
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 674
    iget v1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 553
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_UserAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/UserAction;

    const-class v2, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 633
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 643
    :goto_0
    return-object p0

    .line 634
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 637
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 639
    #getter for: Lcom/google/googlex/glass/common/proto/UserAction;->payload_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/UserAction;->access$600(Lcom/google/googlex/glass/common/proto/UserAction;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 642
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    const/4 v2, 0x0

    .line 656
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/UserAction;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    if-eqz v2, :cond_0

    .line 662
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 665
    :cond_0
    return-object p0

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    move-object v2, v0

    .line 659
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 662
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 624
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/UserAction;

    if-eqz v0, :cond_0

    .line 625
    check-cast p1, Lcom/google/googlex/glass/common/proto/UserAction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object p0

    .line 628
    .end local p0
    :goto_0
    return-object p0

    .line 627
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
    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

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
    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

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
    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

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
    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 762
    if-nez p1, :cond_0

    .line 763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 766
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 767
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 768
    return-object p0
.end method

.method public setPayloadBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 792
    if-nez p1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 795
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 796
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->payload_:Ljava/lang/Object;

    .line 797
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 798
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 689
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->bitField0_:I

    .line 690
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->type_:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 691
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->onChanged()V

    .line 692
    return-object p0
.end method
