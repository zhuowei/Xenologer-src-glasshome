.class public Lcom/google/glass/logging/UserEventHelper;
.super Ljava/lang/Object;
.source "UserEventHelper.java"


# static fields
.field private static final EVENT_TUPLE_ASSIGNMENT:C = '='

.field private static final EVENT_TUPLE_SEPARATOR:C = '|'

.field public static final EXTRA_USER_EVENT:Ljava/lang/String; = "user_event"

.field private static final RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.logging.UserEventService"

.field private static final USER_EVENT_SERVICE_PACKAGE:Ljava/lang/String; = "com.google.glass.logging"


# instance fields
.field private final context:Landroid/content/Context;

.field private final loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isEng()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;Z)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "loggingEnabled"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/glass/logging/UserEventHelper;->context:Landroid/content/Context;

    .line 76
    iput-boolean p2, p0, Lcom/google/glass/logging/UserEventHelper;->loggingEnabled:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/UserEventHelper;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->logInternal(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "data"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 252
    :goto_1
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "builder"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 223
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 224
    invoke-static {p1}, Lcom/google/glass/logging/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p2}, Lcom/google/glass/logging/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method private collectPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 10

    .prologue
    .line 139
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBoardTemperature()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryStateOfChargeUah()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryStateOfChargeMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryChargeWhenFullUah()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryChargeWhenFullMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryTemperature()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getTotalBytesSent()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    .line 147
    .local v0, builder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 148
    .local v1, cpuFrequencyTime:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v1}, Lcom/google/glass/logging/PerformanceUtil;->getFrequencyStats(Ljava/util/Map;)V

    .line 149
    const-wide/16 v4, 0x0

    .line 150
    .local v4, totalCpuTime:J
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setFrequencyHz(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setDurationMs(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->addFrequencyStat(Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 157
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 158
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v6

    return-object v6
.end method

.method public static varargs createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "args"

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter "key"
    .parameter "value"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    const-string v3, "null key"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "invalid number of key/value arguments (%s"

    new-array v7, v4, [Ljava/lang/Object;

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/glass/logging/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 205
    aget-object v3, p2, v1

    const-string v6, "null key (vararg %s)"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, keyObj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v2

    .line 207
    check-cast p0, Ljava/lang/String;

    .line 209
    add-int/lit8 v3, v1, 0x1

    aget-object p1, p2, v3

    .line 210
    invoke-static {v0, p0, p1}, Lcom/google/glass/logging/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #keyObj:Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 197
    goto :goto_0

    .line 213
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_1
    return-object v0
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/16 v2, 0x7c

    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 276
    .local v0, length:I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    return-void
.end method

.method private logInternal(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 114
    iget-boolean v2, p0, Lcom/google/glass/logging/UserEventHelper;->loggingEnabled:Z

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not logging user event as logging is disabled [action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v2, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging user event [action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/logging/UserEventHelper;->collectPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setPerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v1

    .line 125
    .local v1, userEvent:Lcom/google/common/logging/GlassUserEventProto$Builder;
    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {v1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 129
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.google.glass.logging"

    const-string v3, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "user_event"

    invoke-virtual {v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/google/glass/logging/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 267
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/logging/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public log(Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/logging/UserEventHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/logging/UserEventHelper$1;-><init>(Lcom/google/glass/logging/UserEventHelper;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
