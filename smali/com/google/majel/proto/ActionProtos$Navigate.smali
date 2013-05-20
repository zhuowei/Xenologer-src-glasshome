.class public final Lcom/google/majel/proto/ActionProtos$Navigate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Navigate"
.end annotation


# static fields
.field public static final DESTINATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private destination_:Lcom/google/majel/proto/LatLngProtos$LatLng;

.field private hasDestination:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    .line 439
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->clearDestination()Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    .line 464
    return-object p0
.end method

.method public clearDestination()Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->hasDestination:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 458
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    if-gez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->getSerializedSize()I

    .line 486
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    return v0
.end method

.method public getDestination()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->getDestination()Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    .line 497
    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->hasDestination:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 506
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$Navigate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    :sswitch_0
    return-object p0

    .line 516
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    .line 517
    .local v1, value:Lcom/google/majel/proto/LatLngProtos$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 518
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Navigate;->setDestination(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/ActionProtos$Navigate;

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 436
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Navigate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1
    .parameter "value"

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->hasDestination:Z

    .line 452
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination_:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 453
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
    .line 474
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->getDestination()Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 477
    :cond_0
    return-void
.end method
