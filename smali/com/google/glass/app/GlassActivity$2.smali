.class Lcom/google/glass/app/GlassActivity$2;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "GlassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 185
    return-void
.end method
