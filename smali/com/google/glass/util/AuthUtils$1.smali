.class Lcom/google/glass/util/AuthUtils$1;
.super Ljava/lang/Object;
.source "AuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/AuthUtils;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/util/AuthUtils;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/util/AuthUtils$1;->this$0:Lcom/google/glass/util/AuthUtils;

    iput-object p2, p0, Lcom/google/glass/util/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, futures:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/AccountManagerFuture<*>;>;"
    iget-object v8, p0, Lcom/google/glass/util/AuthUtils$1;->this$0:Lcom/google/glass/util/AuthUtils;

    #getter for: Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/google/glass/util/AuthUtils;->access$000(Lcom/google/glass/util/AuthUtils;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 156
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accounts."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v2, v6

    .line 158
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing account: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v8, p0, Lcom/google/glass/util/AuthUtils$1;->this$0:Lcom/google/glass/util/AuthUtils;

    #getter for: Lcom/google/glass/util/AuthUtils;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/google/glass/util/AuthUtils;->access$000(Lcom/google/glass/util/AuthUtils;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8, v0, v11, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 163
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerFuture;

    .line 165
    .local v4, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Account removal result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, e:Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Account removal canceled."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 168
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 169
    .local v3, e:Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Account removal failed."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 170
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v3

    .line 171
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/util/AuthUtils;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Account removal failed."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 175
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    :cond_1
    iget-object v8, p0, Lcom/google/glass/util/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    .line 176
    iget-object v8, p0, Lcom/google/glass/util/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_2
    return-void
.end method
