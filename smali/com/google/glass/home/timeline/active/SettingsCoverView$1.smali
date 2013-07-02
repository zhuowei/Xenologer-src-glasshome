.class Lcom/google/glass/home/timeline/active/SettingsCoverView$1;
.super Ljava/lang/Object;
.source "SettingsCoverView.java"

# interfaces
.implements Lcom/google/glass/util/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .parameter "isConnected"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    .line 67
    return-void
.end method
