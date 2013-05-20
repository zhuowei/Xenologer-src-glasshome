.class public Lcom/google/glass/util/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Feedback$1;,
        Lcom/google/glass/util/Feedback$RecoveryAction;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.google.glass.logging.FeedbackActivity"

.field public static final EXTRA_ADDITIONAL_FILES:Ljava/lang/String; = "additional_files"

.field public static final EXTRA_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_RECOVERY_ACTION:Ljava/lang/String; = "recovery_action"

.field public static final EXTRA_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.glass.logging"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/util/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Feedback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static createFeedbackIntent(Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZLcom/google/glass/util/ScreenshotUtil$Screenshot;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "shouldBugreport"
    .parameter "screenshot"
    .parameter "additionalFiles"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.FeedbackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "recovery_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    const-string v1, "bugreport"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v1, "screenshot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const-string v1, "additional_files"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    return-object v0
.end method

.method public static handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V
    .locals 6
    .parameter "context"
    .parameter "recoveryAction"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object v3, Lcom/google/glass/util/Feedback;->TAG:Ljava/lang/String;

    const-string v4, "RecoveryAction was null, taking no action."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->getType()Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v0

    .line 62
    .local v0, buildType:Lcom/google/glass/util/BuildHelper$Type;
    iget-object v3, p1, Lcom/google/glass/util/Feedback$RecoveryAction;->buildTypes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    sget-object v3, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    invoke-virtual {p1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 80
    :goto_1
    invoke-static {}, Lcom/google/glass/util/HiddenApiHelper;->getIntentExtraKeyConfirm()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, intentExtraKeyConfirm:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :cond_1
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v2           #intentExtraKeyConfirm:Ljava/lang/String;
    :pswitch_1
    const-string v3, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 68
    :pswitch_2
    const-string v3, "android.intent.action.REBOOT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 75
    :cond_2
    sget-object v3, Lcom/google/glass/util/Feedback;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recoveryAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " overridden, does not apply "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to build type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZ[Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "shouldBugreport"
    .parameter "shouldScreenshot"
    .parameter "additionalFiles"

    .prologue
    .line 100
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/google/glass/util/Feedback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is a user build, not showing feedback, handling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "triggered by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0, p2}, Lcom/google/glass/util/Feedback;->handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 110
    if-eqz p4, :cond_1

    invoke-static {p0}, Lcom/google/glass/util/ScreenshotUtil;->captureCompressedScreenshotForIntent(Landroid/content/Context;)Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    move-result-object v0

    .line 114
    .local v0, screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    :goto_1
    invoke-static {p1, p2, p3, v0, p5}, Lcom/google/glass/util/Feedback;->createFeedbackIntent(Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZLcom/google/glass/util/ScreenshotUtil$Screenshot;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
