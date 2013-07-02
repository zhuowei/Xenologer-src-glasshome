.class public final Lcom/google/glass/phone/PhoneCall;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCall$CallDirection;
    }
.end annotation


# static fields
.field public static final CALL_ERROR_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/phone/PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ENTITY:Ljava/lang/String; = "entity"

.field public static final EXTRA_PHONE_CALL:Ljava/lang/String; = "phone_call"

.field private static final NO_CALL_END_TIME:I = -0x1

.field private static final PARCEL_FALSE:I = 0x0

.field private static final PARCEL_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accepted:Z

.field private callerId:Lcom/google/googlex/glass/common/proto/Entity;

.field private direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

.field private endTime:J

.field private errorCode:I

.field private localRingtone:Z

.field private missed:Z

.field private numberOfRings:I

.field private phoneNumber:Ljava/lang/String;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/google/glass/phone/PhoneCall$1;

    invoke-direct {v0}, Lcom/google/glass/phone/PhoneCall$1;-><init>()V

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 108
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->UNKNOWN:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/glass/phone/PhoneCall;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 114
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 116
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->startTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 117
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 118
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 119
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 120
    iget v0, p1, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 121
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->missed:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 122
    iget v0, p1, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 123
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 124
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 366
    const-class v0, Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 367
    const-string v0, "phone_call"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    return-object v0
.end method

.method public getCallRunTime()J
    .locals 4

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const-wide/16 v0, 0x0

    .line 338
    :goto_0
    return-wide v0

    .line 335
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 338
    :cond_1
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCallStartTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    return-wide v0
.end method

.method public getCallerId()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    const-string v1, "Caller id is null, returning an entity with just a phone number."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    return v0
.end method

.method public getLocalRingtone()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    return v0
.end method

.method public getLoggablePhoneNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 244
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string v4, "[phone number redacted]"

    .line 263
    :goto_0
    return-object v4

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v2, printablePhoneNumber:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, oldId:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x3

    .line 254
    .local v3, sublength:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move v0, v3

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 257
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 263
    .end local v0           #i:I
    .end local v1           #oldId:Ljava/lang/String;
    .end local v2           #printablePhoneNumber:Ljava/lang/StringBuilder;
    .end local v3           #sublength:I
    :cond_2
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementRing()V
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 310
    return-void
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMissedCall()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    return v0
.end method

.method public setCallAccepted(Z)V
    .locals 0
    .parameter "accepted"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 300
    return-void
.end method

.method public setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)Z
    .locals 3
    .parameter "direction"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0, p1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Direction did not change from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Direction was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCallerId(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "callerId"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 217
    return-void
.end method

.method public setCallerId([B)V
    .locals 3
    .parameter "callerId"

    .prologue
    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/phone/PhoneCall;->setCallerId(Lcom/google/googlex/glass/common/proto/Entity;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v1, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse caller id from byte array."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEndTime(J)V
    .locals 3
    .parameter "endTime"

    .prologue
    .line 162
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    const-string v1, "Call already ended, not setting a new time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-wide p1, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 168
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call ended at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 313
    iput p1, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 314
    return-void
.end method

.method public setLocalRingtone(Z)V
    .locals 0
    .parameter "localRingtone"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 344
    return-void
.end method

.method public setMissed(Z)V
    .locals 2
    .parameter "missed"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A missed call cannot be an outgoing call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 278
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 3
    .parameter "startTime"

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 157
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneCall [startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfRings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", missed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPrintablePhoneNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getLoggablePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getCallRunTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLocalRingtone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getLocalRingtone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasAccepted()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 144
    iget-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 147
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 149
    goto :goto_1

    :cond_2
    move v1, v2

    .line 151
    goto :goto_2
.end method
