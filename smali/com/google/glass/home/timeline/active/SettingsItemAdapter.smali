.class public Lcom/google/glass/home/timeline/active/SettingsItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsItemAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# static fields
.field public static final COVER_INDEX:I = 0x0

.field private static final NUMBER_OF_ITEMS:I = 0x1


# instance fields
.field private final item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final view:Lcom/google/glass/home/timeline/active/SettingsCoverView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v1, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, id:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 34
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->view:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    .line 35
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->view:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v1, v2, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->setTag(ILjava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->view:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->setTag(ILjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;->view:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 75
    return-void
.end method
