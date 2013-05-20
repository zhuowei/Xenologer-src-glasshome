.class public Lcom/google/glass/entity/EntityFragment;
.super Lcom/google/glass/app/GlassFragment;
.source "EntityFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityFragment$EntityAdapter;,
        Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;
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


# instance fields
.field private adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

.field private final entityUri:Landroid/net/Uri;

.field private view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/EntityFragment;->COLUMNNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "entityUri"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/app/GlassFragment;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/glass/entity/EntityFragment;->entityUri:Landroid/net/Uri;

    .line 52
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->onConfirm(Lcom/google/glass/app/GlassActivity;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityFragment$EntityAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityFragment;->adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 59
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

    .line 115
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntityFragment;->entityUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/glass/entity/EntityFragment;->COLUMNNS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    new-instance v0, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    .line 65
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    iget-object v1, p0, Lcom/google/glass/entity/EntityFragment;->adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onDestroy()V

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 87
    iget-object v1, p0, Lcom/google/glass/entity/EntityFragment;->adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 106
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 120
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    invoke-virtual {v0, p2}, Lcom/google/glass/entity/EntityFragment$EntityAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 121
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->setSelection(I)V

    .line 122
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 126
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->adapter:Lcom/google/glass/entity/EntityFragment$EntityAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityFragment$EntityAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->deactivate()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->activate()V

    .line 75
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/entity/EntityFragment;->view:Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/entity/EntityFragment$EntityHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method
