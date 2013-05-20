.class Lcom/google/glass/home/companion/CompanionService$UpgradeListener;
.super Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/companion/CompanionService;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/home/companion/CompanionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;-><init>(Lcom/google/glass/home/companion/CompanionService;)V

    return-void
.end method


# virtual methods
.method public onCompanionVersionMismatch(II)V
    .locals 2
    .parameter "glassVersion"
    .parameter "companionVersion"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/home/companion/CompanionService;->access$100(Lcom/google/glass/home/companion/CompanionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;-><init>(Lcom/google/glass/home/companion/CompanionService$UpgradeListener;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
