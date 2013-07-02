.class public Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;
.super Lcom/google/glass/home/timeline/TimelineActivity;
.source "EntityFilteredTimelineActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clutchReleaseReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

.field private heyVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field private remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private timelineLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation
.end field

.field private timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->clutchReleaseReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)Lcom/google/glass/home/timeline/EntityFilteredTimelineView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->heyVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;Lcom/google/glass/logging/UserEventAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    return-void
.end method

.method private initTimelineView()V
    .locals 7

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->stopTimelineLoaders()V

    .line 138
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 139
    .local v0, contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getEntityToFilterOn()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 143
    .local v1, filterEntity:Lcom/google/googlex/glass/common/proto/Entity;
    new-instance v5, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "entityImage"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v5, p0, v1, v4}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    .line 145
    iget-object v4, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getNotificationState()Lcom/google/glass/home/timeline/NotificationState;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 148
    iget-object v4, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    new-instance v5, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;

    invoke-direct {v5, p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->addPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 176
    iget-object v4, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v4, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Loader;

    .line 179
    .local v3, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v3}, Landroid/content/Loader;->startLoading()V

    goto :goto_0

    .line 181
    .end local v3           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    return-void
.end method

.method private stopTimelineLoaders()V
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Loader;

    .line 187
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v1}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 189
    .end local v1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 191
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getEntityToFilterOn()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filterEntity"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 95
    .local v2, filterEntityBytes:[B
    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    invoke-static {v2}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not parse filterEntity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->heyVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<*",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getEntityToFilterOn()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 76
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;Z)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 78
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_context_item_message_person:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->getFirstName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->heyVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 81
    invoke-direct {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->initTimelineView()V

    .line 82
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->overridePendingTransition(II)V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->stopTimelineLoaders()V

    .line 198
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .parameter "dismissAction"

    .prologue
    .line 123
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->FILTERED_TIMELINE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "p"

    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->clutchReleaseReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->clutchReleaseReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Lcom/google/glass/util/ClutchHelper;->createBroadcastIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 112
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 208
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "loc"

    const-string v2, "t"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    iget-object v1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/EntityHelper;->startSendMessageToPersonActivity(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/Entity;)Z

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/google/glass/home/R$layout;->timeline_activity:I

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
