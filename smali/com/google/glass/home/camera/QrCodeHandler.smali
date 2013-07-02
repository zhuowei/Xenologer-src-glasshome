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
    .line 38
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
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 95
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    .line 96
    new-instance v0, Lcom/google/glass/util/GuideHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/GuideHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->guideHelper:Lcom/google/glass/util/GuideHelper;

    .line 97
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->QUICK_QR_CODE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->qrLabEnabled:Z

    .line 98
    return-void
.end method

.method private handleEmail(Ljava/lang/String;)Z
    .locals 5
    .parameter "emailAddress"

    .prologue
    const/4 v4, 0x1

    .line 254
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Would initiate email here"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    return v4
.end method

.method private handleGeo(Ljava/lang/String;)Z
    .locals 3
    .parameter "locationQuery"

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v2, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {p1, v1}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, navigationIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v0           #navigationIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleGlasscast(Ljava/lang/String;)Z
    .locals 8
    .parameter "bluetoothDeviceAddress"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    const/16 v2, 0xa

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->companionDeviceToPair:Landroid/bluetooth/BluetoothDevice;

    .line 225
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Setting up companion device to start pairing & screencast."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->companionDeviceToPair:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendMessageToCompanionService(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Wasn\'t able to get a valid CompanionService reference."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private handleGuide(Ljava/lang/String;)Z
    .locals 5
    .parameter "encryptedText"

    .prologue
    const/4 v1, 0x0

    .line 284
    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v3, "Sending intent to guide"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/home/camera/QrCodeHandler;->guideHelper:Lcom/google/glass/util/GuideHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/GuideHelper;->showAppointment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v3, "Guide app is not installed. Is this a guide device?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleHangout(Ljava/lang/String;)Z
    .locals 3
    .parameter "roomId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;Z)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method private handleLink(Ljava/lang/String;)Z
    .locals 3
    .parameter "link"

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    const/4 v1, 0x1

    return v1
.end method

.method private handlePhoneCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 242
    sget-object v0, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v1, "Initiating phone call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastDial(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method private handleSMS(Ljava/lang/String;)Z
    .locals 4
    .parameter "smsAddress"

    .prologue
    .line 272
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Would initiate sms here"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, smsIntent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "MESSAGE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    const/4 v1, 0x1

    return v1
.end method

.method private handleSpeak(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/camera/QrCodeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/HomeApplication;->speakText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler;->TAG:Ljava/lang/String;

    const-string v4, "Could not speak barcode text"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 179
    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 6
    .parameter "barcode"

    .prologue
    const/4 v2, 0x0

    .line 107
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

    invoke-static {v1, v3, v4}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->match(Lcom/google/android/libraries/barhopper/Barcode;)Landroid/util/Pair;

    move-result-object v0

    .line 110
    .local v0, tuple:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/home/camera/QrCodeHandler$Type;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    move v1, v2

    .line 144
    :goto_0
    return v1

    .line 114
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

    .line 115
    goto :goto_0

    .line 118
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

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    #getter for: Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->access$100(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v3, p0, Lcom/google/glass/home/camera/QrCodeHandler;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/logging/UserEventAction;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    #getter for: Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->access$100(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 123
    :cond_2
    sget-object v3, Lcom/google/glass/home/camera/QrCodeHandler$1;->$SwitchMap$com$google$glass$home$camera$QrCodeHandler$Type:[I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    invoke-virtual {v1}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 144
    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleHangout(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGlasscast(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGeo(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleSpeak(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleLink(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 135
    :pswitch_5
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handlePhoneCall(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 137
    :pswitch_6
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleEmail(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 139
    :pswitch_7
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleGuide(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 141
    :pswitch_8
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/home/camera/QrCodeHandler;->handleSMS(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 123
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
