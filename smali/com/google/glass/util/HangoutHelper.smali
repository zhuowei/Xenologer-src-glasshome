.class public Lcom/google/glass/util/HangoutHelper;
.super Ljava/lang/Object;
.source "HangoutHelper.java"


# static fields
.field public static final ACTION_EXIT_HANGOUTS:Ljava/lang/String; = "com.google.glass.action.EXIT_HANGOUTS"

.field public static final ACTION_HANGOUTS:Ljava/lang/String; = "com.google.glass.action.HANGOUTS"

.field public static final ACTION_HANGOUT_STATUS:Ljava/lang/String; = "com.google.glass.action.HANGOUT_STATUS"

.field public static final EXTRA_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final EXTRA_HANGOUT_INVITEE:Ljava/lang/String; = "_invitee"

.field public static final EXTRA_HANGOUT_INVITER:Ljava/lang/String; = "inviter"

.field public static final EXTRA_INCOMING_ACTION:Ljava/lang/String; = "hangoutAction"

.field public static final EXTRA_INCOMING_SOURCE:Ljava/lang/String; = "hangoutSource"

.field public static final EXTRA_INCOMING_TYPE:Ljava/lang/String; = "hangoutType"

.field public static final EXTRA_INVITED:Ljava/lang/String; = "invited"

.field public static final EXTRA_PARTICIPATING:Ljava/lang/String; = "participating"

.field public static final EXTRA_ROOM_ID:Ljava/lang/String; = "room_id"

.field private static final HANGOUT_BASE_URL:Ljava/lang/String; = "https://plus.google.com/hangouts/_/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static buildHangoutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "roomId"

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://plus.google.com/hangouts/_/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateIntent(Lcom/google/googlex/glass/common/proto/Entity;Z)Landroid/content/Intent;
    .locals 2
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.HANGOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v1, "_invitee"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    return-object v0
.end method


# virtual methods
.method public bringHangoutToForeground()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "Bringing hangout to foreground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.HANGOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v1, "foreground"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public broadcastHangoutExited()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 97
    iget-object v1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public broadcastHangoutJoined()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "participating"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public exitOngoingHangout()V
    .locals 3

    .prologue
    .line 122
    sget-object v1, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "Exiting hangout."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.EXIT_HANGOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, exitIntent:Landroid/content/Intent;
    const-string v1, "foreground"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public isInHangout()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, stickyIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "participating"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;Z)V
    .locals 1
    .parameter "roomId"
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;ZZ)V

    .line 115
    return-void
.end method

.method public joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;ZZ)V
    .locals 4
    .parameter "roomId"
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"
    .parameter "joinFromInvitation"

    .prologue
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Joining Hangout roomId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, logMessage:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_0
    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/google/glass/util/HangoutHelper;->generateIntent(Lcom/google/googlex/glass/common/proto/Entity;Z)Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v2, "room_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "invited"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public startHangout(Lcom/google/googlex/glass/common/proto/Entity;Z)V
    .locals 4
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 104
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hanging out with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/HangoutHelper;->generateIntent(Lcom/google/googlex/glass/common/proto/Entity;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
