.class Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;
.super Ljava/lang/Object;
.source "CompanionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/CompanionService$UpgradeListener;->onCompanionVersionMismatch(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

.field final synthetic val$companionVersion:I

.field final synthetic val$glassVersion:I


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionService$UpgradeListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->this$1:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    iput p2, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->val$glassVersion:I

    iput p3, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->val$companionVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget v1, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->val$glassVersion:I

    invoke-static {v1}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v1

    iget v2, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->val$companionVersion:I

    invoke-static {v2}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->this$1:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    iget-object v1, v1, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;->this$0:Lcom/google/glass/home/companion/CompanionService;

    sget v2, Lcom/google/glass/home/R$string;->version_mismatch_require_glass_ota:I

    invoke-virtual {v1, v2}, Lcom/google/glass/home/companion/CompanionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$UpgradeListener$1;->this$1:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    iget-object v2, v2, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v2}, Lcom/google/glass/home/companion/CompanionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;)V

    .line 189
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method
