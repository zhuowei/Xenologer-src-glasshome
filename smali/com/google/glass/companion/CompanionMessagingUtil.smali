.class public Lcom/google/glass/companion/CompanionMessagingUtil;
.super Ljava/lang/Object;
.source "CompanionMessagingUtil.java"


# static fields
.field public static final NO_REPLYABLE_ID:J

.field private static final TAG:Ljava/lang/String;

.field private static final UNIQUE_REPLYABLE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/companion/CompanionMessagingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_REPLYABLE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequestMessage(JLcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;
    .locals 7
    .parameter "replyableId"
    .parameter "envelope"

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 49
    .local v3, message:Landroid/os/Message;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p2, v1}, Lcom/google/glass/companion/Proto$Envelope;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Payload"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 60
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ReplyableId"

    invoke-virtual {v4, v5, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    :goto_0
    return-object v3

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/companion/CompanionMessagingUtil;->TAG:Ljava/lang/String;

    const-string v5, "IO exception while writing data"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createResponseMessage(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;
    .locals 4
    .parameter "envelope"

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, message:Landroid/os/Message;
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Payload"

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public static getNextUniqueReplyableId()J
    .locals 5

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_REPLYABLE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 38
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

.method public static parseRequestMessage(Landroid/os/Message;)Landroid/util/Pair;
    .locals 5
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    .line 70
    .local v0, replyableId:J
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ReplyableId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ReplyableId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 73
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Payload"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static parseResponseMessage(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 5
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Payload"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 99
    .local v1, envelopeData:[B
    if-eqz v1, :cond_0

    .line 102
    invoke-static {v1}, Lcom/google/glass/companion/Proto$Envelope;->parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 103
    .end local v1           #envelopeData:[B
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    goto :goto_0
.end method
