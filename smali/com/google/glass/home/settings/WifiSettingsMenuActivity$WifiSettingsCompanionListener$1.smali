.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;
.super Ljava/lang/Object;
.source "WifiSettingsMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->onConnectionStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;->this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;

    iput-boolean p2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;->this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$500(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;->val$connected:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->onCompanionConnectionStatusChanged(Z)V

    .line 148
    return-void
.end method
