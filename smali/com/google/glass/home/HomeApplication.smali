.class public Lcom/google/glass/home/HomeApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "HomeApplication.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_RETRY_TIME_MS:J = 0x0L

.field private static final MAX_BITMAP_CACHE_SIZE_KB:I = 0x8000

.field private static final MAX_RETRY_DELAY_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

.field private locationService:Lcom/google/glass/location/LocationService;

.field private remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-class v0, Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    .line 189
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    .line 190
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
    .line 58
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 85
    new-instance v0, Lcom/google/glass/home/HomeApplication$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$1;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    .line 105
    new-instance v0, Lcom/google/glass/home/HomeApplication$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$2;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 142
    new-instance v0, Lcom/google/glass/home/HomeApplication$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$3;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 174
    new-instance v0, Lcom/google/glass/home/HomeApplication$4;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$4;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 193
    new-instance v0, Lcom/google/glass/home/HomeApplication$5;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$5;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/CompanionLocationProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->registerGcm()V

    return-void
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->MAX_RETRY_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->enablePowerConnectedSync(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->enableConnectivityEstablishedSync(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private disableLockscreen()V
    .locals 5

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.disabled"

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 415
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
    .line 355
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/HomeApplication$8;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/HomeApplication$8;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 368
    return-void
.end method

.method private enablePowerConnectedSync(Landroid/accounts/Account;)V
    .locals 3
    .parameter "primaryAccount"

    .prologue
    .line 335
    new-instance v0, Lcom/google/glass/home/HomeApplication$7;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/HomeApplication$7;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/home/HomeApplication;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lcom/google/glass/home/HomeApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 329
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
    .line 291
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/HomeApplication$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/HomeApplication$6;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method private registerGcm()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/google/glass/home/HomeApplication$9;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$9;-><init>(Lcom/google/glass/home/HomeApplication;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method


# virtual methods
.method public getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method public getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method public isNavigationAllowed()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

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
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 240
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 243
    new-instance v4, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getScreenWidthPixels()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getScreenHeightPixels()I

    move-result v7

    const v8, 0x8000

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/glass/util/MemoryCachedBitmapFactory;-><init>(Landroid/content/Context;III)V

    iput-object v4, p0, Lcom/google/glass/home/HomeApplication;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 246
    new-instance v4, Lcom/google/glass/util/TimeZoneUtil;

    invoke-direct {v4, p0}, Lcom/google/glass/util/TimeZoneUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone()V

    .line 247
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->disableLockscreen()V

    .line 250
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, authUtils:Lcom/google/glass/util/AuthUtils;
    invoke-virtual {v0}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 252
    .local v1, primaryAccount:Landroid/accounts/Account;
    if-nez v1, :cond_1

    .line 253
    sget-object v4, Lcom/google/glass/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v5, "No Google account available. Reverting to setup, NOT rebooting."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, reboot:Z
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/glass/util/AuthUtils;->restartSetupProcess(Z)V

    .line 261
    .end local v2           #reboot:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/google/glass/home/HomeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 270
    :cond_0
    new-instance v4, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v4, p0, v9}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;Z)V

    iput-object v4, p0, Lcom/google/glass/home/HomeApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 271
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v4, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 272
    new-instance v4, Lcom/google/glass/location/CompanionLocationProxy;

    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v4, v5}, Lcom/google/glass/location/CompanionLocationProxy;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v4, p0, Lcom/google/glass/home/HomeApplication;->companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

    .line 275
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/location/LocationService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v9}, Lcom/google/glass/home/HomeApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 278
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .local v3, screenOnOffIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    invoke-static {p0}, Lcom/google/glass/home/timeline/TimelineNotificationManager;->initialize(Lcom/google/glass/home/HomeApplication;)V

    .line 284
    invoke-static {p0}, Lcom/google/glass/home/ScreenOffService;->initialize(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/glass/html/HtmlRenderer;->initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 286
    invoke-static {p0}, Lcom/google/glass/util/StorageHelper;->initializeThresholds(Landroid/content/Context;)V

    .line 287
    return-void

    .line 257
    .end local v3           #screenOnOffIntentFilter:Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method public onStateChange(ZII)V
    .locals 1
    .parameter "isConnected"
    .parameter "remoteVersion"
    .parameter "localVersion"

    .prologue
    .line 437
    if-eqz p1, :cond_2

    .line 438
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationService;->onCompanionConnected()V

    .line 441
    :cond_0
    const-string v0, "com.google.glass.location"

    invoke-static {p0, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationService;->onCompanionDisconnected()V

    goto :goto_0
.end method
