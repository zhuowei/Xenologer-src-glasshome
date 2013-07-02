.class Lcom/google/glass/home/timeline/HtmlItemView$1;
.super Ljava/lang/Object;
.source "HtmlItemView.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HtmlItemView;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HtmlItemView;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HtmlItemView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->this$0:Lcom/google/glass/home/timeline/HtmlItemView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 74
    return-void
.end method
