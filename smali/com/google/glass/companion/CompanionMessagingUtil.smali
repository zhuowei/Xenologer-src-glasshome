.class public Lcom/google/glass/companion/CompanionMessagingUtil;
.super Ljava/lang/Object;
.source "CompanionMessagingUtil.java"


# static fields
.field public static final ACTION_START_COMPANION_SERVICE:Ljava/lang/String; = "com.google.glass.bluetooth.COMPANION_SERVICE"

.field public static final EXCLUSIVE_ID:J = 0x0L

.field public static final KEY_ENVELOPE:Ljava/lang/String; = "Envelope"

.field public static final KEY_MESSENGER:Ljava/lang/String; = "Messenger"

.field public static final KEY_SCREENCAST_DEVICE:Ljava/lang/String; = "Screencast_device"

.field private static final UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .parameter "device"

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Screencast_device"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    return-object v0
.end method

.method public static createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;
    .locals 1
    .parameter "envelope"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;
    .locals 2
    .parameter "envelope"
    .parameter "replyToMessenger"

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Envelope"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v1, "Messenger"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    :cond_0
    return-object v0
.end method

.method public static createMessage(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;
    .locals 3
    .parameter "envelope"

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Envelope"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    return-object v0
.end method

.method public static getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 2
    .parameter "message"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Envelope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static getNextUniqueId()J
    .locals 5

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1f

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setVersion(I)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method
