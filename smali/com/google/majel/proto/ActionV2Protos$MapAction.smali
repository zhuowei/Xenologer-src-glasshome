.class public final Lcom/google/majel/proto/ActionV2Protos$MapAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapAction"
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x1

.field public static final PREVIEW_IMAGE_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasPreviewImageUrl:Z

.field private location_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$Location;",
            ">;"
        }
    .end annotation
.end field

.field private previewImageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2599
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    .line 2637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 2673
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    .line 2599
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2735
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2729
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    return-object v0
.end method


# virtual methods
.method public addLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2620
    if-nez p1, :cond_0

    .line 2621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2623
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    .line 2626
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2627
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1

    .prologue
    .line 2652
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->clearLocation()Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 2653
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 2654
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    .line 2655
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1

    .prologue
    .line 2630
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    .line 2631
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1

    .prologue
    .line 2646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->hasPreviewImageUrl:Z

    .line 2647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 2648
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2676
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getSerializedSize()I

    .line 2680
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    return v0
.end method

.method public getLocation(I)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "index"

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getLocationCount()I
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2685
    const/4 v2, 0x0

    .line 2686
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getLocationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2687
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$Location;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2690
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->hasPreviewImageUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2691
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2694
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    .line 2695
    return v2
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 2639
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->hasPreviewImageUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2659
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2703
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2704
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2708
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2709
    :sswitch_0
    return-object p0

    .line 2714
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 2715
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2716
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->addLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    goto :goto_0

    .line 2720
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    goto :goto_0

    .line 2704
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2596
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(ILcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2613
    if-nez p2, :cond_0

    .line 2614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2617
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->hasPreviewImageUrl:Z

    .line 2642
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 2643
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getLocationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2666
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$Location;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2668
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->hasPreviewImageUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2669
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2671
    :cond_1
    return-void
.end method
