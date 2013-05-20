.class public Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveItemAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;
.implements Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/ActiveItemAdapter$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/app/Activity;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/timeline/active/ActiveItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final isGuestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "context"
    .parameter "isGuestMode"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    .line 49
    iput-boolean p2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->isGuestMode:Z

    .line 52
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/timeline/active/ActiveItemView;
    .locals 2
    .parameter "type"

    .prologue
    .line 233
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$2;->$SwitchMap$com$google$glass$ongoing$OngoingActivityManager$ActivityType:[I

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    new-instance v0, Lcom/google/glass/home/timeline/active/HangoutItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/HangoutItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :pswitch_1
    new-instance v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/HomeItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 239
    :pswitch_2
    new-instance v0, Lcom/google/glass/home/timeline/active/NavigationItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/NavigationItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 241
    :pswitch_3
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/CallItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 243
    :pswitch_4
    new-instance v0, Lcom/google/glass/home/timeline/active/ReloginView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/ReloginView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    .end local v0           #i:I
    :goto_1
    return v0

    .line 169
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 6
    .parameter "activityType"
    .parameter "params"

    .prologue
    .line 63
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, isHome:Z
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    .local v1, isNav:Z
    iget-boolean v3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->isGuestMode:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 66
    sget-object v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; only home/clock and Nav allowed in guest mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->PHONE_CALL:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    sget-object v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Tried to add a phone call active item, but Phone Call lab is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    sget-object v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/timeline/active/ActiveItemView;

    move-result-object v2

    .line 79
    .local v2, view:Lcom/google/glass/timeline/active/ActiveItemView;
    invoke-virtual {v2, p2}, Lcom/google/glass/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 80
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V
    .locals 5
    .parameter "activityType"
    .parameter "goHome"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 101
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    .line 103
    .local v1, oldView:Lcom/google/glass/timeline/active/ActiveItemView;
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " left),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " going home? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->onUnload()V

    .line 106
    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 107
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    new-instance v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;-><init>(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    .end local v1           #oldView:Lcom/google/glass/timeline/active/ActiveItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 9

    .prologue
    .line 194
    sget-object v7, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v8, "Activating adapter."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 198
    .local v6, newActivityTypes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;>;"
    sget-object v7, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityService;->getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    move-result-object v1

    .local v1, arr$:[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 200
    .local v0, activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 207
    :goto_1
    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_1

    .line 210
    .end local v0           #activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 211
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v7}, Lcom/google/glass/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v7}, Lcom/google/glass/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    move v2, v3

    .line 210
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    :cond_3
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->addListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 217
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Deactiviting adapter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->removeListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 223
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v0}, Lcom/google/glass/timeline/active/ActiveItemView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 137
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMostRelevantItemPosition()I
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getHomePosition()I

    move-result v0

    .line 186
    .local v0, homePosition:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 187
    add-int/lit8 v0, v0, -0x1

    .line 189
    .end local v0           #homePosition:I
    :cond_0
    return v0
.end method

.method public getPositionForItemId(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 165
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->convertToEnum(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    .line 143
    .local v1, view:Lcom/google/glass/timeline/active/ActiveItemView;
    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 146
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 149
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v1, v2, p0}, Lcom/google/glass/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 151
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    .line 97
    return-void
.end method

.method public onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 87
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    sget-object v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 156
    return-void
.end method
