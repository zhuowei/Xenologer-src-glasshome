.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->showBarcodeViewfinder()V
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
    .line 491
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$5;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$5;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$800(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 495
    return-void
.end method
