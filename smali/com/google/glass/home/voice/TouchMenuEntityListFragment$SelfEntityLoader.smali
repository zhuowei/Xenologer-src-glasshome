.class Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;
.super Landroid/content/CursorLoader;
.source "TouchMenuEntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/TouchMenuEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfEntityLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "cols"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;->setProjection([Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 134
    .local v1, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v1, :cond_0

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/Entity;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :goto_0
    new-instance v2, Lcom/google/glass/entity/EntityListCursor;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/glass/entity/EntityListCursor;-><init>([Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 138
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0       #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
