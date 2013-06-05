.class public final Lcom/google/glass/home/LongTapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LongTapReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/home/LongTapReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/LongTapReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static maySearchOnLongTap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 24
    sget-object v1, Lcom/google/glass/home/LongTapReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "com.google.glass.action.LONG_TAP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    sget-object v1, Lcom/google/glass/home/LongTapReceiver;->TAG:Ljava/lang/String;

    const-string v2, "rejected: unexpected action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_UI_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    sget-object v1, Lcom/google/glass/home/LongTapReceiver;->TAG:Ljava/lang/String;

    const-string v2, "rejected: Lab is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/google/glass/home/LongTapReceiver;->maySearchOnLongTap(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 40
    sget-object v1, Lcom/google/glass/home/LongTapReceiver;->TAG:Ljava/lang/String;

    const-string v2, "rejected: may not search"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/search/VoiceSearchActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "called_by_press_to_search"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "should_play_initial_sound"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "trigger_method"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, voiceSearchIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/home/LongTapReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/LongTapReceiver;->setResultCode(I)V

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/home/LongTapReceiver;->abortBroadcast()V

    goto :goto_0
.end method
