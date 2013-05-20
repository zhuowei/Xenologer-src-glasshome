.class public final Lcom/google/glass/hidden/HiddenPowerManager;
.super Ljava/lang/Object;
.source "HiddenPowerManager.java"


# static fields
.field public static final EXTRA_SCREEN_OFF:Ljava/lang/String; = "screen_off"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preventScreenOn(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "prevent"

    .prologue
    .line 17
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 18
    .local v0, pm:Landroid/os/PowerManager;
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "preventScreenOn"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
