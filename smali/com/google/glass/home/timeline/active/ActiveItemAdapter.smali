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

.field private notificationState:Lcom/google/glass/home/timeline/NotificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/google/glass/home/timeline/NotificationState;)V
    .locals 2
    .parameter "context"
    .parameter "isGuestMode"
    .parameter "notificationState"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    .line 59
    iput-boolean p2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->isGuestMode:Z

    .line 60
    iput-object p3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    .line 63
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/timeline/active/ActiveItemView;
    .locals 2
    .parameter "type"

    .prologue
    .line 248
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$2;->$SwitchMap$com$google$glass$ongoing$OngoingActivityManager$ActivityType:[I

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    new-instance v0, Lcom/google/glass/home/timeline/active/HangoutItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/HangoutItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 252
    :pswitch_1
    new-instance v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/HomeItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :pswitch_2
    new-instance v0, Lcom/google/glass/home/timeline/active/NavigationItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/NavigationItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 256
    :pswitch_3
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/CallItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :pswitch_4
    new-instance v0, Lcom/google/glass/home/timeline/active/ReloginView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/ReloginView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 260
    :pswitch_5
    new-instance v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    .end local v0           #i:I
    :goto_1
    return v0

    .line 184
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 6
    .parameter "activityType"
    .parameter "params"

    .prologue
    .line 73
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    .local v0, isHome:Z
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    .local v1, isNav:Z
    iget-boolean v3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->isGuestMode:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 76
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

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->PHONE_CALL:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    sget-object v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Tried to add a phone call active item, but Phone Call lab is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
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

    .line 88
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/timeline/active/ActiveItemView;

    move-result-object v2

    .line 89
    .local v2, view:Lcom/google/glass/timeline/active/ActiveItemView;
    invoke-virtual {v2, p2}, Lcom/google/glass/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 90
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V
    .locals 5
    .parameter "activityType"
    .parameter "goHome"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 111
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    .line 113
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

    .line 115
    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->onUnload()V

    .line 116
    invoke-virtual {v1}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 117
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;

    new-instance v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;-><init>(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    .end local v1           #oldView:Lcom/google/glass/timeline/active/ActiveItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 9

    .prologue
    .line 209
    sget-object v7, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v8, "Activating adapter."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v6, newActivityTypes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;>;"
    sget-object v7, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
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

    .line 215
    .local v0, activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 222
    :goto_1
    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_1

    .line 225
    .end local v0           #activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 226
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {v7}, Lcom/google/glass/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 227
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

    .line 225
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 231
    :cond_3
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->addListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 232
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Deactivating adapter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->removeListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 238
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 142
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
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMostRelevantItemPosition()I
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getHomePosition()I

    move-result v0

    .line 201
    .local v0, homePosition:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 202
    add-int/lit8 v0, v0, -0x1

    .line 204
    .end local v0           #homePosition:I
    :cond_0
    return v0
.end method

.method public getPositionForItemId(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->convertToEnum(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/active/ActiveItemView;

    .line 153
    .local v2, view:Lcom/google/glass/timeline/active/ActiveItemView;
    invoke-virtual {v2}, Lcom/google/glass/timeline/active/ActiveItemView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 156
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 159
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v2, v3, p0}, Lcom/google/glass/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 161
    sget v3, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/active/ActiveItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, timestampView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 163
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 166
    :cond_0
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    .line 107
    return-void
.end method

.method public onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 97
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
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

    .line 99
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/active/ActiveItemView;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 171
    return-void
.end method
