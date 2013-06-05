.class Lcom/google/glass/home/timeline/active/SettingsCoverView$4;
.super Ljava/lang/Object;
.source "SettingsCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView;->onLoad()V
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
    .line 148
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$700(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$600()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    return-void
.end method
