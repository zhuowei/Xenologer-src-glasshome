.class public Lcom/google/glass/logging/UserEventHelper;
.super Ljava/lang/Object;
.source "UserEventHelper.java"


# static fields
.field private static final EVENT_TUPLE_ASSIGNMENT:C = '='

.field private static final EVENT_TUPLE_SEPARATOR:C = '|'

.field public static final EXTRA_FORCE_FLUSH:Ljava/lang/String; = "force_flush"

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
    .line 25
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
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

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
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->logInternal(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/logging/UserEventHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventHelper;->flushInternal()V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "data"

    .prologue
    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 261
    :goto_1
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 259
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
    .line 232
    invoke-static {p0}, Lcom/google/glass/logging/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 233
    invoke-static {p1}, Lcom/google/glass/logging/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {p2}, Lcom/google/glass/logging/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    return-void
.end method

.method public static varargs createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "args"

    .prologue
    .line 195
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

    .line 205
    const-string v3, "null key"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
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

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/glass/logging/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 214
    aget-object v3, p2, v1

    const-string v6, "null key (vararg %s)"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, keyObj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v2

    .line 216
    check-cast p0, Ljava/lang/String;

    .line 218
    add-int/lit8 v3, v1, 0x1

    aget-object p1, p2, v3

    .line 219
    invoke-static {v0, p0, p1}, Lcom/google/glass/logging/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #keyObj:Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 206
    goto :goto_0

    .line 222
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_1
    return-object v0
.end method

.method static createProto(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 159
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    .line 163
    .local v0, userEvent:Lcom/google/common/logging/GlassUserEventProto$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    return-object v1
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/16 v2, 0x7c

    .line 284
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 285
    .local v0, length:I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    return-void
.end method

.method private flushInternal()V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 142
    iget-boolean v1, p0, Lcom/google/glass/logging/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    const-string v2, "Not flushing user events as logging is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v1, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    const-string v2, "Flushing user events."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "force_flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/google/glass/logging/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private logInternal(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 114
    iget-boolean v1, p0, Lcom/google/glass/logging/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 115
    sget-object v1, Lcom/google/glass/logging/UserEventHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not logging user event as logging is disabled: [action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "user_event"

    invoke-static {p1, p2}, Lcom/google/glass/logging/UserEventHelper;->createProto(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/google/glass/logging/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 276
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
.method public flush()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/logging/UserEventHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventHelper$2;-><init>(Lcom/google/glass/logging/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

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
