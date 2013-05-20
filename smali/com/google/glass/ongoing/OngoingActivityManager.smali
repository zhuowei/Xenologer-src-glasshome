.class public Lcom/google/glass/ongoing/OngoingActivityManager;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;,
        Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;,
        Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    }
.end annotation


# static fields
.field static final MSG_REGISTER:I = 0x1

.field static final MSG_UPDATE:I = 0x2

.field static final ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/glass/ongoing/OngoingActivityManager;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final connectionLock:Ljava/lang/Object;

.field private connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final incoming:Landroid/os/Messenger;

.field private final messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

.field private final ongoingActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;",
            "Lcom/google/glass/ongoing/OngoingActivityMessage;",
            ">;"
        }
    .end annotation
.end field

.field private outgoing:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.ongoing.OngoingActivityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V
    .locals 2
    .parameter "context"
    .parameter "messengerFactory"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 100
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/ongoing/OngoingActivityManager$2;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    .line 121
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private connectIfNecessary()V
    .locals 5

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    if-ne v1, v3, :cond_0

    .line 171
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening connection to OngoingActivityService from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTING:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 181
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 182
    return-void

    .line 178
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    const-string v3, "bindService() failed."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static createForTest(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 1
    .parameter "context"
    .parameter "factory"

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 86
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 68
    const-class v2, Lcom/google/glass/ongoing/OngoingActivityManager;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityManager;

    new-instance v3, Lcom/google/glass/ongoing/OngoingActivityManager$1;

    invoke-direct {v3}, Lcom/google/glass/ongoing/OngoingActivityManager$1;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    sput-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 78
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    .line 80
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 186
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v5, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    invoke-interface {v4, p2}, Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;->create(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 189
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 191
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 192
    .local v3, registration:Landroid/os/Message;
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    const-string v6, "Sending registration request"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    iget-object v5, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v5

    .line 203
    :try_start_3
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .local v2, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_start_4
    invoke-direct {p0, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 210
    .end local v2           #message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    :cond_0
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    return-void

    .line 196
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #registration:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 210
    .restart local v3       #registration:Landroid/os/Message;
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4
.end method

.method private handleDisconnection()V
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected from OngoingActivityService!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 235
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    .line 238
    throw v0
.end method

.method private sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 157
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 165
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 4
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, androidMessage:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V

    .line 228
    return-void
.end method


# virtual methods
.method public hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 145
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 146
    .local v0, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "params"

    .prologue
    .line 132
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 133
    .local v0, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
