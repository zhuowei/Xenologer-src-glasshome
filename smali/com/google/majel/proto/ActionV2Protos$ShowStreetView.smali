.class public final Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowStreetView"
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasLocation:Z

.field private location_:Lcom/google/majel/proto/ActionV2Protos$Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7657
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7697
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    .line 7657
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7751
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7745
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1

    .prologue
    .line 7680
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->clearLocation()Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    .line 7681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    .line 7682
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1

    .prologue
    .line 7674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->hasLocation:Z

    .line 7675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7676
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7700
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    if-gez v0, :cond_0

    .line 7702
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->getSerializedSize()I

    .line 7704
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    return v0
.end method

.method public getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 7664
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7709
    const/4 v0, 0x0

    .line 7710
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7711
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7714
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    .line 7715
    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 7663
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->hasLocation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7686
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7724
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7728
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7729
    :sswitch_0
    return-object p0

    .line 7734
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 7735
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7736
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->setLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    goto :goto_0

    .line 7724
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
    .line 7654
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1
    .parameter "value"

    .prologue
    .line 7666
    if-nez p1, :cond_0

    .line 7667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7669
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->hasLocation:Z

    .line 7670
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7671
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
    .line 7692
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7693
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7695
    :cond_0
    return-void
.end method
