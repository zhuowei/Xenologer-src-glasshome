.class Lcom/google/glass/home/settings/WifiHorizontalScrollView$1;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "WifiHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView$1;->this$0:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView$1;->this$0:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 50
    return-void
.end method
