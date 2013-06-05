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
    .line 22494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 22606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22495
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->maybeForceBuilderInitialization()V

    .line 22496
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 22500
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 22606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22501
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->maybeForceBuilderInitialization()V

    .line 22502
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22477
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$16600()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22508
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 22483
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 22504
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 22506
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2

    .prologue
    .line 22534
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    .line 22535
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22536
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22538
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 5

    .prologue
    .line 22542
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 22543
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22544
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22545
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 22546
    or-int/lit8 v2, v2, 0x1

    .line 22548
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$16902(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22549
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 22550
    or-int/lit8 v2, v2, 0x2

    .line 22552
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$17002(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22553
    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$17102(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;I)I

    .line 22554
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onBuilt()V

    .line 22555
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22512
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 22513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22514
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22515
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22516
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22517
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22660
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22661
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22662
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22663
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22733
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22734
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22735
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22736
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 2

    .prologue
    .line 22521
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
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22477
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
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 22530
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 22526
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22617
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22618
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 22619
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22621
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22624
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 22632
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22633
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22634
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22637
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22640
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
    .locals 3

    .prologue
    .line 22690
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22691
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 22692
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22694
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22697
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

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 22705
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22706
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22707
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22710
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22713
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

    .line 22611
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
    .line 22684
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
    .line 22488
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    .line 22584
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
    .line 22477
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22477
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
    .line 22477
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
    .line 22591
    const/4 v2, 0x0

    .line 22593
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

    .line 22598
    if-eqz v2, :cond_0

    .line 22599
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    .line 22602
    :cond_0
    return-object p0

    .line 22594
    :catch_0
    move-exception v1

    .line 22595
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-object v2, v0

    .line 22596
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22598
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 22599
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 22568
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 22580
    :goto_0
    return-object p0

    .line 22569
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22570
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22571
    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$16900(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22572
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22574
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22575
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22576
    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->access$17000(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22577
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22579
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
    .line 22559
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v0, :cond_0

    .line 22560
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object p0

    .line 22563
    .end local p0
    :goto_0
    return-object p0

    .line 22562
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
    .line 22477
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22477
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
    .line 22477
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 22648
    if-nez p1, :cond_0

    .line 22649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22651
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22652
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22653
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22654
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 22670
    if-nez p1, :cond_0

    .line 22671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22673
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22674
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->name_:Ljava/lang/Object;

    .line 22675
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22676
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 22721
    if-nez p1, :cond_0

    .line 22722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22724
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22725
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22726
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22727
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 22743
    if-nez p1, :cond_0

    .line 22744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22746
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->bitField0_:I

    .line 22747
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->value_:Ljava/lang/Object;

    .line 22748
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->onChanged()V

    .line 22749
    return-object p0
.end method
