.class public final Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallBusinessAction"
.end annotation


# static fields
.field public static final BUSINESS_LOCATION_FIELD_NUMBER:I = 0x4

.field public static final BUSINESS_NAME_FIELD_NUMBER:I = 0x1

.field public static final DEPRECATED_BUSINESS_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x3

.field public static final PREVIEW_IMAGE_URL_FIELD_NUMBER:I = 0x5


# instance fields
.field private businessLocation_:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private businessName_:Ljava/lang/String;

.field private cachedSize:I

.field private dEPRECATEDBusinessAddress_:Ljava/lang/String;

.field private hasBusinessLocation:Z

.field private hasBusinessName:Z

.field private hasDEPRECATEDBusinessAddress:Z

.field private hasPhoneNumber:Z

.field private hasPreviewImageUrl:Z

.field private phoneNumber_:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

.field private previewImageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3256
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 3278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 3295
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber_:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 3315
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 3383
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    .line 3256
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3471
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3465
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3350
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clearBusinessName()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 3351
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clearDEPRECATEDBusinessAddress()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 3352
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clearPhoneNumber()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 3353
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clearBusinessLocation()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 3354
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 3355
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    .line 3356
    return-object p0
.end method

.method public clearBusinessLocation()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessLocation:Z

    .line 3328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3329
    return-object p0
.end method

.method public clearBusinessName()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessName:Z

    .line 3271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 3272
    return-object p0
.end method

.method public clearDEPRECATEDBusinessAddress()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasDEPRECATEDBusinessAddress:Z

    .line 3288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 3289
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPhoneNumber:Z

    .line 3308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber_:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 3309
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 3344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPreviewImageUrl:Z

    .line 3345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 3346
    return-object p0
.end method

.method public getBusinessLocation()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3386
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 3388
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getSerializedSize()I

    .line 3390
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDBusinessAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber_:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3395
    const/4 v0, 0x0

    .line 3396
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3397
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getBusinessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3400
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasDEPRECATEDBusinessAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3401
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getDEPRECATEDBusinessAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3404
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3405
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getPhoneNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3408
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessLocation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3409
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getBusinessLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3412
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPreviewImageUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3413
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3416
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    .line 3417
    return v0
.end method

.method public hasBusinessLocation()Z
    .locals 1

    .prologue
    .line 3316
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessLocation:Z

    return v0
.end method

.method public hasBusinessName()Z
    .locals 1

    .prologue
    .line 3263
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessName:Z

    return v0
.end method

.method public hasDEPRECATEDBusinessAddress()Z
    .locals 1

    .prologue
    .line 3280
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasDEPRECATEDBusinessAddress:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 3296
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPhoneNumber:Z

    return v0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 3337
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPreviewImageUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3360
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3426
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3430
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3431
    :sswitch_0
    return-object p0

    .line 3436
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->setBusinessName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    goto :goto_0

    .line 3440
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->setDEPRECATEDBusinessAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    goto :goto_0

    .line 3444
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    .line 3445
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3446
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->setPhoneNumber(Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    goto :goto_0

    .line 3450
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 3451
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3452
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->setBusinessLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    goto :goto_0

    .line 3456
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    goto :goto_0

    .line 3426
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
    .line 3253
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    move-result-object v0

    return-object v0
.end method

.method public setBusinessLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3319
    if-nez p1, :cond_0

    .line 3320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3322
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessLocation:Z

    .line 3323
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3324
    return-object p0
.end method

.method public setBusinessName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessName:Z

    .line 3266
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 3267
    return-object p0
.end method

.method public setDEPRECATEDBusinessAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasDEPRECATEDBusinessAddress:Z

    .line 3283
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 3284
    return-object p0
.end method

.method public setPhoneNumber(Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3299
    if-nez p1, :cond_0

    .line 3300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPhoneNumber:Z

    .line 3303
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber_:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 3304
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPreviewImageUrl:Z

    .line 3340
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 3341
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
    .line 3366
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3369
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasDEPRECATEDBusinessAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3370
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getDEPRECATEDBusinessAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3372
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3373
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getPhoneNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3375
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasBusinessLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3376
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getBusinessLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3378
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->hasPreviewImageUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3379
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3381
    :cond_4
    return-void
.end method
