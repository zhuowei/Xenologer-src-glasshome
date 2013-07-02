.class Lcom/google/glass/html/HtmlRenderer$Pool$1;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer$Pool;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer$Pool;

.field final synthetic val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer$Pool;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->this$0:Lcom/google/glass/html/HtmlRenderer$Pool;

    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->this$0:Lcom/google/glass/html/HtmlRenderer$Pool;

    new-instance v1, Lcom/google/glass/html/HtmlRenderer;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$Pool$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/html/HtmlRenderer$Pool;->releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V

    .line 101
    return-void
.end method
