.class public Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsItemView;
.source "DeviceInfoSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$2;
    }
.end annotation


# static fields
.field static final MENU_ID_ADB:I = 0x4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MENU_ID_DEBUG:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MENU_ID_LICENSES:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MENU_ID_RESET:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MENU_ID_UPDATE:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private battery:Lcom/google/glass/util/BatteryHelper;

.field private prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private serialText:Lcom/google/glass/widget/TypophileTextView;

.field private storageText:Lcom/google/glass/widget/TypophileTextView;

.field private updateText:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->device_info_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    sget v0, Lcom/google/glass/home/R$id;->update_state:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->updateText:Lcom/google/glass/widget/TypophileTextView;

    .line 82
    sget v0, Lcom/google/glass/home/R$id;->serial:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->serialText:Lcom/google/glass/widget/TypophileTextView;

    .line 83
    sget v0, Lcom/google/glass/home/R$id;->storage_state:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->storageText:Lcom/google/glass/widget/TypophileTextView;

    .line 84
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->update()V

    return-void
.end method

.method private isAdbEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAdbEnabled(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleAdbEnable()V
    .locals 4

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->isAdbEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 228
    .local v0, newAdbEnabled:Z
    :goto_0
    sget-object v1, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling ADB enable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->setAdbEnabled(Z)V

    .line 231
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    sget v1, Lcom/google/glass/home/R$string;->deviceinfo_adb_debug_on:I

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 238
    return-void

    .line 226
    .end local v0           #newAdbEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    .restart local v0       #newAdbEnabled:Z
    :cond_1
    sget v1, Lcom/google/glass/home/R$string;->deviceinfo_adb_debug_off:I

    goto :goto_1
.end method

.method private update()V
    .locals 20

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 91
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 92
    .local v8, resources:Landroid/content/res/Resources;
    sget v16, Lcom/google/glass/home/R$color;->state_green:I

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 93
    .local v6, green:I
    sget v16, Lcom/google/glass/home/R$color;->state_yellow:I

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 94
    .local v15, yellow:I
    sget v16, Lcom/google/glass/home/R$color;->state_red:I

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 95
    .local v7, red:I
    sget v16, Lcom/google/glass/home/R$color;->text_gray:I

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 98
    .local v5, gray:I
    const-string v16, "ro.serialno.glass"

    sget v17, Lcom/google/glass/home/R$string;->deviceinfo_unknown:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, serial:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->serialText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    sget v17, Lcom/google/glass/home/R$string;->deviceinfo_serial:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {v3}, Lcom/google/glass/util/OtaUpdateHelper;->getUpdateName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, availableUpdateName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 105
    const-string v16, "ro.build.version.glass"

    sget v17, Lcom/google/glass/home/R$string;->deviceinfo_unknown:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->updateText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    sget v17, Lcom/google/glass/home/R$string;->deviceinfo_version_up_to_date:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->updateText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 115
    .end local v14           #version:Ljava/lang/String;
    :goto_0
    new-instance v11, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v11, v3}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 116
    .local v11, storageHelper:Lcom/google/glass/util/StorageHelper;
    const/4 v10, 0x1

    .line 117
    .local v10, shouldStorageBeVisible:Z
    move v12, v7

    .line 118
    .local v12, storageTextColor:I
    invoke-virtual {v11}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v4

    .line 119
    .local v4, externalStorageState:Lcom/google/glass/util/StorageHelper$State;
    sget-object v16, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "External storage state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v16, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$2;->$SwitchMap$com$google$glass$util$StorageHelper$State:[I

    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 132
    const/4 v10, 0x0

    .line 135
    :goto_1
    if-eqz v10, :cond_1

    .line 136
    sget v16, Lcom/google/glass/home/R$string;->deviceinfo_storage_space:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v11}, Lcom/google/glass/util/StorageHelper;->getHumanReadableByteCount()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->storageText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->storageText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->storageText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 144
    .end local v13           #text:Ljava/lang/String;
    :goto_2
    return-void

    .line 110
    .end local v4           #externalStorageState:Lcom/google/glass/util/StorageHelper$State;
    .end local v10           #shouldStorageBeVisible:Z
    .end local v11           #storageHelper:Lcom/google/glass/util/StorageHelper;
    .end local v12           #storageTextColor:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->updateText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    sget v17, Lcom/google/glass/home/R$string;->deviceinfo_version_update_available:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->updateText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 122
    .restart local v4       #externalStorageState:Lcom/google/glass/util/StorageHelper$State;
    .restart local v10       #shouldStorageBeVisible:Z
    .restart local v11       #storageHelper:Lcom/google/glass/util/StorageHelper;
    .restart local v12       #storageTextColor:I
    :pswitch_0
    move v12, v6

    .line 123
    goto :goto_1

    .line 125
    :pswitch_1
    move v12, v15

    .line 126
    goto :goto_1

    .line 129
    :pswitch_2
    move v12, v7

    .line 130
    goto :goto_1

    .line 142
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->storageText:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_2

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onLoad()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->update()V

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/google/glass/util/OtaUpdateHelper;->addCheckinListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 7
    .parameter "selectedOptionMenuItem"

    .prologue
    const/4 v4, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/google/glass/home/settings/SettingsItemView;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v4

    :goto_0
    return v4

    .line 191
    :pswitch_0
    invoke-static {v0}, Lcom/google/glass/util/OtaUpdateHelper;->installUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 194
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v1, launcherIntent:Landroid/content/Intent;
    const-string v5, "com.android.launcher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v1           #launcherIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/google/glass/home/settings/ViewLicensesActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v2, licensesIntent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    .end local v2           #licensesIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/google/glass/home/settings/FactoryResetActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v3, resetIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    .end local v3           #resetIntent:Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->toggleAdbEnable()V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    .local v1, context:Landroid/content/Context;
    sget v6, Lcom/google/glass/home/R$string;->deviceinfo_install_update:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_sync_medium:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 164
    sget v6, Lcom/google/glass/home/R$string;->deviceinfo_debug_launcher:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_warning_medium:I

    invoke-virtual {p1, v4, v6, v7}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 166
    const/4 v6, 0x2

    sget v7, Lcom/google/glass/home/R$string;->deviceinfo_menu_licenses:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$drawable;->ic_document_medium:I

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 169
    invoke-direct {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->isAdbEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v0, Lcom/google/glass/home/R$string;->deviceinfo_menu_adb_turn_off:I

    .line 171
    .local v0, adbStringResource:I
    :goto_0
    const/4 v6, 0x4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$drawable;->ic_android_medium:I

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 173
    const/4 v6, 0x3

    sget v7, Lcom/google/glass/home/R$string;->deviceinfo_menu_reset:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$drawable;->ic_reset_medium:I

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 176
    invoke-static {v1}, Lcom/google/glass/util/OtaUpdateHelper;->isUpdateAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v6}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 178
    .local v3, showUpdateMenuOption:Z
    :goto_1
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 180
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->DEBUG_LAUNCHER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    .line 181
    .local v2, showDebugLaunchedMenuOption:Z
    invoke-virtual {p1, v4}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 183
    return v4

    .line 169
    .end local v0           #adbStringResource:I
    .end local v2           #showDebugLaunchedMenuOption:Z
    .end local v3           #showUpdateMenuOption:Z
    :cond_0
    sget v0, Lcom/google/glass/home/R$string;->deviceinfo_menu_adb_turn_on:I

    goto :goto_0

    .restart local v0       #adbStringResource:I
    :cond_1
    move v3, v5

    .line 176
    goto :goto_1
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsItemView;->onUnload()V

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/google/glass/util/OtaUpdateHelper;->removeCheckinListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 156
    return-void
.end method
