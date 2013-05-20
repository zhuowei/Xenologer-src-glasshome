.class public final Lcom/google/glass/hidden/BatteryIndicator;
.super Ljava/lang/Object;
.source "BatteryIndicator.java"


# static fields
.field private static final ACTION_SHOW:Ljava/lang/String; = "com.google.glass.systemui.ACTION_SHOW_BATTERY"

.field private static final EXTRA_SHOW:Ljava/lang/String; = "show"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "show"

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.systemui.ACTION_SHOW_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
