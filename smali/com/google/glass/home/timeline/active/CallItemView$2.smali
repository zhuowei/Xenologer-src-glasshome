.class Lcom/google/glass/home/timeline/active/CallItemView$2;
.super Ljava/lang/Object;
.source "CallItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/CallItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/CallItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView$2;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView$2;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #calls: Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimer()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/CallItemView;->access$600(Lcom/google/glass/home/timeline/active/CallItemView;)V

    .line 102
    return-void
.end method
