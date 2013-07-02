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

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRAVEL_MODE_BICYCLING_VALUE:Ljava/lang/String; = "b"

.field private static final TRAVEL_MODE_DRIVING_VALUE:Ljava/lang/String; = "d"

.field private static final TRAVEL_MODE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAVEL_MODE_MOST_RECENTLY_USED:Ljava/lang/String; = "mru"

.field private static final TRAVEL_MODE_TRANSIT_VALUE:Ljava/lang/String; = "r"

.field private static final TRAVEL_MODE_WALKING_VALUE:Ljava/lang/String; = "w"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/maps/NavigationLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->DRIVING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "d"

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->WALKING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v3, "w"

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->BICYCLING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v5, "b"

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->TRANSIT:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v7, "r"

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v9, "mru"

    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationLauncher;->TRAVEL_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static bringNavigationToForeground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "foreground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private static buildIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    return-object v0
.end method

.method public static getNavigationIntent(Lcom/google/googlex/glass/common/proto/Location;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Landroid/content/Intent;
    .locals 2
    .parameter "location"
    .parameter "travelMode"

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationUriString(Lcom/google/googlex/glass/common/proto/Location;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, navigationUriString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNavigationIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 5
    .parameter "query"
    .parameter "displayVoiceSearchResult"

    .prologue
    .line 158
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    .local v1, encodedQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google.navigation:q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mru"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/maps/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 166
    .local v2, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 167
    const-string v3, "voice_search_result"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .end local v1           #encodedQuery:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    const-string v4, "Error encoding navigation query"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static getNavigationUriString(Lcom/google/googlex/glass/common/proto/Location;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Ljava/lang/String;
    .locals 6
    .parameter "location"
    .parameter "travelMode"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 110
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

    .line 111
    :cond_2
    sget-object v3, Lcom/google/glass/maps/NavigationLauncher;->TAG:Ljava/lang/String;

    const-string v4, "No address, display name, or lat/long for location, skipping navigation."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v3, 0x0

    .line 144
    :goto_0
    return-object v3

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v2, uri:Ljava/lang/StringBuilder;
    const-string v3, "google.navigation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLatitude()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->hasLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
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

    .line 123
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 125
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 131
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_7
    const-string v3, "q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_8
    if-nez p1, :cond_9

    .line 139
    sget-object p1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 141
    :cond_9
    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    sget-object v3, Lcom/google/glass/maps/NavigationLauncher;->TRAVEL_MODE_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static stopNavigation(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, stopNavigationIntent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public static wakeUpNavigation(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    return-void
.end method
