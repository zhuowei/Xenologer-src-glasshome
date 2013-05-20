.class public Lcom/google/glass/net/ServerConstants;
.super Ljava/lang/Object;
.source "ServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ServerConstants$Action;
    }
.end annotation


# static fields
.field private static final AUTOPUSH_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final AUTOPUSH_PATH_COMPONENT:Ljava/lang/String; = "autopush"

.field private static final CHECK_SETUP_ACCESS_SUFFIX:Ljava/lang/String; = "_/checksetupaccess"

.field private static final CLIENT_PROXY_PATH_COMPONENT:Ljava/lang/String; = "cp"

.field private static final DEV_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final DEV_PATH_COMPONENT:Ljava/lang/String; = "dev"

.field private static final GLASS_USER_AGENT:Ljava/lang/String; = null

.field public static final HELP_LINK:Ljava/lang/String; = "https://support.google.com/glass"

.field private static final MY_GLASS_PAGE_SUFFIX:Ljava/lang/String; = "myglass"

.field private static final PROD_DOMAIN:Ljava/lang/String; = "clients2.google.com"

.field private static final PROD_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.google.com/"

.field private static final PROD_PATH_COMPONENT:Ljava/lang/String; = "glass"

.field private static final SETUP_PAGE_SUFFIX:Ljava/lang/String; = "ml2"

.field private static final STAGING_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final STAGING_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.sandbox.google.com/staging/fe/"

.field private static final STAGING_PATH_COMPONENT:Ljava/lang/String; = "staging"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/net/ServerConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ServerConstants;->TAG:Ljava/lang/String;

    .line 133
    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Glass 1 Build/IMM76L; %s) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ro.build.version.glass"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ServerConstants;->GLASS_USER_AGENT:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "b"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckSetupAccessUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_/checksetupaccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFrontendPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "https://glass.google.com/"

    return-object v0
.end method

.method public static getMyGlassUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "myglass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResumableUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "uploads"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->PRODUCTION_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v0, "clients2.google.com"

    .line 155
    .local v0, domain:Ljava/lang/String;
    const-string v1, "glass"

    .line 172
    .local v1, environmentPath:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, rootUrl:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/net/ServerConstants;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v2

    .line 156
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #environmentPath:Ljava/lang/String;
    .end local v2           #rootUrl:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->STAGING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    const-string v0, "glass.sandbox.google.com"

    .line 158
    .restart local v0       #domain:Ljava/lang/String;
    const-string v1, "staging"

    .restart local v1       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #environmentPath:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->TESTING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    const-string v0, "glass.sandbox.google.com"

    .line 162
    .restart local v0       #domain:Ljava/lang/String;
    const-string v1, "autopush"

    .restart local v1       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #environmentPath:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    const-string v0, "glass.sandbox.google.com"

    .line 165
    .restart local v0       #domain:Ljava/lang/String;
    const-string v1, "dev"

    .restart local v1       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #environmentPath:Ljava/lang/String;
    :cond_3
    const-string v0, "clients2.google.com"

    .line 169
    .restart local v0       #domain:Ljava/lang/String;
    const-string v1, "glass"

    .restart local v1       #environmentPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSetupPageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ml2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/glass/net/ServerConstants;->GLASS_USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method static makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "action"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "action"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
