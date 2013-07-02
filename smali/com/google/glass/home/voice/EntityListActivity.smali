.class public Lcom/google/glass/home/voice/EntityListActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "EntityListActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# static fields
.field private static final EXTRA_ENTITY_COMMAND:Ljava/lang/String; = "entityCommand"

.field private static final EXTRA_ENTITY_TYPE:Ljava/lang/String; = "entityType"

.field private static final EXTRA_MIRROR_COMMAND_TYPE:Ljava/lang/String; = "mirrorCommandType"


# instance fields
.field private entityListFragment:Lcom/google/glass/entity/EntityListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method public static startEntityListActivity(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 3
    .parameter "context"
    .parameter "entityType"
    .parameter "command"

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/EntityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "entityType"

    invoke-virtual {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "entityCommand"

    invoke-virtual {p2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public static startEntityListActivity(Lcom/google/glass/app/GlassActivity;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 2
    .parameter "context"
    .parameter "commandType"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/EntityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mirrorCommandType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected addFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "listFragment"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 74
    .local v0, trans:Landroid/app/FragmentTransaction;
    sget v1, Lcom/google/glass/home/R$id;->root:I

    const-string v2, "entity"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 76
    return-void
.end method

.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 0

    .prologue
    .line 164
    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "entityType"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "entityType"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, strEntityType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    move-result-object v3

    .line 45
    .local v3, entityType:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "entityCommand"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    move-result-object v0

    .line 47
    .local v0, command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;
    sget-object v4, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->COMMUNICATION_TARGETS:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    .line 48
    .local v4, prependEntityType:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    new-instance v6, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v6, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    const/4 v4, 0x0

    .line 53
    :cond_0
    :goto_0
    sget-object v6, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->VIDEO_CALL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne v0, v6, :cond_1

    .line 57
    const/4 v4, 0x0

    .line 59
    :cond_1
    new-instance v6, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;

    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->getAllEntitiesUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, p0, v7, v4, v0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Landroid/net/Uri;Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    iput-object v6, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    .line 69
    .end local v0           #command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;
    .end local v3           #entityType:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    .end local v4           #prependEntityType:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    .end local v5           #strEntityType:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {p0, v6}, Lcom/google/glass/home/voice/EntityListActivity;->addFragment(Landroid/app/Fragment;)V

    .line 70
    return-void

    .line 50
    .restart local v0       #command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;
    .restart local v3       #entityType:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    .restart local v4       #prependEntityType:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    .restart local v5       #strEntityType:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->PLUS:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    if-ne v3, v6, :cond_0

    .line 51
    sget-object v4, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->PLUS_SHARES:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    goto :goto_0

    .line 63
    .end local v0           #command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;
    .end local v3           #entityType:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    .end local v4           #prependEntityType:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    .end local v5           #strEntityType:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mirrorCommandType"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 65
    .local v1, commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 67
    .local v2, entityList:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    new-instance v6, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;

    invoke-direct {v6, p0, v1, v2}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)V

    iput-object v6, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->finish()V

    .line 87
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 102
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 107
    return-void
.end method

.method public preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 0
    .parameter "voiceConfig"

    .prologue
    .line 175
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/google/glass/home/R$layout;->empty_layout:I

    return v0
.end method

.method public refeedLastVoiceCommand()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 114
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 115
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 125
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 126
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 110
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 0
    .parameter "voiceConfig"

    .prologue
    .line 170
    return-void
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityListFragment;->shouldAllowLongPress()Z

    move-result v0

    return v0
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 130
    invoke-virtual {p1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 131
    return-void
.end method

.method public showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 0
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"

    .prologue
    .line 118
    return-void
.end method

.method public showProgressBar()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public showShareTargetList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 0
    .parameter "menuItem"
    .parameter "commandType"

    .prologue
    .line 121
    return-void
.end method
