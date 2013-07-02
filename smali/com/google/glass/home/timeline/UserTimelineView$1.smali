.class Lcom/google/glass/home/timeline/UserTimelineView$1;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "UserTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/UserTimelineView;->createSettingsAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/active/SettingsItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final helper:Lcom/google/glass/util/SettingsHelper;

.field final synthetic this$0:Lcom/google/glass/home/timeline/UserTimelineView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/UserTimelineView;Lcom/google/glass/home/timeline/active/SettingsItemAdapter;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    .line 55
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->helper:Lcom/google/glass/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->getSettingsItemPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$1;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->isSettingsItemId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
