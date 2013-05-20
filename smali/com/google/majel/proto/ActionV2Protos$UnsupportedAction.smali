.class public final Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedAction"
.end annotation


# static fields
.field public static final EXPLANATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private explanation_:Ljava/lang/String;

.field private hasExplanation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9424
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 9461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    .line 9424
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9513
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9507
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1

    .prologue
    .line 9444
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->clearExplanation()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    .line 9445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    .line 9446
    return-object p0
.end method

.method public clearExplanation()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1

    .prologue
    .line 9438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->hasExplanation:Z

    .line 9439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 9440
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9464
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 9466
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->getSerializedSize()I

    .line 9468
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    return v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9430
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9473
    const/4 v0, 0x0

    .line 9474
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->hasExplanation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9475
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->getExplanation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9478
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    .line 9479
    return v0
.end method

.method public hasExplanation()Z
    .locals 1

    .prologue
    .line 9431
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->hasExplanation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9450
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9488
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9492
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9493
    :sswitch_0
    return-object p0

    .line 9498
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->setExplanation(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    goto :goto_0

    .line 9488
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
    .line 9421
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    move-result-object v0

    return-object v0
.end method

.method public setExplanation(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->hasExplanation:Z

    .line 9434
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 9435
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
    .line 9456
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->hasExplanation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9457
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9459
    :cond_0
    return-void
.end method
