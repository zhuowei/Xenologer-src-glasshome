.class Lcom/google/glass/timeline/SpeakableText;
.super Ljava/lang/Object;
.source "SpeakableText.java"


# static fields
.field private static final GET_GLASSWARE_NAME_BLOCK_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/timeline/SpeakableText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/SpeakableText;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "description"
    .parameter "text"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->speakable_text_with_extra_context_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "glasswareName"

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, ""

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->speakable_text_glassware_name_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSpeakableTextWithContext(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lcom/google/glass/timeline/SpeakableText;->getText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, itemText:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/google/glass/timeline/SpeakableText;->formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, text:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 72
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableType()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/google/glass/timeline/SpeakableText;->formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/glass/timeline/SpeakableText;->formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSpeakableTextWithoutContext(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/SpeakableText;->getText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, itemText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    move-object v1, v0

    .line 99
    .local v1, text:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 92
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableType()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    invoke-virtual {p0, v3, p1}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/timeline/SpeakableText;->formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 126
    .local v1, startMs:J
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {p1, p2, v3, v4}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    :goto_0
    return-object v3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/timeline/SpeakableText;->TAG:Ljava/lang/String;

    const-string v4, "Interrupted waiting for glassware name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 131
    const-string v3, ""

    goto :goto_0
.end method

.method public getSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Ljava/lang/String;
    .locals 2
    .parameter "item"
    .parameter "speakExtraContext"

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableTextWithContext(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, text:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableTextWithoutContext(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method getText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
