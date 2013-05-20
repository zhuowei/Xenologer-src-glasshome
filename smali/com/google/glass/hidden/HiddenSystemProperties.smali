.class public final Lcom/google/glass/hidden/HiddenSystemProperties;
.super Ljava/lang/Object;
.source "HiddenSystemProperties.java"


# static fields
.field private static final SYSTEM_PROPERTIES_CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/google/glass/hidden/HiddenSystemProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/HiddenSystemProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 32
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v4, v5}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 35
    .local v1, invoker:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 37
    sget-object v4, Lcom/google/glass/hidden/HiddenSystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "Failed to call SystemProperties#get method. Returning default value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v1           #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .end local v2           #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #value:Ljava/lang/Object;
    .end local p1
    :goto_0
    return-object p1

    .line 40
    .restart local v1       #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .restart local v2       #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #value:Ljava/lang/Object;
    .restart local p1
    :cond_0
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #value:Ljava/lang/Object;
    move-object p1, v3

    goto :goto_0

    .line 41
    .end local v1           #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .end local v2           #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/google/glass/hidden/HiddenSystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "SystemProperties class not found. Returning default value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 8
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 15
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 16
    .local v2, systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v4, "getBoolean"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v4, v5}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 18
    .local v1, invoker:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 20
    sget-object v4, Lcom/google/glass/hidden/HiddenSystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "Failed to call SystemProperties#getBoolean method. Returning default value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .end local v1           #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .end local v2           #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #value:Ljava/lang/Object;
    .end local p1
    :goto_0
    return p1

    .line 23
    .restart local v1       #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .restart local v2       #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #value:Ljava/lang/Object;
    .restart local p1
    :cond_0
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 24
    .end local v1           #invoker:Lcom/google/glass/hidden/MethodInvoker;
    .end local v2           #systemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/google/glass/hidden/HiddenSystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "SystemProperties class not found. Returning default value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
