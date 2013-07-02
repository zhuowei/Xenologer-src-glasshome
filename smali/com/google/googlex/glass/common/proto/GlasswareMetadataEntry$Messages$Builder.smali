.class public final Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlasswareMetadataEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private languageCode_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 580
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->maybeForceBuilderInitialization()V

    .line 581
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 586
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->maybeForceBuilderInitialization()V

    .line 587
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_Messages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    .line 620
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 623
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 5

    .prologue
    .line 627
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V

    .line 628
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 629
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 630
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 631
    or-int/lit8 v2, v2, 0x1

    .line 633
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$602(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 635
    or-int/lit8 v2, v2, 0x2

    .line 637
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$702(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$802(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;I)I

    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onBuilt()V

    .line 640
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 602
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 875
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 877
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 774
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 775
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 776
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 2

    .prologue
    .line 606
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

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
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_Messages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 816
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 817
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 818
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 820
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 826
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 843
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 846
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

.method public getLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 712
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 713
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 714
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 716
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 722
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

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 736
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 737
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 740
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 743
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

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

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

.method public hasLanguageCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 701
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

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
    .line 573
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_Messages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 653
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 665
    :goto_0
    return-object p0

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 656
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$600(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 657
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 659
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 661
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->access$700(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 664
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v2, 0x0

    .line 678
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    .line 687
    :cond_0
    return-object p0

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-object v2, v0

    .line 681
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 684
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 644
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    if-eqz v0, :cond_0

    .line 645
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object p0

    .line 648
    .end local p0
    :goto_0
    return-object p0

    .line 647
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 858
    if-nez p1, :cond_0

    .line 859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 861
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 862
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 863
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 864
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 888
    if-nez p1, :cond_0

    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 891
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 892
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->displayName_:Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 894
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 760
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 761
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 762
    return-object p0
.end method

.method public setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 788
    if-nez p1, :cond_0

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 791
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->bitField0_:I

    .line 792
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->languageCode_:Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->onChanged()V

    .line 794
    return-object p0
.end method
