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


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public updateTimeZone()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;I)V
    .locals 2
    .parameter "timeZone"
    .parameter "priority"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "time_zone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "priority"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
