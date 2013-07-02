.class public Lcom/google/glass/home/voice/TouchMenuEntityListFragment;
.super Lcom/google/glass/entity/CursorEntityListFragment;
.source "TouchMenuEntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;,
        Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;
    }
.end annotation


# static fields
.field private static final NO_IDX:I = -0x1


# instance fields
.field private final command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field private displayNameIdx:I

.field private final entityUri:Landroid/net/Uri;

.field private final environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field private idIdx:I

.field private imageUrlIdx:I

.field private protobuffIdx:I


# direct methods
.method public constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Landroid/net/Uri;Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 1
    .parameter "environment"
    .parameter "entityUri"
    .parameter "prependEntityType"
    .parameter "command"

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p3}, Lcom/google/glass/entity/CursorEntityListFragment;-><init>(Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;)V

    .line 46
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    .line 47
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    .line 48
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    .line 49
    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    .line 54
    iput-object p2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->entityUri:Landroid/net/Uri;

    .line 55
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 56
    iput-object p4, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 57
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v6, -0x1

    .line 105
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    if-ne v5, v6, :cond_1

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cursor columns were not retrieved yet"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v3, p1

    .line 109
    check-cast v3, Lcom/google/glass/entity/EntityItemView;

    .line 110
    .local v3, itemView:Lcom/google/glass/entity/EntityItemView;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, imageUrl:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, displayName:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, cacheId:Ljava/lang/String;
    iget v5, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 115
    .local v4, protobuff:[B
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 116
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getPrependCursorSize()I

    move-result v6

    if-gt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v5}, Lcom/google/glass/entity/EntityItemView;->setIsPrepend(Z)V

    .line 117
    return-void

    .line 116
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;
    .locals 8
    .parameter "cols"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 62
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;

    invoke-direct {v0, v1, p1}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$SelfEntityLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 75
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    sget-object v3, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->VIDEO_CALL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne v2, v3, :cond_1

    .line 67
    new-instance v0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;

    invoke-direct {v0, v1, p1}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment$PlusSharesEntityLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    new-instance v7, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v7}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 70
    .local v7, selectionBuilder:Lcom/google/glass/util/SelectionBuilder;
    const-string v2, "is_in_my_contacts=?"

    const-string v3, "1"

    invoke-virtual {v7, v2, v3}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->entityUri:Landroid/net/Uri;

    const-string v6, "display_name"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, loader:Landroid/content/CursorLoader;
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 96
    .local v1, layoutInflator:Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/home/R$layout;->touch_menu_entity_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 98
    .local v0, itemView:Lcom/google/glass/home/voice/MainMenuEntityItemView;
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setVoiceMenuEnvironment(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    .line 99
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setEntityCommand(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 100
    return-object v0
.end method

.method protected setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "image_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->imageUrlIdx:I

    .line 85
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->displayNameIdx:I

    .line 86
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->idIdx:I

    .line 87
    const-string v0, "protobuf_blob"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->protobuffIdx:I

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 91
    return-void
.end method
