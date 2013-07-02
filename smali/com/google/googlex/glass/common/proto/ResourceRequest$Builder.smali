.class public final Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResourceRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ResourceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ResourceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fingerprint_:J

.field private languageCode_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 736
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 607
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 608
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 736
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 613
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 614
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 595
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 616
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    .line 651
    .local v0, result:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 654
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 5

    .prologue
    .line 658
    new-instance v1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V

    .line 659
    .local v1, result:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 660
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 661
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 662
    or-int/lit8 v2, v2, 0x1

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$502(Lcom/google/googlex/glass/common/proto/ResourceRequest;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 665
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 666
    or-int/lit8 v2, v2, 0x2

    .line 668
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$602(Lcom/google/googlex/glass/common/proto/ResourceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 670
    or-int/lit8 v2, v2, 0x4

    .line 672
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$702(Lcom/google/googlex/glass/common/proto/ResourceRequest;J)J

    .line 673
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 674
    or-int/lit8 v2, v2, 0x8

    .line 676
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$802(Lcom/google/googlex/glass/common/proto/ResourceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$902(Lcom/google/googlex/glass/common/proto/ResourceRequest;I)I

    .line 678
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onBuilt()V

    .line 679
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 625
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 626
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 628
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 630
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 632
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 633
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 921
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 922
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 924
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 1010
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 1011
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 1012
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 849
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 851
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 766
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 767
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 768
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 637
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1

    .prologue
    .line 646
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 894
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    return-wide v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 948
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 949
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 950
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 952
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 958
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
    .line 971
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 972
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 973
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 979
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

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 791
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 792
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 794
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 800
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 812
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 813
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 814
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 817
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 820
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

.method public getType()Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method

.method public hasFingerprint()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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

.method public hasLanguageCode()Z
    .locals 2

    .prologue
    .line 937
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 780
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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

    .line 741
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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
    .line 600
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 692
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 710
    :goto_0
    return-object p0

    .line 693
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getType()Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 698
    #getter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$600(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 699
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 701
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getFingerprint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 704
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 706
    #getter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$800(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 709
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    const/4 v2, 0x0

    .line 723
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 732
    :cond_0
    return-object p0

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-object v2, v0

    .line 726
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 729
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 683
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    if-eqz v0, :cond_0

    .line 684
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object p0

    .line 687
    .end local p0
    :goto_0
    return-object p0

    .line 686
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
    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 907
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 908
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 909
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 995
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 996
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 997
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 998
    return-object p0
.end method

.method public setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1024
    if-nez p1, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1027
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 1028
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->languageCode_:Ljava/lang/Object;

    .line 1029
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 1030
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 832
    if-nez p1, :cond_0

    .line 833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 835
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 836
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 837
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 838
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 865
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 866
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 867
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 868
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 756
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 757
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 758
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 759
    return-object p0
.end method
