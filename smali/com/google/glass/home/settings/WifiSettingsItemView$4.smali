.class Lcom/google/glass/home/settings/WifiSettingsItemView$4;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;->onLoad()V
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
    .line 283
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$700(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$600()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    return-void
.end method
