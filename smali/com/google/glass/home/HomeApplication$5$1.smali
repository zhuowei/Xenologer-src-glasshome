.class Lcom/google/glass/home/HomeApplication$5$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/HomeApplication$5;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication$5;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$5$1;->this$1:Lcom/google/glass/home/HomeApplication$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$5$1;->this$1:Lcom/google/glass/home/HomeApplication$5;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    #calls: Lcom/google/glass/home/HomeApplication;->registerGcm()V
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$700(Lcom/google/glass/home/HomeApplication;)V

    .line 190
    return-void
.end method
