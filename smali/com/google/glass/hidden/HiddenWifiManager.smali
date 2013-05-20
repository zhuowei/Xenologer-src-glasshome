.class public final Lcom/google/glass/hidden/HiddenWifiManager;
.super Ljava/lang/Object;
.source "HiddenWifiManager.java"


# static fields
.field private static final SET_WIFI_AP_ENABLED_PARAMS:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/hidden/HiddenWifiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/HiddenWifiManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/wifi/WifiConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/hidden/HiddenWifiManager;->SET_WIFI_AP_ENABLED_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static disableWifiHotSpot(Landroid/net/wifi/WifiManager;)Z
    .locals 7
    .parameter "wifiManager"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v4, "setWifiApEnabled"

    sget-object v5, Lcom/google/glass/hidden/HiddenWifiManager;->SET_WIFI_AP_ENABLED_PARAMS:[Ljava/lang/Class;

    invoke-direct {v1, p0, v4, v5}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 56
    .local v1, setWifiApEnabledInvoker:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #setWifiApEnabledInvoker:Lcom/google/glass/hidden/MethodInvoker;
    :goto_0
    return v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/google/glass/hidden/HiddenWifiManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to invoke hidden api"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 61
    goto :goto_0
.end method

.method public static getBtcCtsMode(Landroid/net/wifi/WifiManager;)Z
    .locals 4
    .parameter "wifiManager"

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v2, Lcom/google/glass/hidden/MethodInvoker;

    const-string v3, "getBtcCtsMode"

    invoke-direct {v2, p0, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, enabled:Ljava/lang/Object;
    if-nez v0, :cond_0

    .end local v0           #enabled:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #enabled:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #enabled:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "wifiManager"

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "getWifiApConfiguration"

    invoke-direct {v1, p0, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .local v1, getWifiApStateInvoker:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #getWifiApStateInvoker:Lcom/google/glass/hidden/MethodInvoker;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/google/glass/hidden/HiddenWifiManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to invoke hidden api"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiApEnabledOrBeingEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 8
    .parameter "wifiManager"

    .prologue
    const/4 v6, 0x0

    .line 27
    :try_start_0
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v5, "getWifiApState"

    invoke-direct {v1, p0, v5}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .local v1, getWifiApStateInvoker:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 29
    .local v4, wifiApState:I
    const-class v5, Landroid/net/wifi/WifiManager;

    const-string v7, "WIFI_AP_STATE_ENABLING"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 30
    .local v3, wifiApEnabling:Ljava/lang/reflect/Field;
    const-class v5, Landroid/net/wifi/WifiManager;

    const-string v7, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 31
    .local v2, wifiApEnabled:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_1

    .line 33
    :cond_0
    const/4 v5, 0x1

    .line 38
    .end local v1           #getWifiApStateInvoker:Lcom/google/glass/hidden/MethodInvoker;
    .end local v2           #wifiApEnabled:Ljava/lang/reflect/Field;
    .end local v3           #wifiApEnabling:Ljava/lang/reflect/Field;
    .end local v4           #wifiApState:I
    :goto_0
    return v5

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/google/glass/hidden/HiddenWifiManager;->TAG:Ljava/lang/String;

    const-string v7, "Failed to invoke hidden api or find the hidden fields"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 38
    goto :goto_0
.end method

.method public static setBtcCtsMode(Landroid/net/wifi/WifiManager;Z)V
    .locals 4
    .parameter "wifiManager"
    .parameter "mode"

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "setBtcCtsMode"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method
