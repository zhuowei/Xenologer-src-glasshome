.class public Lcom/google/glass/phone/PhoneCallTimelineHelper;
.super Ljava/lang/Object;
.source "PhoneCallTimelineHelper.java"


# static fields
.field public static final PHONE_CALL_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    const-string v1, "application/vnd.google-glass.phone-call-proto"

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->PHONE_CALL_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 42
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V

    return-void
.end method

.method private addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    .locals 4
    .parameter "builder"
    .parameter "phoneNumber"

    .prologue
    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 157
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->phone_call_reply_menu_display_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setState(Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    .line 161
    .local v0, replyMenuValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->addValue(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 163
    .end local v0           #replyMenuValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 164
    return-void
.end method


# virtual methods
.method protected formatDuration(J)Ljava/lang/String;
    .locals 14
    .parameter "elapsedMilliseconds"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 203
    const-wide/16 v3, 0x0

    .line 204
    .local v3, hours:J
    const-wide/16 v5, 0x0

    .line 205
    .local v5, minutes:J
    const-wide/16 v7, 0x0

    .line 207
    .local v7, seconds:J
    const-wide/16 v9, 0x3e8

    div-long v0, p1, v9

    .line 209
    .local v0, elapsedSeconds:J
    const-wide/16 v9, 0x3c

    cmp-long v9, v0, v9

    if-ltz v9, :cond_0

    .line 210
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 211
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    .line 213
    :cond_0
    move-wide v7, v0

    .line 215
    const-wide/16 v9, 0x3c

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    .line 216
    const-wide/16 v9, 0x3c

    div-long v3, v5, v9

    .line 217
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    sub-long/2addr v5, v9

    .line 221
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    .line 222
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

    .line 231
    .local v2, formattedText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 224
    .end local v2           #formattedText:Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    .line 225
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

    .line 228
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
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 141
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 144
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
    .line 193
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    return-object v0
.end method

.method protected getUnkownEntity()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 183
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
    .line 52
    new-instance v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method

.method protected sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
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
