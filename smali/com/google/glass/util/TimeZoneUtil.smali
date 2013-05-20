.class public Lcom/google/glass/util/TimeZoneUtil;
.super Ljava/lang/Object;
.source "TimeZoneUtil.java"


# static fields
.field public static final ACTION_FORCE_UPDATE_TIME_ZONE:Ljava/lang/String; = "com.google.glass.timezone.UPDATE_TIME_ZONE"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field public static final EXTRA_TIME_ZONE:Ljava/lang/String; = "time_zone"

.field public static final TZ_PRIORITY_COMPANION:I = 0x64

.field public static final TZ_PRIORITY_DEFAULT:I = 0x0

.field public static final TZ_PRIORITY_LOCATION:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateTimeZone(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public static updateTimeZone(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "timeZone"
    .parameter "priority"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "time_zone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "priority"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
