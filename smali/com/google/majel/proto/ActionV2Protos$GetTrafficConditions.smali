.class public final Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetTrafficConditions"
.end annotation


# static fields
.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static final ORIGIN_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private hasDestination:Z

.field private hasOrigin:Z

.field private origin_:Lcom/google/majel/proto/ActionV2Protos$Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7759
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7764
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7784
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7823
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    .line 7759
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7887
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7881
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1

    .prologue
    .line 7802
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->clearOrigin()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 7803
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->clearDestination()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 7804
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    .line 7805
    return-object p0
.end method

.method public clearDestination()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1

    .prologue
    .line 7796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasDestination:Z

    .line 7797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7798
    return-object p0
.end method

.method public clearOrigin()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1

    .prologue
    .line 7776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasOrigin:Z

    .line 7777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7778
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7826
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    if-gez v0, :cond_0

    .line 7828
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->getSerializedSize()I

    .line 7830
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    return v0
.end method

.method public getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 7786
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getOrigin()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 7766
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7835
    const/4 v0, 0x0

    .line 7836
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasOrigin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7837
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->getOrigin()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7840
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7841
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7844
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    .line 7845
    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .prologue
    .line 7785
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasDestination:Z

    return v0
.end method

.method public hasOrigin()Z
    .locals 1

    .prologue
    .line 7765
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasOrigin:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7809
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7854
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7858
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7859
    :sswitch_0
    return-object p0

    .line 7864
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 7865
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7866
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->setOrigin(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    goto :goto_0

    .line 7870
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 7871
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7872
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    goto :goto_0

    .line 7854
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
    .line 7756
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7788
    if-nez p1, :cond_0

    .line 7789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7791
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasDestination:Z

    .line 7792
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7793
    return-object p0
.end method

.method public setOrigin(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7768
    if-nez p1, :cond_0

    .line 7769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7771
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasOrigin:Z

    .line 7772
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7773
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
    .line 7815
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasOrigin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7816
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->getOrigin()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7818
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7819
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7821
    :cond_1
    return-void
.end method
