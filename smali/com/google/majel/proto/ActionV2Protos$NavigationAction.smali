.class public final Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationAction"
.end annotation


# static fields
.field public static final DESTINATION_FIELD_NUMBER:I = 0x1

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final PREVIEW_IMAGE_URL_FIELD_NUMBER:I = 0x4

.field public static final TRANSPORTATION_METHOD_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private from_:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private hasDestination:Z

.field private hasFrom:Z

.field private hasPreviewImageUrl:Z

.field private hasTransportationMethod:Z

.field private previewImageUrl_:Ljava/lang/String;

.field private transportationMethod_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2405
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2410
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2430
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2450
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->transportationMethod_:I

    .line 2467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->previewImageUrl_:Ljava/lang/String;

    .line 2511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->cachedSize:I

    .line 2405
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2591
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1

    .prologue
    .line 2482
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->clearDestination()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 2483
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->clearFrom()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 2484
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->clearTransportationMethod()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 2485
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 2486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->cachedSize:I

    .line 2487
    return-object p0
.end method

.method public clearDestination()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1

    .prologue
    .line 2422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasDestination:Z

    .line 2423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2424
    return-object p0
.end method

.method public clearFrom()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1

    .prologue
    .line 2442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasFrom:Z

    .line 2443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2444
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1

    .prologue
    .line 2476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasPreviewImageUrl:Z

    .line 2477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->previewImageUrl_:Ljava/lang/String;

    .line 2478
    return-object p0
.end method

.method public clearTransportationMethod()Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2459
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasTransportationMethod:Z

    .line 2460
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->transportationMethod_:I

    .line 2461
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2514
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 2516
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getSerializedSize()I

    .line 2518
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->cachedSize:I

    return v0
.end method

.method public getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2523
    const/4 v0, 0x0

    .line 2524
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2525
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2528
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2529
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2532
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasTransportationMethod()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2533
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getTransportationMethod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2536
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasPreviewImageUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2537
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2540
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->cachedSize:I

    .line 2541
    return v0
.end method

.method public getTransportationMethod()I
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->transportationMethod_:I

    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasDestination:Z

    return v0
.end method

.method public hasFrom()Z
    .locals 1

    .prologue
    .line 2431
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasFrom:Z

    return v0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 2469
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasPreviewImageUrl:Z

    return v0
.end method

.method public hasTransportationMethod()Z
    .locals 1

    .prologue
    .line 2452
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasTransportationMethod:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2491
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2549
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2550
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2554
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2555
    :sswitch_0
    return-object p0

    .line 2560
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 2561
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2562
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    goto :goto_0

    .line 2566
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 2567
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2568
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->setFrom(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    goto :goto_0

    .line 2572
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->setTransportationMethod(I)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    goto :goto_0

    .line 2576
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    goto :goto_0

    .line 2550
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2402
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2414
    if-nez p1, :cond_0

    .line 2415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasDestination:Z

    .line 2418
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2419
    return-object p0
.end method

.method public setFrom(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2434
    if-nez p1, :cond_0

    .line 2435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasFrom:Z

    .line 2438
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2439
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasPreviewImageUrl:Z

    .line 2472
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->previewImageUrl_:Ljava/lang/String;

    .line 2473
    return-object p0
.end method

.method public setTransportationMethod(I)Lcom/google/majel/proto/ActionV2Protos$NavigationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasTransportationMethod:Z

    .line 2455
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->transportationMethod_:I

    .line 2456
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2501
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2503
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasTransportationMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2504
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getTransportationMethod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2506
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->hasPreviewImageUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2507
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2509
    :cond_3
    return-void
.end method
