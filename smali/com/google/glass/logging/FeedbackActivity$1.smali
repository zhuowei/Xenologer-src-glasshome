.class Lcom/google/glass/logging/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/FeedbackActivity;

.field final synthetic val$additionalFiles:[Ljava/lang/String;

.field final synthetic val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

.field final synthetic val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

.field final synthetic val$shouldBugreport:Z


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    iput-object p2, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    iput-boolean p4, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$shouldBugreport:Z

    iput-object p5, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    iput-object p6, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$additionalFiles:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    iget-object v1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    #getter for: Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/logging/FeedbackActivity;->access$000(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    iget-boolean v4, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$shouldBugreport:Z

    iget-object v5, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    iget-object v6, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$additionalFiles:[Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/glass/logging/FeedbackBuilder;->build(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    iget-object v1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-static {v0, v1}, Lcom/google/glass/util/Feedback;->handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    iget-object v2, p0, Lcom/google/glass/logging/FeedbackActivity$1;->val$recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-static {v1, v2}, Lcom/google/glass/util/Feedback;->handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    .line 62
    iget-object v1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    invoke-virtual {v1}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    throw v0
.end method
