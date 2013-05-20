.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hours"
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x1

.field public static final INTERVAL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private day_:Ljava/lang/String;

.field private hasDay:Z

.field private interval_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3669
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 3690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    .line 3743
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    .line 3669
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3808
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3802
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    return-object v0
.end method


# virtual methods
.method public addInterval(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .parameter "value"

    .prologue
    .line 3707
    if-nez p1, :cond_0

    .line 3708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    .line 3713
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3714
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 3722
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->clearDay()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 3723
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->clearInterval()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 3724
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    .line 3725
    return-object p0
.end method

.method public clearDay()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 3683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->hasDay:Z

    .line 3684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 3685
    return-object p0
.end method

.method public clearInterval()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 3717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    .line 3718
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3746
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    if-gez v0, :cond_0

    .line 3748
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getSerializedSize()I

    .line 3750
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    return v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalCount()I
    .locals 1

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntervalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3755
    const/4 v3, 0x0

    .line 3756
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->hasDay()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3757
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getDay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3761
    :cond_0
    const/4 v0, 0x0

    .line 3762
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3763
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 3766
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 3767
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3769
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    .line 3770
    return v3
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 3676
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->hasDay:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3729
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3778
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3779
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3783
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3784
    :sswitch_0
    return-object p0

    .line 3789
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->setDay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    goto :goto_0

    .line 3793
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->addInterval(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    goto :goto_0

    .line 3779
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
    .line 3666
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    return-object v0
.end method

.method public setDay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .parameter "value"

    .prologue
    .line 3678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->hasDay:Z

    .line 3679
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 3680
    return-object p0
.end method

.method public setInterval(ILjava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3700
    if-nez p2, :cond_0

    .line 3701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3703
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3704
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
    .line 3735
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->hasDay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3736
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3738
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3739
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 3741
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    return-void
.end method
