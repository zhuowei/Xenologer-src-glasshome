.class Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;
.super Ljava/lang/Object;
.source "VoiceMenuCommandItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;Landroid/app/Activity;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->this$0:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$spoken:Z

    iput-object p4, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/google/glass/home/search/VoiceSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, voiceSearchIntent:Landroid/content/Intent;
    const-string v2, "trigger_method"

    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$spoken:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v1, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 173
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 175
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
