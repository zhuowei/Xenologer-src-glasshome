.class Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;
.super Landroid/content/CursorLoader;
.source "TouchMenuEntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/TouchMenuEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlusSharesEntityLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "cols"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;->setProjection([Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/google/glass/entity/EntityListCursor;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/entity/EntityHelper;->getPlusShareTargets()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityListCursor;-><init>([Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
