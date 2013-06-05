.class public abstract Lcom/google/glass/entity/EntityListFragment;
.super Lcom/google/glass/app/GlassFragment;
.source "EntityListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityListFragment$EntityAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/app/GlassFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNNS:[Ljava/lang/String; = null

.field private static final CURSOR_LOADER_ID:I = 0x0

.field public static final FRAGMENT_ID:Ljava/lang/String; = "entity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

.field private final entityUri:Landroid/net/Uri;

.field private scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityListFragment;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/EntityListFragment;->COLUMNNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "entityUri"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/app/GlassFragment;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/google/glass/entity/EntityListFragment;->entityUri:Landroid/net/Uri;

    .line 59
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method protected abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/EntityListFragment$EntityAdapter;-><init>(Lcom/google/glass/entity/EntityListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->adapter:Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 66
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->entityUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/glass/entity/EntityListFragment;->COLUMNNS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    sget v0, Lcom/google/glass/common/R$layout;->entity_scroller:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/common/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHorizontalScrollView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    .line 73
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 74
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->adapter:Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onDestroy()V

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 95
    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->adapter:Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityListFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/EntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 109
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->deactivate()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->activate()V

    .line 83
    return-void
.end method

.method protected setCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->adapter:Lcom/google/glass/entity/EntityListFragment$EntityAdapter;

    invoke-virtual {v1, p1}, Lcom/google/glass/entity/EntityListFragment$EntityAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 123
    .local v0, count:I
    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 124
    if-nez v0, :cond_0

    .line 125
    sget-object v1, Lcom/google/glass/entity/EntityListFragment;->TAG:Ljava/lang/String;

    const-string v2, "Cursor had no data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #count:I
    :cond_0
    return-void
.end method
