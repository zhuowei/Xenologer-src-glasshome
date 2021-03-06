.class public Lcom/google/glass/bluetooth/BluetoothAdapterState;
.super Ljava/lang/Object;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->hasBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 81
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 96
    :cond_0
    return-void
.end method
