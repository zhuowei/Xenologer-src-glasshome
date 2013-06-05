.class public Lcom/google/glass/home/settings/HeadWakeSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "HeadWakeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private angleTextLabelView:Lcom/google/glass/widget/TypophileTextView;

.field private angleTextView:Lcom/google/glass/widget/TypophileTextView;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;-><init>(Lcom/google/glass/home/settings/HeadWakeSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 43
    new-instance v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;-><init>(Lcom/google/glass/home/settings/HeadWakeSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->head_wake_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 86
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->cacheAngleOutputViews()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/HeadWakeSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateHeadWakeEnableState()V

    return-void
.end method

.method private cacheAngleOutputViews()V
    .locals 1

    .prologue
    .line 247
    sget v0, Lcom/google/glass/home/R$id;->head_wake_angle_label_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextLabelView:Lcom/google/glass/widget/TypophileTextView;

    .line 248
    sget v0, Lcom/google/glass/home/R$id;->head_wake_angle_setting_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    .line 249
    sget v0, Lcom/google/glass/home/R$id;->head_wake_main_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    .line 250
    return-void
.end method

.method private getWakeAngleDegs()F
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getHeadWakeAngleDegs(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private isHeadWakeEnabled()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/HiddenApiHelper;->isGlobalLookUpGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onSetTriggerAngle()V
    .locals 4

    .prologue
    .line 241
    sget-object v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Switching to activity for setting the trigger angle!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private onTurnOffHeadWake()V
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Menu head wake turn off state is selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->head_wake_turning_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_power_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->head_wake_turned_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 210
    return-void
.end method

.method private onTurnOnHeadWake()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Menu head wake turn on state is selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->head_wake_turning_on:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_power_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->head_wake_turned_on:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 227
    return-void
.end method

.method static setHeadWakeEnabledPersistent(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 143
    sget-object v2, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting head wake in the native service to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p0, p1}, Lcom/google/glass/util/HiddenApiHelper;->setGlobalLookUpEnabled(Landroid/content/Context;Z)V

    .line 145
    sget-object v2, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    const-string v3, "... done setting head wake native service!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/logging/UserEventAction;

    .line 151
    .local v0, eventActionToLog:Lcom/google/glass/logging/UserEventAction;
    :goto_0
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    .line 152
    .local v1, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    invoke-virtual {v1, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 153
    return-void

    .line 148
    .end local v0           #eventActionToLog:Lcom/google/glass/logging/UserEventAction;
    .end local v1           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    :cond_0
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/logging/UserEventAction;

    goto :goto_0
.end method

.method private setWakeAngleDegs(F)V
    .locals 7
    .parameter "wakeAngleDegs"

    .prologue
    .line 254
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    if-eqz v2, :cond_0

    .line 255
    const/high16 v2, 0x3f00

    add-float/2addr v2, p1

    float-to-int v1, v2

    .line 256
    .local v1, roundedAngleDegs:I
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    sget v3, Lcom/google/glass/home/R$string;->head_wake_angle_text_format:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #roundedAngleDegs:I
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    invoke-virtual {v2, p1}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 264
    :cond_1
    return-void
.end method

.method private updateHeadWakeEnableState()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->isHeadWakeEnabled()Z

    move-result v0

    .line 176
    .local v0, enableState:Z
    sget-object v1, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Head wake enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateHeadWakeEnableStatusText(Z)V

    .line 182
    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setHeadWakeEnabled(Z)V

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextLabelView:Lcom/google/glass/widget/TypophileTextView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 189
    return-void

    :cond_1
    move v1, v3

    .line 187
    goto :goto_0

    :cond_2
    move v2, v3

    .line 188
    goto :goto_1
.end method

.method private updateHeadWakeEnableStatusText(Z)V
    .locals 4
    .parameter "enableState"

    .prologue
    .line 161
    sget v2, Lcom/google/glass/home/R$id;->head_wake_enable_state:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 163
    .local v1, statusTextView:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->head_wake_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v2, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->head_wake_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v2, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->isHeadWakeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/google/glass/home/R$id;->head_wake_turn_off_state:I

    .line 233
    .local v1, stateId:I
    :goto_0
    sget v2, Lcom/google/glass/home/R$id;->head_wake_enable_menu_item:I

    invoke-virtual {p1, v2}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    .line 234
    .local v0, enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(I)V

    .line 237
    :cond_0
    return-void

    .line 231
    .end local v0           #enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    .end local v1           #stateId:I
    :cond_1
    sget v1, Lcom/google/glass/home/R$id;->head_wake_turn_on_state:I

    goto :goto_0
.end method

.method private updateWakeAngleOutputState()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getWakeAngleDegs()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->setWakeAngleDegs(F)V

    .line 193
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateHeadWakeEnableState()V

    .line 92
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateWakeAngleOutputState()V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 4
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, success:Z
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    .line 106
    .local v0, selectedItemId:I
    sget v2, Lcom/google/glass/home/R$id;->head_wake_enable_menu_item:I

    if-ne v0, v2, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v2

    sget v3, Lcom/google/glass/home/R$id;->head_wake_turn_off_state:I

    if-ne v2, v3, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->onTurnOffHeadWake()V

    .line 112
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 120
    :goto_1
    if-eqz v1, :cond_4

    .line 121
    const/4 v2, 0x1

    .line 123
    :goto_2
    return v2

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v2

    sget v3, Lcom/google/glass/home/R$id;->head_wake_turn_on_state:I

    if-ne v2, v3, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->onTurnOnHeadWake()V

    goto :goto_0

    .line 113
    :cond_2
    sget v2, Lcom/google/glass/home/R$id;->head_wake_set_trigger_angle:I

    if-ne v0, v2, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->onSetTriggerAngle()V

    .line 115
    const/4 v1, 0x1

    goto :goto_1

    .line 117
    :cond_3
    sget-object v2, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->TAG:Ljava/lang/String;

    const-string v3, "Unknown menu item is tapped!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :cond_4
    invoke-super {p0, p1}, Lcom/google/glass/home/settings/SettingsCard;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v2

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 97
    sget v0, Lcom/google/glass/home/R$menu;->head_wake_settings_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
