.class public final Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23719
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 23831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23907
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23720
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->maybeForceBuilderInitialization()V

    .line 23721
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 23725
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 23831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23907
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23726
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->maybeForceBuilderInitialization()V

    .line 23727
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23702
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17700()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 23733
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 23708
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 23729
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 23731
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2

    .prologue
    .line 23759
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    .line 23760
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23761
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23763
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 5

    .prologue
    .line 23767
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 23768
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23769
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23770
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 23771
    or-int/lit8 v2, v2, 0x1

    .line 23773
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$18002(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23774
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 23775
    or-int/lit8 v2, v2, 0x2

    .line 23777
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$18102(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23778
    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$18202(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;I)I

    .line 23779
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onBuilt()V

    .line 23780
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 23737
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 23738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23739
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23741
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23742
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 23888
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23889
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23890
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23891
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 23964
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23965
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23966
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23967
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 2

    .prologue
    .line 23746
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

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
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 23755
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23702
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 23751
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23842
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23843
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 23844
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23846
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23847
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23848
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23852
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
    .line 23860
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23861
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 23862
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23865
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23868
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

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23918
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23919
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 23920
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23922
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23923
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23924
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23928
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

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 23936
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23937
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 23938
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23941
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23944
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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 23836
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 23912
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

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
    .line 23713
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 23809
    const/4 v0, 0x1

    return v0
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
    .line 23702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

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
    .line 23702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23816
    const/4 v2, 0x0

    .line 23818
    .local v2, parsedMessage:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    :try_start_0
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23823
    if-eqz v2, :cond_0

    .line 23824
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    .line 23827
    :cond_0
    return-object p0

    .line 23819
    :catch_0
    move-exception v1

    .line 23820
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-object v2, v0

    .line 23821
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23823
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 23824
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 23793
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 23805
    :goto_0
    return-object p0

    .line 23794
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23795
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23796
    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23797
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23799
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23800
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23801
    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$18100(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23802
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23804
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 23784
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v0, :cond_0

    .line 23785
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object p0

    .line 23788
    .end local p0
    :goto_0
    return-object p0

    .line 23787
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 23702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

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
    .line 23702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 23876
    if-nez p1, :cond_0

    .line 23877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23879
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23880
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23881
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23882
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 23898
    if-nez p1, :cond_0

    .line 23899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23901
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23902
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 23903
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23904
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 23952
    if-nez p1, :cond_0

    .line 23953
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23955
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23956
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23957
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23958
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 23974
    if-nez p1, :cond_0

    .line 23975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23977
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 23978
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 23979
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 23980
    return-object p0
.end method
