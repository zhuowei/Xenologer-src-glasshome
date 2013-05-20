.class public final Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectionsAction"
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

    .line 2743
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2748
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2768
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2788
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 2805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 2849
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    .line 2743
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2929
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2923
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->clearDestination()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 2821
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->clearFrom()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 2822
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->clearTransportationMethod()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 2823
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 2824
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    .line 2825
    return-object p0
.end method

.method public clearDestination()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 2760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasDestination:Z

    .line 2761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2762
    return-object p0
.end method

.method public clearFrom()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 2780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasFrom:Z

    .line 2781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2782
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 2814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasPreviewImageUrl:Z

    .line 2815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 2816
    return-object p0
.end method

.method public clearTransportationMethod()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2797
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasTransportationMethod:Z

    .line 2798
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 2799
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2852
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 2854
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getSerializedSize()I

    .line 2856
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    return v0
.end method

.method public getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2861
    const/4 v0, 0x0

    .line 2862
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2863
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2866
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2867
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2870
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasTransportationMethod()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2871
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getTransportationMethod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2874
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasPreviewImageUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2875
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2878
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    .line 2879
    return v0
.end method

.method public getTransportationMethod()I
    .locals 1

    .prologue
    .line 2789
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .prologue
    .line 2749
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasDestination:Z

    return v0
.end method

.method public hasFrom()Z
    .locals 1

    .prologue
    .line 2769
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasFrom:Z

    return v0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 2807
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasPreviewImageUrl:Z

    return v0
.end method

.method public hasTransportationMethod()Z
    .locals 1

    .prologue
    .line 2790
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasTransportationMethod:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2829
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2887
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2888
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2892
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2893
    :sswitch_0
    return-object p0

    .line 2898
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 2899
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2900
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    goto :goto_0

    .line 2904
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 2905
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2906
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->setFrom(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    goto :goto_0

    .line 2910
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->setTransportationMethod(I)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    goto :goto_0

    .line 2914
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    goto :goto_0

    .line 2888
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
    .line 2740
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2752
    if-nez p1, :cond_0

    .line 2753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2755
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasDestination:Z

    .line 2756
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2757
    return-object p0
.end method

.method public setFrom(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2772
    if-nez p1, :cond_0

    .line 2773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2775
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasFrom:Z

    .line 2776
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 2777
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasPreviewImageUrl:Z

    .line 2810
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 2811
    return-object p0
.end method

.method public setTransportationMethod(I)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 2792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasTransportationMethod:Z

    .line 2793
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 2794
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
    .line 2835
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getDestination()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2838
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getFrom()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2841
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasTransportationMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2842
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getTransportationMethod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2844
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->hasPreviewImageUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2845
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2847
    :cond_3
    return-void
.end method
