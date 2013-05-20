.class public Lcom/google/glass/home/HomeApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "HomeApplication.java"


# static fields
.field private static final DEFAULT_RETRY_TIME_MS:J

.field private static final MAX_RETRY_DELAY_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private companionService:Lcom/google/glass/home/companion/CompanionService;

.field private companionState:Lcom/google/glass/home/companion/CompanionState;

.field private final locationCompanionListener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;

.field private locationService:Lcom/google/glass/location/LocationService;

.field private final retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    .line 175
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/HomeApplication;->MAX_RETRY_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 65
    new-instance v0, Lcom/google/glass/home/HomeApplication$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$1;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationCompanionListener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    .line 89
    new-instance v0, Lcom/google/glass/home/companion/CompanionState;

    invoke-direct {v0}, Lcom/google/glass/home/companion/CompanionState;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;

    .line 91
    new-instance v0, Lcom/google/glass/home/HomeApplication$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$2;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    .line 117
    new-instance v0, Lcom/google/glass/home/HomeApplication$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$3;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 154
    new-instance v0, Lcom/google/glass/home/HomeApplication$4;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$4;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 179
    new-instance v0, Lcom/google/glass/home/HomeApplication$5;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$5;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->enableConnectivityEstablishedSync(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->onServiceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 61
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->registerGcm()V

    return-void
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 61
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->MAX_RETRY_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->enablePowerConnectedSync(Landroid/accounts/Account;)V

    return-void
.end method

.method private disableLockscreen()V
    .locals 5

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.disabled"

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v1, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enableConnectivityEstablishedSync(Landroid/accounts/Account;)V
    .locals 2
    .parameter "primaryAccount"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/HomeApplication$8;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/HomeApplication$8;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 342
    return-void
.end method

.method private enablePowerConnectedSync(Landroid/accounts/Account;)V
    .locals 3
    .parameter "primaryAccount"

    .prologue
    .line 309
    new-instance v0, Lcom/google/glass/home/HomeApplication$7;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/HomeApplication$7;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/home/HomeApplication;

    if-eqz v1, :cond_0

    .line 301
    check-cast v0, Lcom/google/glass/home/HomeApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 303
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the HomeApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onAccountReady(Landroid/accounts/Account;)V
    .locals 2
    .parameter "primaryAccount"

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/HomeApplication$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/HomeApplication$6;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method private onServiceConnected()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->locationCompanionListener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/companion/CompanionService;->addCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V

    .line 439
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0, v1}, Lcom/google/glass/location/LocationService;->setLocationProxy(Lcom/google/glass/location/LocationProxy;)V

    .line 441
    :cond_0
    return-void
.end method

.method private registerGcm()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/google/glass/home/HomeApplication$9;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$9;-><init>(Lcom/google/glass/home/HomeApplication;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method


# virtual methods
.method public getCompanionService()Lcom/google/glass/home/companion/CompanionService;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method

.method public getCompanionState()Lcom/google/glass/home/companion/CompanionState;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;

    return-object v0
.end method

.method public isNavigationAllowed()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_NO_COMPANION:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 223
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 225
    invoke-static {p0}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone(Landroid/content/Context;)V

    .line 226
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->disableLockscreen()V

    .line 229
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, authUtils:Lcom/google/glass/util/AuthUtils;
    invoke-virtual {v0}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 231
    .local v1, primaryAccount:Landroid/accounts/Account;
    if-nez v1, :cond_1

    .line 232
    sget-object v4, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v5, "No Google account available. Reverting to setup, NOT rebooting."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, reboot:Z
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/glass/util/AuthUtils;->restartSetupProcess(Z)V

    .line 240
    .end local v2           #reboot:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/google/glass/home/HomeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/location/LocationService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v7}, Lcom/google/glass/home/HomeApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 249
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v7}, Lcom/google/glass/home/HomeApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 252
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v3, screenOnOffIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    invoke-static {p0}, Lcom/google/glass/home/timeline/TimelineNotificationManager;->initialize(Lcom/google/glass/home/HomeApplication;)V

    .line 258
    invoke-static {p0}, Lcom/google/glass/home/ScreenOffService;->initialize(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 260
    invoke-static {p0}, Lcom/google/glass/util/StorageHelper;->initializeThresholds(Landroid/content/Context;)V

    .line 261
    return-void

    .line 236
    .end local v3           #screenOnOffIntentFilter:Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method public registerCompanionHandler(JLcom/google/glass/home/companion/MessageHandler;)Z
    .locals 2
    .parameter "replyableId"
    .parameter "messageHandler"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    .line 423
    .local v0, companionServiceCopy:Lcom/google/glass/home/companion/CompanionService;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/home/companion/CompanionService;->registerCompanionHandler(JLcom/google/glass/home/companion/MessageHandler;)V

    .line 425
    const/4 v1, 0x1

    .line 427
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 2
    .parameter "envelope"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;

    .line 410
    .local v0, companionServiceCopy:Lcom/google/glass/home/companion/CompanionService;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Lcom/google/glass/home/companion/CompanionService;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    .line 413
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
