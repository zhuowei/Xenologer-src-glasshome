.class Lcom/google/glass/home/timeline/active/SettingsCoverView$3;
.super Ljava/lang/Object;
.source "SettingsCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 205
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 208
    .local v1, netInfo:Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/active/SettingsCoverView$3$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView$3$1;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView$3;Landroid/net/NetworkInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method
