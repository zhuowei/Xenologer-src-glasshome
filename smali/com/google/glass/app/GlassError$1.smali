.class Lcom/google/glass/app/GlassError$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassError;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$onConfirmRunnable:Ljava/lang/Runnable;

.field final synthetic val$soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/GlassError$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-object p3, p0, Lcom/google/glass/app/GlassError$1;->val$onConfirmRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$onConfirmRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 163
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$onConfirmRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError$1;->onDone()V

    .line 150
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassError;->shouldFinishWhenDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 157
    :cond_0
    return-void
.end method
