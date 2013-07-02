.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newNativeAppCommandItem(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 487
    iput-object p3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;->val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 497
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, literal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 502
    .end local v0           #literal:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #literal:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 2
    .parameter "triggeredCommand"

    .prologue
    .line 516
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;->val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->matches(Lcom/google/glass/voice/VoiceCommand;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Z

    move-result v0

    return v0
.end method

.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 509
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$13;->val$trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 511
    return-void
.end method
