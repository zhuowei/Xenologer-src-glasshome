.class public final Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtHomePowerControlAction"
.end annotation


# static fields
.field public static final LEVEL_FIELD_NUMBER:I = 0x1

.field public static final TARGET_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLevel:Z

.field private hasTarget:Z

.field private level_:I

.field private target_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9521
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9526
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 9543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 9579
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    .line 9521
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9639
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9633
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    .line 9558
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->clearLevel()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 9559
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->clearTarget()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 9560
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    .line 9561
    return-object p0
.end method

.method public clearLevel()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9535
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasLevel:Z

    .line 9536
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 9537
    return-object p0
.end method

.method public clearTarget()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    .line 9552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasTarget:Z

    .line 9553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 9554
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9582
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 9584
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->getSerializedSize()I

    .line 9586
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 9527
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9591
    const/4 v0, 0x0

    .line 9592
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9593
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->getLevel()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9596
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9597
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9600
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    .line 9601
    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9544
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 9528
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasLevel:Z

    return v0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 9545
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasTarget:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9565
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9610
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9614
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9615
    :sswitch_0
    return-object p0

    .line 9620
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->setLevel(I)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    goto :goto_0

    .line 9624
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    goto :goto_0

    .line 9610
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 9518
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    move-result-object v0

    return-object v0
.end method

.method public setLevel(I)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasLevel:Z

    .line 9531
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 9532
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasTarget:Z

    .line 9548
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 9549
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
    .line 9571
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9572
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->getLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9574
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->hasTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9575
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9577
    :cond_1
    return-void
.end method
