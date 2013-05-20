.class Lcom/google/glass/home/HeadGestureSettingsReceiver$1;
.super Ljava/lang/Object;
.source "HeadGestureSettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HeadGestureSettingsReceiver;->loadAndExecuteSettingsAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HeadGestureSettingsReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HeadGestureSettingsReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;->this$0:Lcom/google/glass/home/HeadGestureSettingsReceiver;

    iput-object p2, p0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 40
    iget-object v2, p0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getHeadWakeAngleDegs(Landroid/content/Context;)F

    move-result v0

    .line 41
    .local v0, angDegs:F
    iget-object v2, p0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getHeadWakeHysteresisAngleDegs(Landroid/content/Context;)F

    move-result v1

    .line 43
    .local v1, hysteresisDegs:F
    sget-object v2, Lcom/google/glass/home/HeadGestureSettingsReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting the head wake angles: trigger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hysteresis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/glass/util/HiddenApiHelper;->setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z

    .line 46
    return-void
.end method
