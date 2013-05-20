.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$9;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)V
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 429
    iput-object p2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$9;->val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 436
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$9;->val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 437
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 438
    return-void
.end method
