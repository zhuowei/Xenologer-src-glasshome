.class public Lcom/google/glass/ongoing/OngoingActivityService;
.super Landroid/app/Service;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;,
        Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;


# instance fields
.field private final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final binders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final incoming:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/ongoing/OngoingActivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/ongoing/OngoingActivityService$1;-><init>(Lcom/google/glass/ongoing/OngoingActivityService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->incoming:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/ongoing/OngoingActivityService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityService;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/ongoing/OngoingActivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityService;->handleConnectionLost(I)V

    return-void
.end method

.method public static addListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 122
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I
    .locals 3
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 201
    .local v1, record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    #getter for: Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I
    invoke-static {v1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$500(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I

    move-result v2

    if-ne v2, p1, :cond_0

    #getter for: Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    invoke-static {v1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 205
    .end local v0           #i:I
    .end local v1           #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :goto_1
    return v0

    .line 199
    .restart local v0       #i:I
    .restart local v1       #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1           #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private fireActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 225
    .local v3, listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v3           #listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 231
    .local v3, listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v3           #listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private fireActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 237
    .local v3, listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v3, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v3           #listener:Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    .locals 3

    .prologue
    .line 242
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    monitor-exit v1

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 67
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    iget-object v0, v0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    new-array v1, v1, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    goto :goto_0
.end method

.method private handleConnectionLost(I)V
    .locals 7
    .parameter "pid"

    .prologue
    .line 209
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection lost to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v3, removedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;>;"
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 212
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    #getter for: Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I
    invoke-static {v4}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$500(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 213
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 219
    .local v0, activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_1

    .line 221
    .end local v0           #activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_2
    return-void
.end method

.method private handleHideMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 2
    .parameter "pid"
    .parameter "msg"

    .prologue
    .line 192
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 193
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-direct {p0, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 196
    :cond_0
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 142
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 144
    .local v3, pid:I
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 145
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registered client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    .local v0, clientBinder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :try_start_0
    new-instance v4, Lcom/google/glass/ongoing/OngoingActivityService$2;

    invoke-direct {v4, p0, v3}, Lcom/google/glass/ongoing/OngoingActivityService$2;-><init>(Lcom/google/glass/ongoing/OngoingActivityService;I)V

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #clientBinder:Landroid/os/IBinder;
    :goto_0
    return-void

    .line 157
    .restart local v0       #clientBinder:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/google/glass/ongoing/OngoingActivityService;->handleConnectionLost(I)V

    goto :goto_0

    .line 161
    .end local v0           #clientBinder:Landroid/os/IBinder;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 162
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/ongoing/OngoingActivityMessage;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/ongoing/OngoingActivityMessage;

    move-result-object v2

    .line 163
    .local v2, ongoingMsg:Lcom/google/glass/ongoing/OngoingActivityMessage;
    if-eqz v2, :cond_2

    .line 164
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handing update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getOperation()Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    move-result-object v4

    sget-object v5, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    if-ne v4, v5, :cond_1

    .line 166
    invoke-direct {p0, v3, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->handleShowMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->handleHideMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V

    goto :goto_0

    .line 171
    :cond_2
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to parse update message"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v2           #ongoingMsg:Lcom/google/glass/ongoing/OngoingActivityMessage;
    :cond_3
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleShowMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 5
    .parameter "pid"
    .parameter "msg"

    .prologue
    .line 179
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v1

    .line 180
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 182
    .local v0, activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getParams()Landroid/os/Bundle;

    move-result-object v2

    #setter for: Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;
    invoke-static {v0, v2}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$302(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 183
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 189
    :goto_0
    return-void

    .line 185
    .end local v0           #activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;-><init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;Lcom/google/glass/ongoing/OngoingActivityService$1;)V

    .line 186
    .restart local v0       #activity:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_0
.end method

.method public static isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z
    .locals 5
    .parameter "activity"

    .prologue
    .line 75
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 76
    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityService;->getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 77
    .local v3, record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    #getter for: Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    invoke-static {v3}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const/4 v4, 0x1

    .line 81
    .end local v3           #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :goto_1
    return v4

    .line 76
    .restart local v3       #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3           #record:Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static removeListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 132
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 101
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sput-object p0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    .line 117
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    return-void
.end method
