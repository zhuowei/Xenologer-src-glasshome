.class public Lcom/google/glass/home/camera/QrCodeHandler;
.super Ljava/lang/Object;
.source "QrCodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/camera/QrCodeHandler$1;,
        Lcom/google/glass/home/camera/QrCodeHandler$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private companionDeviceToPair:Landroid/bluetooth/BluetoothDevice;

.field private final context:Landroid/content/Context;

.field private final guideHelper:Lcom/google/glass/util/GuideHelper;

.field private final hangoutHelper:Lcom/google/glass/util/HangoutHelper;

.field private final qrLabEnabled:Z

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/camera/QrCodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 94
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    .line 95
    new-instance v0, Lcom/google/glass/util/GuideHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/GuideHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->guideHelper:Lcom/google/glass/util/GuideHelper;

    .line 96
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->QUICK_QR_CODE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->qrLabEnabled:Z

    .line 97
    return-void
.end method

.method private handleEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "emailAddress"

    .prologue
    const/4 v3, 0x1

    .line 249
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Would initiate email here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    return v3
.end method

.method private handleGeo(Ljava/lang/String;)Z
    .locals 2
    .parameter "locationQuery"

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/google/glass/maps/NavigationLauncher;->navigate(Ljava/lang/String;Landroid/content/Context;Z)Z

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleGlasscast(Ljava/lang/String;)Z
    .locals 8
    .parameter "bluetoothDeviceAddress"

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->companionDeviceToPair:Landroid/bluetooth/BluetoothDevice;

    .line 220
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Setting up companion device to start pairing & screencast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getCompanionService()Lcom/google/glass/home/companion/CompanionService;

    move-result-object v0

    .line 222
    .local v0, service:Lcom/google/glass/home/companion/CompanionService;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->companionDeviceToPair:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/companion/CompanionService;->setupScreencastAndPair(Landroid/bluetooth/BluetoothDevice;)V

    .line 227
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_0
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Wasn\'t able to get a valid CompanionService reference."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleGuide(Ljava/lang/String;)Z
    .locals 3
    .parameter "encryptedText"

    .prologue
    .line 275
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Sending intent to guide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->guideHelper:Lcom/google/glass/util/GuideHelper;

    invoke-virtual {v1, p1}, Lcom/google/glass/util/GuideHelper;->showAppointment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Guide app is not installed. Is this a guide device?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleHangout(Ljava/lang/String;)Z
    .locals 3
    .parameter "roomId"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;Z)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method private handleLink(Ljava/lang/String;)Z
    .locals 3
    .parameter "link"

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    const/4 v1, 0x1

    return v1
.end method

.method private handlePhoneCall(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 237
    sget-object v0, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v1, "Initiating phone call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastDial(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method private handleSMS(Ljava/lang/String;)Z
    .locals 3
    .parameter "smsAddress"

    .prologue
    .line 265
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Would initiate sms here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, smsIntent:Landroid/content/Intent;
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "MESSAGE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    const/4 v1, 0x1

    return v1
.end method

.method private handleSpeak(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/HomeApplication;->speakText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Could not speak barcode text"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 6
    .parameter "barcode"

    .prologue
    const/4 v2, 0x0

    .line 106
    const/4 v1, 0x3

    sget-object v3, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking barcode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->match(Lcom/google/android/libraries/barhopper/Barcode;)Landroid/util/Pair;

    move-result-object v0

    .line 109
    .local v0, tuple:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/home/camera/QrCodeHandler$Type;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    move v1, v2

    .line 143
    :goto_0
    return v1

    .line 113
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    #getter for: Lcom/google/glass/home/camera/QrCodeHandler$Type;->requiresLab:Z
    invoke-static {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->access$000(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->qrLabEnabled:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found QR code of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    #getter for: Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->access$100(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v3, p0, Lcom/google/glass/home/camera/QrCodeHandler;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/logging/UserEventAction;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    #getter for: Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->access$100(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 122
    :cond_2
    sget-object v3, Lcom/google/glass/home/camera/QrCodeHandler$1;->$SwitchMap$com$google$glass$home$camera$QrCodeHandler$Type:[I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    invoke-virtual {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 143
    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleHangout(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGlasscast(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGeo(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleSpeak(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 132
    :pswitch_4
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleLink(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 134
    :pswitch_5
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handlePhoneCall(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 136
    :pswitch_6
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleEmail(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 138
    :pswitch_7
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGuide(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 140
    :pswitch_8
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleSMS(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
