.class public final Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddReminderAction"
.end annotation


# static fields
.field public static final ABSOLUTE_TIME_TRIGGER_FIELD_NUMBER:I = 0x3

.field public static final CONFIRMATION_URL_PATH_FIELD_NUMBER:I = 0x5

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final LABEL_SPAN_FIELD_NUMBER:I = 0x2

.field public static final LOCATION_TRIGGER_FIELD_NUMBER:I = 0x4


# instance fields
.field private absoluteTimeTrigger_:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

.field private cachedSize:I

.field private confirmationUrlPath_:Ljava/lang/String;

.field private hasAbsoluteTimeTrigger:Z

.field private hasConfirmationUrlPath:Z

.field private hasLabel:Z

.field private hasLabelSpan:Z

.field private hasLocationTrigger:Z

.field private labelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private label_:Ljava/lang/String;

.field private locationTrigger_:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7295
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 7317
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7337
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger_:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 7357
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger_:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 7425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    .line 7295
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7515
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7509
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7392
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clearLabel()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 7393
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clearLabelSpan()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 7394
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clearAbsoluteTimeTrigger()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 7395
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clearLocationTrigger()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 7396
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clearConfirmationUrlPath()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 7397
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    .line 7398
    return-object p0
.end method

.method public clearAbsoluteTimeTrigger()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasAbsoluteTimeTrigger:Z

    .line 7350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger_:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 7351
    return-object p0
.end method

.method public clearConfirmationUrlPath()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasConfirmationUrlPath:Z

    .line 7387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 7388
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabel:Z

    .line 7310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 7311
    return-object p0
.end method

.method public clearLabelSpan()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabelSpan:Z

    .line 7330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7331
    return-object p0
.end method

.method public clearLocationTrigger()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 7369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLocationTrigger:Z

    .line 7370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger_:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7371
    return-object p0
.end method

.method public getAbsoluteTimeTrigger()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1

    .prologue
    .line 7339
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger_:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7428
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 7430
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getSerializedSize()I

    .line 7432
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    return v0
.end method

.method public getConfirmationUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7378
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7301
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 7319
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getLocationTrigger()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    .line 7359
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger_:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7437
    const/4 v0, 0x0

    .line 7438
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7439
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7442
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabelSpan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7443
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7446
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasAbsoluteTimeTrigger()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7447
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getAbsoluteTimeTrigger()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7450
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLocationTrigger()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7451
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLocationTrigger()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7454
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasConfirmationUrlPath()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7455
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getConfirmationUrlPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7458
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    .line 7459
    return v0
.end method

.method public hasAbsoluteTimeTrigger()Z
    .locals 1

    .prologue
    .line 7338
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasAbsoluteTimeTrigger:Z

    return v0
.end method

.method public hasConfirmationUrlPath()Z
    .locals 1

    .prologue
    .line 7379
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasConfirmationUrlPath:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 7302
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabel:Z

    return v0
.end method

.method public hasLabelSpan()Z
    .locals 1

    .prologue
    .line 7318
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabelSpan:Z

    return v0
.end method

.method public hasLocationTrigger()Z
    .locals 1

    .prologue
    .line 7358
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLocationTrigger:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7402
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7467
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7468
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7472
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7473
    :sswitch_0
    return-object p0

    .line 7478
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->setLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    goto :goto_0

    .line 7482
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 7483
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7484
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->setLabelSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    goto :goto_0

    .line 7488
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    .line 7489
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7490
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->setAbsoluteTimeTrigger(Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    goto :goto_0

    .line 7494
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    .line 7495
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7496
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->setLocationTrigger(Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    goto :goto_0

    .line 7500
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->setConfirmationUrlPath(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    goto :goto_0

    .line 7468
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 7292
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    move-result-object v0

    return-object v0
.end method

.method public setAbsoluteTimeTrigger(Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 7341
    if-nez p1, :cond_0

    .line 7342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasAbsoluteTimeTrigger:Z

    .line 7345
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger_:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 7346
    return-object p0
.end method

.method public setConfirmationUrlPath(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 7381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasConfirmationUrlPath:Z

    .line 7382
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 7383
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 7304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabel:Z

    .line 7305
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 7306
    return-object p0
.end method

.method public setLabelSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 7321
    if-nez p1, :cond_0

    .line 7322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabelSpan:Z

    .line 7325
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7326
    return-object p0
.end method

.method public setLocationTrigger(Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 7361
    if-nez p1, :cond_0

    .line 7362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLocationTrigger:Z

    .line 7365
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger_:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7366
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
    .line 7408
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7409
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7411
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLabelSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7412
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLabelSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7414
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasAbsoluteTimeTrigger()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7415
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getAbsoluteTimeTrigger()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7417
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasLocationTrigger()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7418
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getLocationTrigger()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7420
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->hasConfirmationUrlPath()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7421
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->getConfirmationUrlPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7423
    :cond_4
    return-void
.end method
