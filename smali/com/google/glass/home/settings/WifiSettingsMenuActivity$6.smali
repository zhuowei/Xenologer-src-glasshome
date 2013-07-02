.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->hideBarcodeViewfinder()V
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
    .line 486
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$6;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$6;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$1000(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    return-void
.end method
