.class public abstract Lcom/google/glass/phone/PhoneCallManagerServiceConnection;
.super Ljava/lang/Object;
.source "PhoneCallManagerServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final ACTION_GET_MANAGEMENT_BINDER:Ljava/lang/String; = "com.google.glass.phone.MANAGEMENT_BINDER"

.field static final PHONE_CALL_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.phone"

    const-string v2, "com.google.glass.phone.PhoneCallService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    sget-object v1, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v2, "Binding to phone call service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.phone.MANAGEMENT_BINDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    return-void
.end method

.method public abstract onListenerAttached(Lcom/google/glass/phone/IPhoneCallListener;)V
.end method

.method public abstract onListenerDetached()V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "Service connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerAttached(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 32
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "Service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerDetached()V

    .line 38
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding from phone call service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerDetached()V

    .line 53
    return-void
.end method
