.class Lcom/google/glass/home/settings/WifiSettingsItemView$1;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/util/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .parameter "isConnected"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #calls: Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$000(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    .line 69
    return-void
.end method
