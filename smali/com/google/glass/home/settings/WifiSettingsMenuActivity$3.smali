.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
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
    .line 288
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$600(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$700(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$800(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 299
    return-void
.end method
