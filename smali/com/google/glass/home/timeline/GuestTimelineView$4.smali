.class Lcom/google/glass/home/timeline/GuestTimelineView$4;
.super Lcom/google/glass/home/timeline/database/TimelineCursorManager;
.source "GuestTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/GuestTimelineView;->createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/GuestTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/GuestTimelineView;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/glass/home/timeline/GuestTimelineView$4;->this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
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
    .line 131
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 134
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    const-string v1, "New timeline database content loaded; updating views."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/google/glass/home/timeline/GuestTimelineView$4;->this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/GuestTimelineView;->updateViews(Z)V

    .line 136
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/GuestTimelineView$4;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
