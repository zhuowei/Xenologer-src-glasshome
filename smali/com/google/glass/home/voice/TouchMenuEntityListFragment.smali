.class public Lcom/google/glass/home/voice/TouchMenuEntityListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "TouchMenuEntityListFragment.java"


# static fields
.field private static final NO_IDX:I = -0x1


# instance fields
.field private final command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field private displayNameIdx:I

.field private final environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field private idIdx:I

.field private imageUrlIdx:I

.field private protobuffIdx:I


# direct methods
.method public constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Landroid/net/Uri;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 1
    .parameter "environment"
    .parameter "entityUri"
    .parameter "command"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p2}, Lcom/google/glass/entity/EntityListFragment;-><init>(Landroid/net/Uri;)V

    .line 28
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    .line 29
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    .line 30
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    .line 31
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    .line 36
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 37
    iput-object p3, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 38
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v6, -0x1

    .line 66
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    if-ne v5, v6, :cond_1

    .line 68
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cursor columns were not retrieved yet"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v3, p1

    .line 70
    check-cast v3, Lcom/google/glass/home/voice/EntityItemView;

    .line 71
    .local v3, itemView:Lcom/google/glass/home/voice/EntityItemView;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, imageUrl:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, displayName:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, cacheId:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 76
    .local v4, protobuff:[B
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/glass/home/voice/EntityItemView;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 77
    return-void
.end method

.method protected newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 57
    .local v1, layoutInflator:Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/home/R$layout;->touch_menu_entity_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/EntityItemView;

    .line 59
    .local v0, itemView:Lcom/google/glass/home/voice/EntityItemView;
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/EntityItemView;->setVoiceMenuEnvironment(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 60
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/EntityItemView;->setEntityCommand(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 61
    return-object v0
.end method

.method protected setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "image_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    .line 46
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    .line 47
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    .line 48
    const-string v0, "protobuf_blob"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 52
    return-void
.end method
