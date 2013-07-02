.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2$1;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    #calls: Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$300(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    .line 108
    return-void
.end method
