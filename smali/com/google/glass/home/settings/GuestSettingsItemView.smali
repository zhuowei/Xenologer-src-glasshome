.class public Lcom/google/glass/home/settings/GuestSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "GuestSettingsItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final disabledText:Lcom/google/glass/widget/TypophileTextView;

.field private final enabledText:Lcom/google/glass/widget/TypophileTextView;

.field private final icon:Landroid/widget/ImageView;

.field private isGuestModeEnabled:Z

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final toggleGuestModeListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/home/settings/GuestSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/GuestSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/GuestSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcom/google/glass/home/settings/GuestSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/GuestSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/GuestSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->toggleGuestModeListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 68
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->guest_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lcom/google/glass/home/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->icon:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/google/glass/home/R$id;->enabled:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->enabledText:Lcom/google/glass/widget/TypophileTextView;

    .line 73
    sget v0, Lcom/google/glass/home/R$id;->disabled:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->disabledText:Lcom/google/glass/widget/TypophileTextView;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/settings/GuestSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->toggleGuestMode()V

    return-void
.end method

.method private disableGuestMode(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-object v0, Lcom/google/glass/home/settings/GuestSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Disabling guest mode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "com.google.glass.EXTRA_GUEST_MODE_ENABLED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 182
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->onGuestModeDisabled()V

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceGuestModeAsync(Landroid/content/Context;Z)V

    .line 184
    return-void
.end method

.method private enableGuestMode(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 171
    sget-object v0, Lcom/google/glass/home/settings/GuestSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Enabling guest mode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "com.google.glass.EXTRA_GUEST_MODE_ENABLED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 174
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->onGuestModeEnabled()V

    .line 175
    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceGuestModeAsync(Landroid/content/Context;Z)V

    .line 176
    return-void
.end method

.method private onGuestModeDisabled()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->guest_mode_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->enabledText:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->disabledText:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 103
    return-void
.end method

.method private onGuestModeEnabled()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->guest_mode_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->enabledText:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->disabledText:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method private showToggleTimer()V
    .locals 5

    .prologue
    .line 135
    iget-boolean v2, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->isGuestModeEnabled:Z

    if-eqz v2, :cond_0

    .line 136
    sget v1, Lcom/google/glass/home/R$string;->guest_settings_turning_off:I

    .line 137
    .local v1, temporaryMessage:I
    sget v0, Lcom/google/glass/home/R$string;->guest_settings_turned_off:I

    .line 143
    .local v0, message:I
    :goto_0
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_power_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v4, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->toggleGuestModeListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/GuestSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 151
    return-void

    .line 139
    .end local v0           #message:I
    .end local v1           #temporaryMessage:I
    :cond_0
    sget v1, Lcom/google/glass/home/R$string;->guest_settings_turning_on:I

    .line 140
    .restart local v1       #temporaryMessage:I
    sget v0, Lcom/google/glass/home/R$string;->guest_settings_turned_on:I

    .restart local v0       #message:I
    goto :goto_0
.end method

.method private toggleGuestMode()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GUEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->isGuestModeEnabled:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->disableGuestMode(Landroid/content/Intent;)V

    .line 164
    :goto_0
    const-string v1, "com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineHome(Landroid/content/Context;)V

    .line 168
    return-void

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->enableGuestMode(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 113
    iget-boolean v2, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->isGuestModeEnabled:Z

    if-eqz v2, :cond_1

    sget v1, Lcom/google/glass/home/R$id;->guest_mode_disable_state:I

    .line 114
    .local v1, stateId:I
    :goto_0
    sget v2, Lcom/google/glass/home/R$id;->guest_mode_menu_item:I

    invoke-virtual {p1, v2}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    .line 115
    .local v0, enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(I)V

    .line 118
    :cond_0
    return-void

    .line 113
    .end local v0           #enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    .end local v1           #stateId:I
    :cond_1
    sget v1, Lcom/google/glass/home/R$id;->guest_mode_start_state:I

    goto :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsCard;->onLoad()V

    .line 81
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->isGuestModeEnabled:Z

    .line 84
    iget-boolean v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView;->isGuestModeEnabled:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->onGuestModeEnabled()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->onGuestModeDisabled()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 2
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    .line 123
    .local v0, selectedItemId:I
    sget v1, Lcom/google/glass/home/R$id;->guest_mode_menu_item:I

    if-ne v0, v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->showToggleTimer()V

    .line 125
    const/4 v1, 0x1

    .line 127
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/settings/SettingsCard;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 107
    sget v0, Lcom/google/glass/home/R$menu;->guest_mode_settings_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/GuestSettingsItemView;->updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
