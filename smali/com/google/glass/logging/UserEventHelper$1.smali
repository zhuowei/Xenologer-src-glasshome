.class Lcom/google/glass/logging/UserEventHelper$1;
.super Ljava/lang/Object;
.source "UserEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventHelper;

.field final synthetic val$action:Lcom/google/glass/logging/UserEventAction;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventHelper;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/logging/UserEventHelper$1;->this$0:Lcom/google/glass/logging/UserEventHelper;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventHelper$1;->val$action:Lcom/google/glass/logging/UserEventAction;

    iput-object p3, p0, Lcom/google/glass/logging/UserEventHelper$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/logging/UserEventHelper$1;->this$0:Lcom/google/glass/logging/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventHelper$1;->val$action:Lcom/google/glass/logging/UserEventAction;

    iget-object v2, p0, Lcom/google/glass/logging/UserEventHelper$1;->val$data:Ljava/lang/String;

    #calls: Lcom/google/glass/logging/UserEventHelper;->logInternal(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->access$000(Lcom/google/glass/logging/UserEventHelper;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 101
    return-void
.end method
