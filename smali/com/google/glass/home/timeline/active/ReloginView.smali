.class public Lcom/google/glass/home/timeline/active/ReloginView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "ReloginView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->RELOGIN:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.setup.ACTION_RECONFIGURE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ReloginView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    const/4 v1, 0x1

    return v1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/google/glass/home/R$layout;->relogin_active_item:I

    return v0
.end method
