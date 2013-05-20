.class Lcom/google/glass/home/voice/TouchMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "TouchMenuAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# instance fields
.field private final environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/util/List;)V
    .locals 0
    .parameter "environment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, items:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 24
    iput-object p2, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->items:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance p2, Lcom/google/glass/home/voice/TouchMenuItemView;

    .end local p2
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p2, v0}, Lcom/google/glass/home/voice/TouchMenuItemView;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 47
    .restart local p2
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    move-object v0, p2

    .line 49
    check-cast v0, Lcom/google/glass/home/voice/TouchMenuItemView;

    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/TouchMenuItemView;->bind(Lcom/google/glass/home/voice/menu/VoiceMenuItem;)V

    .line 50
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 54
    return-void
.end method
