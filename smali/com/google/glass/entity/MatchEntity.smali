.class public abstract Lcom/google/glass/entity/MatchEntity;
.super Landroid/os/AsyncTask;
.source "MatchEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/Entity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final entityHelper:Lcom/google/glass/entity/EntityHelper;

.field private targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/entity/MatchEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/entity/MatchEntity;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/google/glass/entity/EntityHelper;)V
    .locals 1
    .parameter "entityHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 34
    iput-object p1, p0, Lcom/google/glass/entity/MatchEntity;->entityHelper:Lcom/google/glass/entity/EntityHelper;

    .line 35
    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v1, "Phone number was null or empty, not setting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-object p0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->hasPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->addSecondaryPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    goto :goto_0
.end method

.method public byPartialEntity(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 136
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/MatchEntity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 6
    .parameter "params"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    iget-object v4, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 41
    .local v3, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Searching for entity via phone number."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v4, p0, Lcom/google/glass/entity/MatchEntity;->entityHelper:Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity found via phone number."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 82
    :goto_0
    return-object v4

    .line 48
    :cond_0
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity not found via phone number."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 51
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Secondary phone numbers found, searching for each of those."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, secondaryPhoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/entity/MatchEntity;->entityHelper:Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v4, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity found via secondary phone number."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 56
    goto :goto_0

    .line 59
    .end local v2           #secondaryPhoneNumber:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity found via secondary phone number."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Searching for entity via id."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v4, p0, Lcom/google/glass/entity/MatchEntity;->entityHelper:Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity found via id."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity not found via id."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_5
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 73
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Searching for entity via email address."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/google/glass/entity/MatchEntity;->entityHelper:Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity found via email address."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 77
    goto/16 :goto_0

    .line 79
    :cond_6
    sget-object v4, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v5, "Entity not found via email address."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEntityMatched(Lcom/google/googlex/glass/common/proto/Entity;)V
.end method

.method public abstract onNoMatchFound()V
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v1, "No entity found, sending to onNoMatchFound()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/entity/MatchEntity;->onNoMatchFound()V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v1, "Entity found, sending to onEntityMatched()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onEntityMatched(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onPostExecute(Lcom/google/googlex/glass/common/proto/Entity;)V

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->TAG:Ljava/lang/String;

    const-string v1, "Email address was null or empty, not setting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-object p0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    goto :goto_0
.end method
