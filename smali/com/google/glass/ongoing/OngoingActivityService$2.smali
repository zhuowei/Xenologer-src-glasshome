.class Lcom/google/glass/ongoing/OngoingActivityService$2;
.super Ljava/lang/Object;
.source "OngoingActivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/ongoing/OngoingActivityService;->handleIncomingMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/ongoing/OngoingActivityService;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityService;

    iput p2, p0, Lcom/google/glass/ongoing/OngoingActivityService$2;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityService;

    iget v1, p0, Lcom/google/glass/ongoing/OngoingActivityService$2;->val$pid:I

    #calls: Lcom/google/glass/ongoing/OngoingActivityService;->handleConnectionLost(I)V
    invoke-static {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->access$200(Lcom/google/glass/ongoing/OngoingActivityService;I)V

    .line 155
    return-void
.end method
