.class public Lcom/google/glass/home/settings/WinkSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsItemView;
.source "WinkSettingsItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/home/settings/WinkSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/WinkSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WinkSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->wink_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/WinkSettingsItemView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WinkSettingsItemView;->setWinkDetectionEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/WinkSettingsItemView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WinkSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/WinkSettingsItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->updateWinkEnableStatusUI()Z

    move-result v0

    return v0
.end method

.method private isWinkDetectionEnabled()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/HiddenApiHelper;->isWinkDetectorRunning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logWinkDetectionState()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->isWinkDetectionEnabled()Z

    move-result v0

    .line 116
    .local v0, detectorEnabled:Z
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    .line 117
    .local v1, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    if-eqz v0, :cond_0

    .line 118
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_0
.end method

.method private onHelp()V
    .locals 3

    .prologue
    .line 161
    sget-object v1, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "Menu help is seleted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method private onSetUpWinkDetection()V
    .locals 3

    .prologue
    .line 152
    sget-object v1, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "Menu set up wink is seleted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_WINK_CALIBRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private onTurnOffWinkDetection()V
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Menu wink detection turn off state is selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->wink_turning_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_power_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->wink_turned_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WinkSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WinkSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/WinkSettingsItemView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 195
    return-void
.end method

.method private setWinkDetectionEnabled(Z)Z
    .locals 4
    .parameter "enableState"

    .prologue
    .line 107
    sget-object v1, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting wink detector in the native service to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/glass/util/HiddenApiHelper;->enableWinkDetector(Landroid/content/Context;Z)Z

    move-result v0

    .line 109
    .local v0, success:Z
    sget-object v1, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "... done setting wink detector native service!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->logWinkDetectionState()V

    .line 111
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 202
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_warning_large:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WinkSettingsItemView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WinkSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/WinkSettingsItemView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 212
    return-void
.end method

.method private updateWinkEnableStatusUI()Z
    .locals 7

    .prologue
    .line 130
    sget v4, Lcom/google/glass/home/R$id;->wink_enable_state:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/settings/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 132
    .local v2, statusTextView:Lcom/google/glass/widget/TypophileTextView;
    sget v4, Lcom/google/glass/home/R$id;->wink_icon:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/settings/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, statusImageView:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->isWinkDetectionEnabled()Z

    move-result v3

    .line 134
    .local v3, winkDetectionEnabled:Z
    sget-object v4, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "winkDetectionEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->wink_on_status:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget v4, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 139
    sget v4, Lcom/google/glass/home/R$drawable;->ic_wink_for_photo_on_big:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :goto_0
    return v3

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->wink_off_status:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget v4, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 143
    sget v4, Lcom/google/glass/home/R$drawable;->ic_wink_for_photo_off_big:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->updateWinkEnableStatusUI()Z

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.gesture.action.PRELOAD_RESOURCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "selectedOptionMenuItem"

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    .line 76
    .local v0, selectedItemId:I
    sget v2, Lcom/google/glass/home/R$id;->wink_setup:I

    if-ne v0, v2, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->onSetUpWinkDetection()V

    .line 88
    :goto_0
    return v1

    .line 79
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->wink_turn_off:I

    if-ne v0, v2, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->onTurnOffWinkDetection()V

    goto :goto_0

    .line 82
    :cond_1
    sget v2, Lcom/google/glass/home/R$id;->wink_help:I

    if-ne v0, v2, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->onHelp()V

    goto :goto_0

    .line 86
    :cond_2
    sget-object v1, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "Unknown menu item is tapped!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/google/glass/home/settings/SettingsItemView;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 57
    sget v2, Lcom/google/glass/home/R$menu;->wink_settings_menu:I

    invoke-virtual {p1, v2}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 59
    sget v2, Lcom/google/glass/home/R$id;->wink_turn_off:I

    invoke-virtual {p1, v2}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    .line 60
    .local v0, turnOffItem:Lcom/google/glass/widget/OptionMenu$Item;
    if-nez v0, :cond_0

    .line 61
    sget-object v2, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    const-string v3, "Menu item for turning off wink is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->isWinkDetectionEnabled()Z

    move-result v1

    .line 64
    .local v1, winkDetectionEnabled:Z
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 65
    sget-object v3, Lcom/google/glass/home/settings/WinkSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wink is enabled, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    const-string v2, "show"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " turn off menu item."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "hide"

    goto :goto_1
.end method
