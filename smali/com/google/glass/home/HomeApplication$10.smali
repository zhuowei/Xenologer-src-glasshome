.class Lcom/google/glass/home/HomeApplication$10;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->registerGcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$10;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 402
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication$10;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 404
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 405
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, registrationId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registering for GCM ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "229668747847"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 433
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Already registered for GCM."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication$10;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/HomeApplication$10$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/home/HomeApplication$10$1;-><init>(Lcom/google/glass/home/HomeApplication$10;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/google/glass/home/GCMIntentService;->isRegisteredWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/glass/net/ProtoResponseHandler;)V

    goto :goto_0
.end method
