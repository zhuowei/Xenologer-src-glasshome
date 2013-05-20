.class public abstract Lcom/google/glass/util/AccountManagerWrapper;
.super Ljava/lang/Object;
.source "AccountManagerWrapper.java"


# static fields
.field private static wrapper:Lcom/google/glass/util/AccountManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/glass/util/AccountManagerWrapper;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/AccountManagerWrapper;->wrapper:Lcom/google/glass/util/AccountManagerWrapper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/google/glass/util/GmsAccountManagerWrapper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/GmsAccountManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/util/AccountManagerWrapper;->wrapper:Lcom/google/glass/util/AccountManagerWrapper;

    .line 27
    :cond_0
    sget-object v0, Lcom/google/glass/util/AccountManagerWrapper;->wrapper:Lcom/google/glass/util/AccountManagerWrapper;

    return-object v0
.end method

.method public static resetForTest()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/util/AccountManagerWrapper;->wrapper:Lcom/google/glass/util/AccountManagerWrapper;

    .line 43
    return-void
.end method

.method public static setAccountManagerWrapperForTest(Lcom/google/glass/util/AccountManagerWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 36
    invoke-static {p0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sput-object p0, Lcom/google/glass/util/AccountManagerWrapper;->wrapper:Lcom/google/glass/util/AccountManagerWrapper;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts()[Landroid/accounts/Account;
.end method

.method public abstract getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method
