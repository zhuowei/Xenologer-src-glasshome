.class Lcom/google/glass/home/settings/OtaUpdateReceiver$1;
.super Ljava/lang/Object;
.source "OtaUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/OtaUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/OtaUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/OtaUpdateReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/home/settings/OtaUpdateReceiver$1;->this$0:Lcom/google/glass/home/settings/OtaUpdateReceiver;

    iput-object p2, p0, Lcom/google/glass/home/settings/OtaUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/settings/OtaUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/OtaUpdateHelper;->setLastCheckinTime(Landroid/content/Context;)Z

    .line 27
    return-void
.end method
