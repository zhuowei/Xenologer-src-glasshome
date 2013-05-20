.class public final Lcom/google/glass/maps/NavigationActiveItemParams;
.super Ljava/lang/Object;
.source "NavigationActiveItemParams.java"


# static fields
.field private static final KEY_DESTINATION_NAME:Ljava/lang/String; = "destination_name"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "icon_uri"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TIME_REMAINING:Ljava/lang/String; = "time_remaining"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method private areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 97
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/maps/NavigationActiveItemParams;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .restart local p0
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .end local p0
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    instance-of v5, p1, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-nez v5, :cond_2

    move v3, v4

    .line 82
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 84
    check-cast v2, Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 85
    .local v2, other:Lcom/google/glass/maps/NavigationActiveItemParams;
    iget-object v5, v2, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    iget-object v5, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, key:Ljava/lang/String;
    iget-object v5, v2, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/glass/maps/NavigationActiveItemParams;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 90
    goto :goto_0
.end method

.method public getDestinationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRemaining()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time_remaining"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 67
    const/4 v2, 0x1

    .line 68
    .local v2, result:I
    iget-object v4, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, value:Ljava/lang/Object;
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 71
    mul-int/lit8 v5, v2, 0x1f

    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int v2, v5, v4

    .line 72
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    .line 73
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public setDestinationName(Ljava/lang/String;)V
    .locals 2
    .parameter "destinationName"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 2
    .parameter "iconUri"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public setTimeRemaining(Ljava/lang/String;)V
    .locals 2
    .parameter "timeRemaining"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time_remaining"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    return-object v0
.end method
