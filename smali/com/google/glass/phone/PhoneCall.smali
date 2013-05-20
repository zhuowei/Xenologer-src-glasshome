.class public final Lcom/google/glass/phone/PhoneCall;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCall$2;,
        Lcom/google/glass/phone/PhoneCall$CallDirection;
    }
.end annotation


# static fields
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

.field private missed:Z

.field private numberOfRings:I

.field private phoneNumber:Ljava/lang/String;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/google/glass/phone/PhoneCall$1;

    invoke-direct {v0}, Lcom/google/glass/phone/PhoneCall$1;-><init>()V

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/glass/phone/PhoneCall;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 100
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 102
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->startTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 103
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 104
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 105
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 106
    iget v0, p1, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 107
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->missed:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 108
    iget v0, p1, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 109
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 324
    const-class v0, Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 325
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
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method protected endCallTimer()V
    .locals 4

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    const-string v1, "Call already ended, not setting a new time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 151
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call ended at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallRunTime()J
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-wide/16 v0, 0x0

    .line 305
    :goto_0
    return-wide v0

    .line 302
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 305
    :cond_1
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCallStartTime()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    return-wide v0
.end method

.method public getCallerId()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    const-string v1, "Caller id is null, returning an entity with just a phone number."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    return v0
.end method

.method getLoggablePhoneNumber()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    const-string v4, "[phone number redacted]"

    .line 232
    :goto_0
    return-object v4

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v2, printablePhoneNumber:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, oldId:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x3

    .line 223
    .local v3, sublength:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    move v0, v3

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 226
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 232
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
    .line 190
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 288
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
    .line 276
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    .line 277
    return-void
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMissedCall()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    return v0
.end method

.method public setCallAccepted(Z)V
    .locals 0
    .parameter "accepted"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 267
    return-void
.end method

.method protected setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 160
    sget-object v0, Lcom/google/glass/phone/PhoneCall$2;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown call incoming or outgoing passed, taking no action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCallerId(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "callerId"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    .line 186
    return-void
.end method

.method public setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 280
    iput p1, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 281
    return-void
.end method

.method public setMissed(Z)V
    .locals 1
    .parameter "missed"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 244
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 245
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startCallTimer()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 141
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
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
    .line 271
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

    .line 126
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 128
    iget-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v3, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 131
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->numberOfRings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    goto :goto_1
.end method
