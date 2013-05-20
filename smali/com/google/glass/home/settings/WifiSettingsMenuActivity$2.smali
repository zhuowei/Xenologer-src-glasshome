.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;
.super Ljava/lang/Object;
.source "WifiSettingsMenuActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    check-cast p2, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;->getService()Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$302(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 123
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->addCompanionListener()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$400(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    .line 124
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$302(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 118
    return-void
.end method
