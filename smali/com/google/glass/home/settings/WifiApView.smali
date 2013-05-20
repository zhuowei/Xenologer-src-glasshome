.class public Lcom/google/glass/home/settings/WifiApView;
.super Lcom/google/glass/home/settings/SettingsItemView;
.source "WifiApView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/WifiApView$1;
    }
.end annotation


# instance fields
.field protected wifiLevels:Lcom/google/glass/home/settings/WifiLevels;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/google/glass/home/settings/WifiLevels;

    invoke-direct {v0}, Lcom/google/glass/home/settings/WifiLevels;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiApView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    .line 31
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiApView;->initialize()V

    .line 32
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiApView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->wifi_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setWifiData(ILcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
    .locals 10
    .parameter "strength"
    .parameter "encryption"
    .parameter "name"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 47
    sget v6, Lcom/google/glass/home/R$id;->wifi_network_name:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 48
    .local v2, networkNameLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v6, Lcom/google/glass/home/R$id;->wifi_data_state:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 49
    .local v1, dataStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v6, Lcom/google/glass/home/R$id;->wifi_connection_state:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 51
    .local v0, connectionStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v6, Lcom/google/glass/home/R$id;->wifi_other_networks:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 53
    .local v3, otherNetworksLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v6, Lcom/google/glass/home/R$id;->wifi_security:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    .line 55
    .local v4, securityLabel:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v2, p3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v6, Lcom/google/glass/home/R$string;->wifi_nearby:I

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiApView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$color;->text_gray:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v0, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 61
    sget-object v6, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p2, v6, :cond_0

    .line 62
    invoke-virtual {v4, v8}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 76
    :goto_0
    invoke-virtual {v1, v8}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 77
    invoke-virtual {v3, v8}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 79
    sget v6, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/settings/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 80
    .local v5, signalStrengthImage:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/google/glass/home/settings/WifiApView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    invoke-virtual {v6, p1}, Lcom/google/glass/home/settings/WifiLevels;->getImageResourceForStrength(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void

    .line 64
    .end local v5           #signalStrengthImage:Landroid/widget/ImageView;
    :cond_0
    sget-object v6, Lcom/google/glass/home/settings/WifiApView$1;->$SwitchMap$com$google$glass$util$WifiHelper$Encryption:[I

    invoke-virtual {p2}, Lcom/google/glass/util/WifiHelper$Encryption;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 73
    :goto_1
    invoke-virtual {v4, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :pswitch_0
    sget v6, Lcom/google/glass/home/R$string;->wifi_encryption_wep:I

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_1

    .line 70
    :pswitch_1
    sget v6, Lcom/google/glass/home/R$string;->wifi_encryption_wpa:I

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
