.class public Lcom/google/glass/home/settings/SettingsTimelineView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "SettingsTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/googlex/glass/common/proto/TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Lcom/google/glass/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/SettingsTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/SettingsTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 29
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsTimelineView;->helper:Lcom/google/glass/util/SettingsHelper;

    .line 30
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Integer;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/SettingsTimelineView;->findIdPosition(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsTimelineView;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->getSettingsItemPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/SettingsTimelineView;->findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineItem;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 55
    return-void
.end method
