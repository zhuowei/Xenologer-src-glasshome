.class Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;
.super Ljava/lang/Object;
.source "MainMenuCommandItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->this$0:Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->val$spoken:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 400
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 401
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v1, voiceInputIntent:Landroid/content/Intent;
    const-string v4, "trigger_method"

    iget-boolean v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->val$spoken:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const-string v2, "input_type_text"

    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->this$0:Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;

    iget-object v3, v3, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v2, "project_id"

    const-string v3, "960371078599"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v2, "prompt_text"

    const-string v3, "Speak your note"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2, v5}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 421
    return-void

    .line 403
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
