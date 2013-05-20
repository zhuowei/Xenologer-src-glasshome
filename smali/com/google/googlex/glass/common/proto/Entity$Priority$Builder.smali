.class public final Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity$Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private glasswareAffinity_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 593
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->maybeForceBuilderInitialization()V

    .line 594
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 599
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->maybeForceBuilderInitialization()V

    .line 600
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 606
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Priority_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    .line 631
    .local v0, result:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 634
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 5

    .prologue
    .line 638
    new-instance v1, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Entity$Priority;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 639
    .local v1, result:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    .line 640
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 641
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 642
    or-int/lit8 v2, v2, 0x1

    .line 644
    :cond_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->glasswareAffinity_:I

    #setter for: Lcom/google/googlex/glass/common/proto/Entity$Priority;->glasswareAffinity_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->access$602(Lcom/google/googlex/glass/common/proto/Entity$Priority;I)I

    .line 645
    #setter for: Lcom/google/googlex/glass/common/proto/Entity$Priority;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->access$702(Lcom/google/googlex/glass/common/proto/Entity$Priority;I)I

    .line 646
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->onBuilt()V

    .line 647
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->glasswareAffinity_:I

    .line 612
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    .line 613
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGlasswareAffinity()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->glasswareAffinity_:I

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->onChanged()V

    .line 740
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Priority_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGlasswareAffinity()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->glasswareAffinity_:I

    return v0
.end method

.method public hasGlasswareAffinity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 701
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

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
    .line 586
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Priority_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 660
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 665
    :goto_0
    return-object p0

    .line 661
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->hasGlasswareAffinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getGlasswareAffinity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->setGlasswareAffinity(I)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
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
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

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
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 651
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    if-eqz v0, :cond_0

    .line 652
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object p0

    .line 655
    .end local p0
    :goto_0
    return-object p0

    .line 654
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
    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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
    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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
    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

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
    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGlasswareAffinity(I)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 723
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->bitField0_:I

    .line 724
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->glasswareAffinity_:I

    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->onChanged()V

    .line 726
    return-object p0
.end method
