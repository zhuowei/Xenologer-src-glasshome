.class public Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;
.super Lcom/google/glass/timeline/TimelineOptionsHelper;
.source "HomeTimelineOptionsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

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
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getGlassActivity()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 42
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 43
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
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method


# virtual methods
.method protected addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 1
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 8
    .parameter "timelineItem"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 55
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 58
    .local v1, error:Lcom/google/glass/app/GlassError;
    sget v4, Lcom/google/glass/home/R$string;->error_no_myglass_connection:I

    invoke-virtual {v1, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->error_suggestion_connect_myglass:I

    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 60
    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v4}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 61
    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 114
    .end local v1           #error:Lcom/google/glass/app/GlassError;
    :goto_0
    return v3

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->RETRY_REPLY:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 69
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 70
    .local v2, sent:Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v5, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$string;->voice_message_send_retrying:I

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 84
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 85
    new-instance v4, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 114
    .end local v0           #dialog:Lcom/google/glass/widget/MessageDialog;
    .end local v2           #sent:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v3

    goto :goto_0
.end method
