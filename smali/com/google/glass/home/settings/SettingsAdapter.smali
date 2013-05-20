.class public Lcom/google/glass/home/settings/SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# instance fields
.field private final context:Landroid/app/Activity;

.field private final helper:Lcom/google/glass/util/SettingsHelper;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/settings/SettingsItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/home/settings/SettingsAdapter;->context:Landroid/app/Activity;

    .line 34
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsAdapter;->views:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsAdapter;->items:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/WifiSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 40
    const/4 v0, 0x1

    new-instance v1, Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 43
    const/4 v0, 0x2

    new-instance v1, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 44
    const/4 v0, 0x3

    new-instance v1, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 46
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x4

    new-instance v1, Lcom/google/glass/home/settings/WinkSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/WinkSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 50
    :cond_0
    const/4 v0, 0x5

    new-instance v1, Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 52
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_DEBUG_CARD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x6

    new-instance v1, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 56
    :cond_1
    const/4 v0, 0x7

    new-instance v1, Lcom/google/glass/home/settings/GuestSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/settings/GuestSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/SettingsAdapter;->addView(ILcom/google/glass/home/settings/SettingsItemView;)V

    .line 57
    return-void
.end method

.method private addView(ILcom/google/glass/home/settings/SettingsItemView;)V
    .locals 3
    .parameter "id"
    .parameter "view"

    .prologue
    .line 66
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/settings/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 67
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/home/settings/SettingsItemView;->setTag(ILjava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public static forceLoad(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onLoad"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 97
    .local v0, view:Landroid/view/View;
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 104
    return-void
.end method
