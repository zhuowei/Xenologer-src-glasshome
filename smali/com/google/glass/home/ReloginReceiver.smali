.class public final Lcom/google/glass/home/ReloginReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ReloginReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/home/ReloginReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/ReloginReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method private final hideActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/ReloginReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hiding the relogin active item."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->RELOGIN:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 51
    return-void
.end method

.method private final showActivityIfNecessary(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->RELOGIN:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityService;->isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/home/ReloginReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is already ongoing, not showing the item."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/ReloginReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing the relogin active item."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->RELOGIN:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->RELOGIN:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {p1, v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->goToActiveTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    goto :goto_0
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/home/ReloginReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.glass.action.RELOGIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/home/ReloginReceiver;->showActivityIfNecessary(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v1, "com.google.glass.action.RELOGIN_HIDE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/home/ReloginReceiver;->hideActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/ReloginReceiver;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
