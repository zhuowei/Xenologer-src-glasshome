.class public Lcom/google/glass/bluetooth/BluetoothTetheringState;
.super Ljava/lang/Object;
.source "BluetoothTetheringState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Landroid/bluetooth/BluetoothProfile;

.field private final serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final waitingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->$assertionsDisabled:Z

    .line 22
    const-class v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->TAG:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 80
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 101
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    .line 103
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    .line 105
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 106
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->getState()I

    move-result v0

    return v0
.end method

.method private getState()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 140
    sget-boolean v2, Lcom/google/glass/bluetooth/BluetoothTetheringState;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 144
    .local v0, state:I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 148
    :cond_1
    return v0

    .line 142
    .end local v0           #state:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->getState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_1
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 137
    :cond_0
    return-void
.end method
