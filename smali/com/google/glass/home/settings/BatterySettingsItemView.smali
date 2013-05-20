.class public final Lcom/google/glass/home/settings/BatterySettingsItemView;
.super Lcom/google/glass/home/settings/SettingsItemView;
.source "BatterySettingsItemView.java"


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final battery:Lcom/google/glass/util/BatteryHelper;

.field private batteryStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final green:I

.field private final red:I

.field private final yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/home/settings/BatterySettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/BatterySettingsItemView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/settings/BatterySettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/BatterySettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/BatterySettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v1, Lcom/google/glass/home/settings/BatterySettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/BatterySettingsItemView$1;-><init>(Lcom/google/glass/home/settings/BatterySettingsItemView;)V

    iput-object v1, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->batteryStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 63
    new-instance v1, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->green:I

    .line 68
    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->red:I

    .line 69
    sget v1, Lcom/google/glass/home/R$color;->state_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->yellow:I

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->battery_settings_item:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/home/settings/BatterySettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/BatterySettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->updateBattery()V

    return-void
.end method

.method private formatDuration(Lcom/google/glass/util/BatteryHelper$BatteryState;)Ljava/lang/String;
    .locals 12
    .parameter "state"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, context:Landroid/content/Context;
    const-wide/16 v8, -0x1

    iget-wide v10, p1, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 147
    sget v8, Lcom/google/glass/home/R$string;->battery_duration_unknown:I

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    :goto_0
    return-object v3

    .line 150
    :cond_0
    iget-wide v8, p1, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 151
    .local v1, elapsedSeconds:J
    const-wide/16 v4, 0x0

    .line 152
    .local v4, hours:J
    const-wide/16 v6, 0x0

    .line 154
    .local v6, minutes:J
    const-wide/16 v8, 0x3c

    cmp-long v8, v1, v8

    if-ltz v8, :cond_1

    .line 155
    const-wide/16 v8, 0x3c

    div-long v6, v1, v8

    .line 156
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v6

    sub-long/2addr v1, v8

    .line 159
    :cond_1
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 160
    const-wide/16 v8, 0x3c

    div-long v4, v6, v8

    .line 161
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    sub-long/2addr v6, v8

    .line 165
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 166
    sget v8, Lcom/google/glass/home/R$string;->battery_duration_hours_minutes:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, formattedText:Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v3           #formattedText:Ljava/lang/String;
    :cond_3
    sget v8, Lcom/google/glass/home/R$string;->battery_duration_minutes:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #formattedText:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateBattery()V
    .locals 14

    .prologue
    const/16 v11, 0x8

    const/4 v13, 0x0

    .line 88
    sget-object v9, Lcom/google/glass/home/settings/BatterySettingsItemView;->TAG:Ljava/lang/String;

    const-string v10, "Updating battery state."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v9, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v9}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v6

    .line 93
    .local v6, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v9, Lcom/google/glass/home/R$id;->battery_state_image:I

    invoke-virtual {p0, v9}, Lcom/google/glass/home/settings/BatterySettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/settings/BatteryStateImageView;

    .line 95
    .local v2, batteryStateImage:Lcom/google/glass/home/settings/BatteryStateImageView;
    invoke-virtual {v2, v6}, Lcom/google/glass/home/settings/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 98
    sget v9, Lcom/google/glass/home/R$id;->battery_state_text:I

    invoke-virtual {p0, v9}, Lcom/google/glass/home/settings/BatterySettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, batteryStateText:Landroid/widget/TextView;
    sget v9, Lcom/google/glass/home/R$id;->battery_state_duration_text:I

    invoke-virtual {p0, v9}, Lcom/google/glass/home/settings/BatterySettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, batteryDurationText:Landroid/widget/TextView;
    sget v9, Lcom/google/glass/home/R$id;->battery_state_connect_charger_text:I

    invoke-virtual {p0, v9}, Lcom/google/glass/home/settings/BatterySettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, batteryConnectChargerText:Landroid/widget/TextView;
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget v9, v6, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 107
    .local v5, percent:I
    iget-boolean v9, v6, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v9, :cond_1

    .line 109
    sget v9, Lcom/google/glass/home/R$string;->battery_charged:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget v9, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->green:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-boolean v9, v6, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v9, :cond_0

    .line 112
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/glass/home/settings/BatterySettingsItemView;->formatDuration(Lcom/google/glass/util/BatteryHelper$BatteryState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget v9, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->green:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget v4, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->red:I

    .line 119
    .local v4, durationTextColor:I
    iget v7, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->red:I

    .line 120
    .local v7, stateTextColor:I
    const/16 v9, 0x1e

    if-le v5, v9, :cond_3

    .line 121
    iget v7, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->green:I

    .line 128
    :goto_1
    move v4, v7

    .line 129
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/google/glass/home/R$string;->battery_percent:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, textStr:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-boolean v9, v6, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v9, :cond_2

    iget-boolean v9, v6, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v9, :cond_5

    .line 132
    :cond_2
    sget v9, Lcom/google/glass/home/R$string;->battery_charging:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget v4, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->green:I

    .line 137
    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 122
    .end local v8           #textStr:Ljava/lang/String;
    :cond_3
    const/16 v9, 0xa

    if-le v5, v9, :cond_4

    .line 123
    iget v7, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->yellow:I

    goto :goto_1

    .line 125
    :cond_4
    iget v7, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->red:I

    .line 126
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    .restart local v8       #textStr:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/glass/home/settings/BatterySettingsItemView;->formatDuration(Lcom/google/glass/util/BatteryHelper$BatteryState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->batteryStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/settings/BatterySettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-direct {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->updateBattery()V

    .line 78
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/home/settings/BatterySettingsItemView;->batteryStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BatterySettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsItemView;->onUnload()V

    .line 84
    return-void
.end method
