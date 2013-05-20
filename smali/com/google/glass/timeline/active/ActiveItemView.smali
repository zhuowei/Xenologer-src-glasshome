.class public abstract Lcom/google/glass/timeline/active/ActiveItemView;
.super Landroid/widget/LinearLayout;
.source "ActiveItemView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


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
    .line 23
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
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 43
    invoke-direct {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->init()V

    .line 44
    return-void
.end method

.method private static createTimelineItemBuilderForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 138
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, itemId:Ljava/lang/String;
    new-instance v2, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 142
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 143
    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 146
    return-object v0
.end method

.method private final init()V
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lcom/google/glass/timeline/active/ActiveItemView;->TAG:Ljava/lang/String;

    const-string v2, "Inflating custom view."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v1, v2}, Lcom/google/glass/timeline/active/ActiveItemView;->createTimelineItemBuilderForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 50
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 51
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->provideContentView()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onViewInflated()V

    .line 54
    return-void
.end method


# virtual methods
.method protected addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 90
    return-void
.end method

.method public getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 80
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onViewInflated()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected abstract provideContentView()I
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    .line 59
    iget-object v0, p0, Lcom/google/glass/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->onParametersChanged(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
