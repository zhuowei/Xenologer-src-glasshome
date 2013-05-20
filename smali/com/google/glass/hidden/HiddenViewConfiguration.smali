.class public final Lcom/google/glass/hidden/HiddenViewConfiguration;
.super Ljava/lang/Object;
.source "HiddenViewConfiguration.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTapTimeout(Landroid/view/ViewConfiguration;)J
    .locals 2
    .parameter "config"

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "getDeviceTapTimeout"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
