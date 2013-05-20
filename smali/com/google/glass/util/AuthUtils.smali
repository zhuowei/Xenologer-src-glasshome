.class public Lcom/google/glass/util/AuthUtils;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# static fields
.field private static final AUTH_TOKEN_HEADER:Ljava/lang/String; = "SC"

.field private static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "android"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/util/AuthUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/glass/util/AuthUtils;->context:Landroid/content/Context;

    .line 53
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/AuthUtils;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/AuthUtils;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/util/AuthUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getAuthToken()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 63
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 64
    sget-object v5, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    const-string v6, "There is no account. Cannot get auth token."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    const/4 v3, 0x1

    .line 73
    .local v3, notifyAuthFailure:Z
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "android"

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v6, v7}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, authToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    sget-object v5, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    const-string v6, "Cannot get auth token."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v4

    .line 80
    goto :goto_0

    .line 83
    .end local v1           #authToken:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Landroid/accounts/OperationCanceledException;
    sget-object v5, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v1, v4

    .line 90
    goto :goto_0

    .line 85
    :catch_1
    move-exception v2

    .line 86
    .local v2, e:Landroid/accounts/AuthenticatorException;
    sget-object v5, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 88
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public createAuthHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/glass/util/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget-object v2, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    const-string v3, "No auth token available, cannot create auth headers."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    .line 130
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 129
    .restart local v0       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "SC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createBatchAuthToken()Lcom/google/googlex/glass/common/proto/AuthToken;
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/glass/util/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->newBuilder()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->setType(Lcom/google/googlex/glass/common/proto/AuthTokenType;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteAllAccounts(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 150
    new-instance v0, Lcom/google/glass/util/AuthUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/AuthUtils$1;-><init>(Lcom/google/glass/util/AuthUtils;Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public getGoogleAccount()Landroid/accounts/Account;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v6, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v6, :cond_1

    .line 103
    sget-object v6, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    const-string v7, "Account manager was null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v6, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 108
    .local v1, accounts:[Landroid/accounts/Account;
    if-nez v1, :cond_2

    move-object v0, v5

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v2, v3

    .line 112
    .local v0, a:Landroid/accounts/Account;
    const-string v6, "com.google"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/accounts/Account;
    :cond_3
    move-object v0, v5

    .line 116
    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-direct {p0}, Lcom/google/glass/util/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public restartSetupProcess(Z)V
    .locals 1
    .parameter "reboot"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/util/AuthUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->checkAndEnableSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Lcom/google/glass/util/AuthUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/AuthUtils$2;-><init>(Lcom/google/glass/util/AuthUtils;Z)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/AccountManagerCallback;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 220
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 221
    sget-object v0, Lcom/google/glass/util/AuthUtils;->TAG:Ljava/lang/String;

    const-string v2, "updateCredentials: no Google account exists"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-object v4

    .line 228
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v3, options:Landroid/os/Bundle;
    const-string v0, "password"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "android"

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    goto :goto_0
.end method
