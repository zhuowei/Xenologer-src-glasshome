.class Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;
.super Landroid/os/Handler;
.source "CompanionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompanionConnectionHandler"
.end annotation


# instance fields
.field private final service:Lcom/google/glass/home/companion/CompanionService;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/util/WifiHelper;)V
    .locals 1
    .parameter "service"
    .parameter "wifiHelper"

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/google/glass/home/companion/CompanionService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    .line 101
    iput-object p2, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;)Lcom/google/glass/home/companion/CompanionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method

.method private handleLocationFromCompanion(Lcom/google/glass/companion/Proto$LocationMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/location/LocationDelivery;->deliver(Lcom/google/glass/companion/Proto$LocationMessage;Landroid/location/LocationListener;)V

    .line 152
    return-void
.end method

.method private handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V
    .locals 1
    .parameter "item"
    .parameter "itemType"

    .prologue
    .line 106
    new-instance v0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;-><init>(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private handleTimelineItemResponse(Lcom/google/glass/companion/Proto$TimelineItemResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/home/companion/CompanionHelper;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method private setupGlassWifi(Ljava/lang/String;)V
    .locals 3
    .parameter "wifiInfo"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionService;->wakeupScreen()V

    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    const-class v2, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const-string v1, "join"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    :cond_0
    const-string v1, "wifi_setup_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/companion/CompanionService;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private showMessageFromCompanion(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 155
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion gave us a message to show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private startNavigationFromCompanion(Lcom/google/glass/companion/Proto$NavigationRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 160
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Companion is starting navigation to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionService;->wakeupScreen()V

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/companion/CompanionService;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 184
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 225
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled companion message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    sget-object v2, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->SMS_RECEIVED:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {p0, v1}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->handleTimelineItemResponse(Lcom/google/glass/companion/Proto$TimelineItemResponse;)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {p0, v1}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->handleLocationFromCompanion(Lcom/google/glass/companion/Proto$LocationMessage;)V

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->showMessageFromCompanion(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {p0, v1}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->startNavigationFromCompanion(Lcom/google/glass/companion/Proto$NavigationRequest;)V

    goto :goto_0

    .line 214
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->setupGlassWifi(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 220
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/home/companion/CompanionService;->handle(Lcom/google/glass/companion/Proto$Envelope;J)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
