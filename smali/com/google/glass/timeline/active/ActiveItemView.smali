.class public abstract Lcom/google/glass/timeline/active/ActiveItemView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "ActiveItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field private item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private parameters:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/active/ActiveItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 0
    .parameter "context"
    .parameter "activityType"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 39
    invoke-direct {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->init()V

    .line 40
    return-void
.end method

.method private static createTimelineItemBuilderForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, itemId:Ljava/lang/String;
    new-instance v2, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 107
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 108
    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 111
    return-object v0
.end method

.method private final init()V
    .locals 3

    .prologue
    .line 44
    sget-object v1, Lcom/google/glass/timeline/active/ActiveItemView;->TAG:Ljava/lang/String;

    const-string v2, "Inflating custom view."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v1, v2}, Lcom/google/glass/timeline/active/ActiveItemView;->createTimelineItemBuilderForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 46
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 47
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->provideContentView()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onViewInflated()V

    .line 50
    return-void
.end method


# virtual methods
.method protected addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 86
    return-void
.end method

.method public getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 76
    return-void
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected onViewInflated()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected abstract provideContentView()I
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    .line 55
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->onParametersChanged(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
