.class final Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;
.super Ljava/lang/Object;
.source "MirrorCommandMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getStartMirrorInputRunnable(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$inputTypeText:Ljava/lang/String;

.field final synthetic val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iput-boolean p2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$spoken:Z

    iput-object p3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$inputTypeText:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 122
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, voiceInputIntent:Landroid/content/Intent;
    const-string v4, "trigger_method"

    iget-boolean v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$spoken:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v2, "input_type_text"

    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$inputTypeText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "recipient"

    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    const-string v2, "prompt_text"

    const-string v3, "Speak your message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v2, v5}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 138
    return-void

    .line 123
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
