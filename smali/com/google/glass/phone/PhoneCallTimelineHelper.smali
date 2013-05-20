.class public Lcom/google/glass/phone/PhoneCallTimelineHelper;
.super Ljava/lang/Object;
.source "PhoneCallTimelineHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 35
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V

    return-void
.end method

.method private static addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "phoneNumber"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 123
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 124
    return-void
.end method


# virtual methods
.method protected formatDuration(J)Ljava/lang/String;
    .locals 14
    .parameter "elapsedMilliseconds"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 163
    const-wide/16 v3, 0x0

    .line 164
    .local v3, hours:J
    const-wide/16 v5, 0x0

    .line 165
    .local v5, minutes:J
    const-wide/16 v7, 0x0

    .line 167
    .local v7, seconds:J
    const-wide/16 v9, 0x3e8

    div-long v0, p1, v9

    .line 169
    .local v0, elapsedSeconds:J
    const-wide/16 v9, 0x3c

    cmp-long v9, v0, v9

    if-ltz v9, :cond_0

    .line 170
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 171
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    .line 173
    :cond_0
    move-wide v7, v0

    .line 175
    const-wide/16 v9, 0x3c

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    .line 176
    const-wide/16 v9, 0x3c

    div-long v3, v5, v9

    .line 177
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    sub-long/2addr v5, v9

    .line 181
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    .line 182
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_hours_minutes_seconds:I

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, formattedText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 184
    .end local v2           #formattedText:Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    .line 185
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_minutes_seconds:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedText:Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v2           #formattedText:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_seconds:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedText:Ljava/lang/String;
    goto :goto_0
.end method

.method public getNameFromEntity(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 112
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    return-object v0
.end method

.method protected getUnkownEntity()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public insertCallAsync(Lcom/google/glass/phone/PhoneCall;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 45
    new-instance v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method protected sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getUnkownEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object p1

    goto :goto_0
.end method
