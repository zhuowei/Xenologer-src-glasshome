.class Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MirrorCommandEntityListFragment.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;-><init>(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    #getter for: Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandEntities:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->access$300(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    #getter for: Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandEntities:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->access$300(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    invoke-virtual {v3}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 51
    .local v2, layoutInflator:Landroid/view/LayoutInflater;
    sget v3, Lcom/google/glass/home/R$layout;->touch_menu_entity_item:I

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 53
    .local v1, itemView:Lcom/google/glass/home/voice/MainMenuEntityItemView;
    iget-object v3, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    #getter for: Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
    invoke-static {v3}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->access$100(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setVoiceMenuEnvironment(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 54
    iget-object v3, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    #getter for: Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-static {v3}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->access$200(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setCommandType(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    .line 55
    move-object p2, v1

    .line 58
    .end local v1           #itemView:Lcom/google/glass/home/voice/MainMenuEntityItemView;
    .end local v2           #layoutInflator:Landroid/view/LayoutInflater;
    :cond_0
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    iget-object v3, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    #getter for: Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandEntities:Ljava/util/List;
    invoke-static {v3}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->access$300(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    move-object v3, p2

    .line 60
    check-cast v3, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 62
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 81
    return-void
.end method
