.class public Lcom/google/glass/maps/NavigationLauncher;
.super Ljava/lang/Object;
.source "NavigationLauncher.java"


# static fields
.field private static final ACTION_NAVIGATION_BROADCAST:Ljava/lang/String; = "com.google.glass.action.NAVIGATION_BROADCAST"

.field private static final EXTRA_NAVIGATION_OPERATION:Ljava/lang/String; = "operation"

.field public static final EXTRA_VOICE_SEARCH_RESULT:Ljava/lang/String; = "voice_search_result"

.field private static final NAVIGATE_URI_PREFIX:Ljava/lang/String; = "google.navigation:"

.field public static final NAVIGATION_OPERATION_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final NAVIGATION_OPERATION_STOP:Ljava/lang/String; = "stop"

.field public static final NAVIGATION_OPERATION_WAKE_UP:Ljava/lang/String; = "wake_up"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/maps/NavigationLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static bringNavigationToForeground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "foreground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method private static buildIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    return-object v0
.end method

.method public static getNavigationUriString(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/String;
    .locals 6
    .parameter "location"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLatitude()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLongitude()Z

    move-result v3

    if-nez v3, :cond_3

    .line 94
    :cond_2
    sget-object v3, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    const-string v4, "No address, display name, or lat/long for location, skipping navigation."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v3, 0x0

    .line 122
    :goto_0
    return-object v3

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v2, uri:Ljava/lang/StringBuilder;
    const-string v3, "google.navigation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLatitude()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    const-string v3, "ll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 108
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_5
    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 114
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_7
    const-string v3, "q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_8
    const-string v3, "&mode=mru"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static navigate(Lcom/google/googlex/glass/common/proto/Location;Landroid/content/Context;)Z
    .locals 2
    .parameter "location"
    .parameter "context"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationUriString(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, navigationUriString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    .line 77
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static navigate(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .parameter "query"
    .parameter "context"
    .parameter "displayVoiceSearchResult"

    .prologue
    const/4 v3, 0x0

    .line 138
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    .local v1, encodedQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "google.navigation:q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mode=mru"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/maps/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 145
    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 146
    const-string v4, "voice_search_result"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    const/4 v3, 0x1

    .end local v1           #encodedQuery:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    const-string v5, "Error encoding navigation query"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #encodedQuery:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 151
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    const-string v5, "No activity found to start navigation"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stopNavigation(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, stopNavigationIntent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public static wakeUpNavigation(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
