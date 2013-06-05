.class public Lcom/google/glass/home/settings/DonDoffSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "DonDoffSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;-><init>(Lcom/google/glass/home/settings/DonDoffSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->don_doff_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/DonDoffSettingsItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableStatusText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/DonDoffSettingsItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableIconState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/DonDoffSettingsItemView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method private isDonDoffDetectionEnabled()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/HiddenApiHelper;->isDonDoffDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onCalibrateDonDoff()V
    .locals 4

    .prologue
    .line 217
    sget-object v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Starting the DonDoffCalibrationActivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private onTurnOffDonDoffDetection()V
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Menu don detection turn off state is selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->don_doff_turning_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_power_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->don_doff_turned_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 197
    return-void
.end method

.method static setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 138
    sget-object v1, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting don detector in the native service to: "

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

    .line 139
    invoke-static {p0, p1}, Lcom/google/glass/util/HiddenApiHelper;->enableDonDoff(Landroid/content/Context;Z)Z

    move-result v0

    .line 140
    .local v0, success:Z
    sget-object v1, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "... done setting don detector native service!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/google/glass/home/DonStateReceiver;->logDonDetectorStateUserEvent(Landroid/content/Context;)V

    .line 147
    :cond_0
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_warning_large:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/DonDoffSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/DonDoffSettingsItemView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 210
    return-void
.end method

.method private updateDonDoffEnableIconState()Z
    .locals 3

    .prologue
    .line 173
    sget v2, Lcom/google/glass/home/R$id;->don_doff_main_icon:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 174
    .local v1, iconImageView:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->isDonDoffDetectionEnabled()Z

    move-result v0

    .line 175
    .local v0, donDetectionEnabled:Z
    if-eqz v0, :cond_0

    .line 176
    sget v2, Lcom/google/glass/home/R$drawable;->ic_on_head_on_160:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_0
    return v0

    .line 178
    :cond_0
    sget v2, Lcom/google/glass/home/R$drawable;->ic_on_head_off_160:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateDonDoffEnableStatusText()Z
    .locals 6

    .prologue
    .line 156
    sget v3, Lcom/google/glass/home/R$id;->don_doff_enable_state:I

    invoke-virtual {p0, v3}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 158
    .local v2, statusTextView:Lcom/google/glass/widget/TypophileTextView;
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->isDonDoffDetectionEnabled()Z

    move-result v0

    .line 159
    .local v0, donDetectionEnabled:Z
    sget-object v3, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "donDetectionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, resources:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$string;->don_doff_on_status:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v3, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$string;->don_doff_off_status:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v3, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->isDonDoffDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/google/glass/home/R$id;->don_doff_turn_off_state:I

    .line 225
    .local v1, stateId:I
    :goto_0
    sget v2, Lcom/google/glass/home/R$id;->don_doff_enable_menu_item:I

    invoke-virtual {p1, v2}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    .line 226
    .local v0, enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(I)V

    .line 229
    :cond_0
    return-void

    .line 223
    .end local v0           #enableStateItem:Lcom/google/glass/widget/OptionMenu$Item;
    .end local v1           #stateId:I
    :cond_1
    sget v1, Lcom/google/glass/home/R$id;->don_doff_calibrate_state:I

    goto :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableStatusText()Z

    .line 95
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableIconState()Z

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    .line 108
    .local v0, selectedItemId:I
    sget v1, Lcom/google/glass/home/R$id;->don_doff_enable_menu_item:I

    if-ne v0, v1, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->don_doff_turn_off_state:I

    if-ne v1, v2, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->onTurnOffDonDoffDetection()V

    .line 115
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 119
    :goto_1
    return v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->don_doff_calibrate_state:I

    if-ne v1, v2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->onCalibrateDonDoff()V

    goto :goto_0

    .line 117
    :cond_2
    sget-object v1, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->TAG:Ljava/lang/String;

    const-string v2, "Unknown menu item is tapped!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Lcom/google/glass/home/settings/SettingsCard;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 100
    sget v0, Lcom/google/glass/home/R$menu;->don_doff_settings_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 101
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateMenuEnabledState(Lcom/google/glass/widget/OptionMenu;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
