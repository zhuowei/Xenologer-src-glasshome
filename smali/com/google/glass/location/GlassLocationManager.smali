.class public Lcom/google/glass/location/GlassLocationManager;
.super Ljava/lang/Object;
.source "GlassLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/GlassLocationManager$ListenerRecord;,
        Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    }
.end annotation


# static fields
.field public static final EXTRA_LEVEL_ID:Ljava/lang/String; = "levelId"

.field public static final EXTRA_LEVEL_NUMBER_E3:Ljava/lang/String; = "levelNumberE3"

.field public static final EXTRA_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final EXTRA_SATELLITES_USED_IN_FIX:Ljava/lang/String; = "satellites"

.field public static final EXTRA_VISIBLE_SATELLITES:Ljava/lang/String; = "visible_satellites"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/glass/location/GlassLocationManager;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final incoming:Landroid/os/Messenger;

.field private final lastKnownLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/location/GlassLocationManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private nextListenerId:I

.field private outgoing:Landroid/os/Messenger;

.field private final systemLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/HashMap;

    .line 136
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    .line 138
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/GlassLocationManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/location/GlassLocationManager$1;-><init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->incoming:Landroid/os/Messenger;

    .line 145
    new-instance v0, Lcom/google/glass/location/GlassLocationManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GlassLocationManager$2;-><init>(Lcom/google/glass/location/GlassLocationManager;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    .line 160
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    .line 161
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->systemLocationManager:Landroid/location/LocationManager;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/location/GlassLocationManager;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private declared-synchronized connectIfNecessary()V
    .locals 4

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v2, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-ne v1, v2, :cond_0

    .line 167
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening connection to LocationService from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/location/LocationConstants;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService() failed. Remaining disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getInstance()Lcom/google/glass/location/GlassLocationManager;
    .locals 3

    .prologue
    .line 114
    const-class v1, Lcom/google/glass/location/GlassLocationManager;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "GlassLocationManager was not initialised."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {v0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    .line 120
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    return-object v0
.end method

.method private declared-synchronized handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 240
    sget-object v3, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    .line 242
    sget-object v3, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 245
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 246
    .local v2, registration:Landroid/os/Message;
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->incoming:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "name"

    iget-object v4, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 251
    invoke-direct {p0, v2}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(Landroid/os/Message;)V

    .line 254
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 255
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    iget-object v3, v3, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 239
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #i:I
    .end local v2           #registration:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized handleDisconnection()V
    .locals 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 262
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected from LocationService!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 269
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 271
    .local v3, listenerId:I
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 286
    sget-object v6, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled message type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return-void

    .line 273
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    .line 274
    .local v4, location:Landroid/location/Location;
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->snapshotListeners()[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 278
    .local v5, record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    iget-object v6, v5, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v6}, Lcom/google/glass/location/LocationRequest;->getListenerId()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 279
    iget-object v6, v5, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    invoke-interface {v6, v4}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 277
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v0           #arr$:[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 271
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 103
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/location/GlassLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    .line 108
    :cond_0
    return-void
.end method

.method private sendMessage(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "payload"

    .prologue
    .line 297
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(Landroid/os/Message;)V

    .line 300
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v2, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-eq v1, v2, :cond_0

    .line 305
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    .line 322
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 315
    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException sending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->handleDisconnection()V

    .line 320
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    goto :goto_0
.end method

.method public static setInstanceForTest(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 129
    sput-object p0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    .line 130
    return-void
.end method

.method private declared-synchronized snapshotListeners()[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    .locals 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 231
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->TAG:Ljava/lang/String;

    const-string v1, "Disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 233
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 7
    .parameter "provider"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 215
    .local v0, cachedLocation:Landroid/location/Location;
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->systemLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 217
    .local v2, systemLocation:Landroid/location/Location;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 219
    :cond_0
    move-object v1, v2

    .line 225
    .local v1, location:Landroid/location/Location;
    :goto_0
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    monitor-exit p0

    return-object v3

    .line 221
    .end local v1           #location:Landroid/location/Location;
    :cond_1
    move-object v1, v0

    .restart local v1       #location:Landroid/location/Location;
    goto :goto_0

    .line 225
    :cond_2
    :try_start_1
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    .end local v0           #cachedLocation:Landroid/location/Location;
    .end local v1           #location:Landroid/location/Location;
    .end local v2           #systemLocation:Landroid/location/Location;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 205
    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    iget-object v2, v2, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    if-ne v2, p1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    .line 207
    .local v1, record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    const/4 v2, 0x3

    iget-object v3, v1, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v1           #record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_1
    monitor-exit p0

    return-void

    .line 204
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 8
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    new-instance v0, Lcom/google/glass/location/LocationRequest;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget v2, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/LocationRequest;-><init>(IILjava/lang/String;JF)V

    invoke-direct {v7, v0, p5}, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;-><init>(Lcom/google/glass/location/LocationRequest;Landroid/location/LocationListener;)V

    .line 196
    .local v7, record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v0, 0x2

    iget-object v1, v7, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 193
    .end local v7           #record:Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
