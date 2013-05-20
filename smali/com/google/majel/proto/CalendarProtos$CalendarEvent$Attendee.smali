.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attendee"
.end annotation


# static fields
.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final EMAIL_FIELD_NUMBER:I = 0x1

.field public static final OPTIONAL_ATTENDEE_FIELD_NUMBER:I = 0x4

.field public static final RESOURCE_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_COMMENT_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_STATUS_ACCEPTED:I = 0x3

.field public static final RESPONSE_STATUS_DECLINED:I = 0x1

.field public static final RESPONSE_STATUS_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_STATUS_NEEDS_ACTION:I = 0x0

.field public static final RESPONSE_STATUS_TENTATIVE:I = 0x2


# instance fields
.field private cachedSize:I

.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasEmail:Z

.field private hasOptionalAttendee:Z

.field private hasResource:Z

.field private hasResponseComment:Z

.field private hasResponseStatus:Z

.field private optionalAttendee_:Z

.field private resource_:Z

.field private responseComment_:Ljava/lang/String;

.field private responseStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 312
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 329
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 346
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    .line 267
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearEmail()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 379
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearDisplayName()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 380
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearResource()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 381
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearOptionalAttendee()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 382
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearResponseStatus()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 383
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clearResponseComment()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    .line 385
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasDisplayName:Z

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasEmail:Z

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public clearOptionalAttendee()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasOptionalAttendee:Z

    .line 339
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 340
    return-object p0
.end method

.method public clearResource()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResource:Z

    .line 322
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 323
    return-object p0
.end method

.method public clearResponseComment()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseComment:Z

    .line 373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 374
    return-object p0
.end method

.method public clearResponseStatus()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseStatus:Z

    .line 356
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 357
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    if-gez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getSerializedSize()I

    .line 422
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalAttendee()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    return v0
.end method

.method public getResource()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    return v0
.end method

.method public getResponseComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResource()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasOptionalAttendee()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getOptionalAttendee()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 445
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResponseStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseComment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 449
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResponseComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    .line 453
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasDisplayName:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasEmail:Z

    return v0
.end method

.method public hasOptionalAttendee()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasOptionalAttendee:Z

    return v0
.end method

.method public hasResource()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResource:Z

    return v0
.end method

.method public hasResponseComment()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseComment:Z

    return v0
.end method

.method public hasResponseStatus()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 462
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    :sswitch_0
    return-object p0

    .line 472
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setEmail(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 476
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 480
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setResource(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 484
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setOptionalAttendee(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 488
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setResponseStatus(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 492
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->setResponseComment(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto :goto_0

    .line 462
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 264
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasDisplayName:Z

    .line 300
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasEmail:Z

    .line 283
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setOptionalAttendee(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasOptionalAttendee:Z

    .line 334
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 335
    return-object p0
.end method

.method public setResource(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResource:Z

    .line 317
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 318
    return-object p0
.end method

.method public setResponseComment(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseComment:Z

    .line 368
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 369
    return-object p0
.end method

.method public setResponseStatus(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "value"

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseStatus:Z

    .line 351
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 352
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
    .line 395
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResource()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasOptionalAttendee()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getOptionalAttendee()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResponseStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->hasResponseComment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 411
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->getResponseComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 413
    :cond_5
    return-void
.end method
