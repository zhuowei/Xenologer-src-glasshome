.class Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;
.super Ljava/lang/Object;
.source "VoiceMenuCommandItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->this$0:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->val$spoken:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 235
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/search/VoiceNavigationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v1, voiceNavigationIntent:Landroid/content/Intent;
    const-string v3, "trigger_method"

    iget-boolean v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->val$spoken:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$4$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2, v4}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 242
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
