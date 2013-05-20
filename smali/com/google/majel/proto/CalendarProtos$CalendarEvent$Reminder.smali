.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminder"
.end annotation


# static fields
.field public static final METHOD_ALARM:I = 0x4

.field public static final METHOD_ALERT:I = 0x1

.field public static final METHOD_DEFAULT:I = 0x0

.field public static final METHOD_EMAIL:I = 0x2

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final METHOD_SMS:I = 0x3

.field public static final MINUTES_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMethod:Z

.field private hasMinutes:Z

.field private method_:I

.field private minutes_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 527
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 544
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    .line 515
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->clearMinutes()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 560
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->clearMethod()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    .line 562
    return-object p0
.end method

.method public clearMethod()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 553
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMethod:Z

    .line 554
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 555
    return-object p0
.end method

.method public clearMinutes()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMinutes:Z

    .line 537
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 538
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    if-gez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->getSerializedSize()I

    .line 587
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMinutes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->getMinutes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->getMethod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    .line 602
    return v0
.end method

.method public hasMethod()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMethod:Z

    return v0
.end method

.method public hasMinutes()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMinutes:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 611
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 615
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    :sswitch_0
    return-object p0

    .line 621
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->setMinutes(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    goto :goto_0

    .line 625
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->setMethod(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    goto :goto_0

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 512
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    return-object v0
.end method

.method public setMethod(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .parameter "value"

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMethod:Z

    .line 549
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 550
    return-object p0
.end method

.method public setMinutes(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .parameter "value"

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMinutes:Z

    .line 532
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 533
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
    .line 572
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMinutes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->hasMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->getMethod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 578
    :cond_1
    return-void
.end method
