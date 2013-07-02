.class Lcom/google/glass/share/ShareActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->onShareTargetSelected(Lcom/google/googlex/glass/common/proto/Entity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;

.field final synthetic val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    iput-object p2, p0, Lcom/google/glass/share/ShareActivity$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$200(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfirm pressed, and we are annotating."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "share_target"

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;
    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$300(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(I)V

    .line 384
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onDismissed()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$000(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v2, 0x0

    #calls: Lcom/google/glass/share/ShareActivity;->onShareTargetConfirmed(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/share/ShareActivity;->access$100(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V

    .line 377
    return-void
.end method
