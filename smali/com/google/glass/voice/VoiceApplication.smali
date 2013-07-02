.class public Lcom/google/glass/voice/VoiceApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "VoiceApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/voice/VoiceApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/voice/VoiceApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private enableSync(Landroid/accounts/Account;)V
    .locals 2
    .parameter "primaryAccount"

    .prologue
    .line 35
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceApplication$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceApplication$1;-><init>(Lcom/google/glass/voice/VoiceApplication;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 24
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, authUtils:Lcom/google/glass/util/AuthUtils;
    invoke-virtual {v0}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 26
    .local v1, primaryAccount:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 27
    sget-object v2, Lcom/google/glass/voice/VoiceApplication;->TAG:Ljava/lang/String;

    const-string v3, "No Google account available! Cannot configure saved audio sync."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceApplication;->enableSync(Landroid/accounts/Account;)V

    goto :goto_0
.end method
