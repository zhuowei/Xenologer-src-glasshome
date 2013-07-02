.class Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;
.super Ljava/lang/Object;
.source "VoiceContextMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceContextMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceContextMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceContextMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceContextMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuCommandItemTriggered(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceContextMenuActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "returned_voice_command"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->setResult(ILandroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;->this$0:Lcom/google/glass/home/voice/VoiceContextMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->finish()V

    .line 37
    return-void
.end method
