.class public Lcom/google/glass/util/InetConnectionState;
.super Ljava/lang/Object;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/InetConnectionState$Listener;
    }
.end annotation


# static fields
.field private static final EXTRA_INET_CONDITION:Ljava/lang/String; = null

.field private static final INET_CONDITION_ACTION:Ljava/lang/String; = null

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/util/InetConnectionState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private prevState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/google/glass/util/HiddenApiHelper;->getConnectivityManagerInetConditionAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->INET_CONDITION_ACTION:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/google/glass/util/HiddenApiHelper;->getConnectivityManagerExtraInetCondition()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->EXTRA_INET_CONDITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/InetConnectionState$1;-><init>(Lcom/google/glass/util/InetConnectionState;)V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    .line 64
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/InetConnectionState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/util/InetConnectionState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/util/InetConnectionState;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 5
    .parameter "l"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    .line 77
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-boolean v0, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    invoke-interface {p1, v0}, Lcom/google/glass/util/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/glass/util/InetConnectionState;->INET_CONDITION_ACTION:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v5, Lcom/google/glass/util/InetConnectionState;->INET_CONDITION_ACTION:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 102
    sget-object v2, Lcom/google/glass/util/InetConnectionState;->EXTRA_INET_CONDITION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 90
    :cond_0
    return-void
.end method
