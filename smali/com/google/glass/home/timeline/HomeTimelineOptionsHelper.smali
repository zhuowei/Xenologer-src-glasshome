.class public Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;
.super Lcom/google/glass/timeline/TimelineOptionsHelper;
.source "HomeTimelineOptionsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V
    .locals 1
    .parameter "activity"
    .parameter "iconProvider"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getGlassActivity()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 1
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 3
    .parameter "updatedItem"
    .parameter "userAction"
    .parameter "menuItem"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 101
    .local v0, isCompanionwareItem:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 103
    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v1, p1, p2}, Lcom/google/glass/home/companion/CompanionHelper;->sendApiResponse(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;)Z

    .line 104
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/MenuItem;->getRemoveWhenSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 99
    .end local v0           #isCompanionwareItem:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    .restart local v0       #isCompanionwareItem:Z
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_1
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 7
    .parameter "timelineItem"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->RETRY_REPLY:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .local v1, sent:Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$string;->voice_message_send_retrying:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;

    invoke-direct {v4, p0, v1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 72
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 73
    new-instance v3, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 92
    .end local v0           #dialog:Lcom/google/glass/widget/MessageDialog;
    .end local v1           #sent:Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v2

    goto :goto_0
.end method
