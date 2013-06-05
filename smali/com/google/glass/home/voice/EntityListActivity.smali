.class public Lcom/google/glass/home/voice/EntityListActivity;
.super Lcom/google/glass/home/voice/MainMenuActivity;
.source "EntityListActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# static fields
.field private static final EXTRA_ENTITY_COMMAND:Ljava/lang/String; = "entityCommand"

.field private static final EXTRA_ENTITY_TYPE:Ljava/lang/String; = "entityType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuActivity;-><init>()V

    return-void
.end method

.method public static startEntityListActivity(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 3
    .parameter "context"
    .parameter "entityType"
    .parameter "command"

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/EntityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "entityType"

    invoke-virtual {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "entityCommand"

    invoke-virtual {p2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/MainMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "entityType"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, strEntityType:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    move-result-object v7

    .line 31
    .local v7, entityType:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "entityCommand"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    move-result-object v6

    .line 32
    .local v6, command:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;
    const/4 v0, 0x0

    .line 33
    .local v0, sourceRestrict:Ljava/lang/String;
    const/4 v1, -0x1

    .line 34
    .local v1, maxRecentPromotes:I
    const/4 v2, -0x1

    .line 35
    .local v2, maxMostSharedPromotes:I
    sget-object v12, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->PLUS:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    if-ne v7, v12, :cond_0

    .line 36
    const-string v0, "api:442840586513"

    .line 37
    const/4 v1, 0x4

    .line 38
    const/4 v2, 0x4

    .line 40
    :cond_0
    sget-object v12, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne v6, v12, :cond_1

    move v4, v3

    .line 41
    .local v4, onlyCommTargets:Z
    :goto_0
    sget-object v12, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->CALL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne v6, v12, :cond_2

    move v5, v3

    .line 42
    .local v5, mustHavePhone:Z
    :goto_1
    const/4 v3, -0x1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->getShareContactsUri(Ljava/lang/String;IIIZZ)Landroid/net/Uri;

    move-result-object v10

    .line 44
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 45
    .local v9, trans:Landroid/app/FragmentTransaction;
    sget v3, Lcom/google/glass/home/R$id;->root:I

    new-instance v11, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;

    invoke-direct {v11, p0, v10, v6}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Landroid/net/Uri;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    const-string v12, "entity"

    invoke-virtual {v9, v3, v11, v12}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    return-void

    .end local v4           #onlyCommTargets:Z
    .end local v5           #mustHavePhone:Z
    .end local v9           #trans:Landroid/app/FragmentTransaction;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_1
    move v4, v11

    .line 40
    goto :goto_0

    .restart local v4       #onlyCommTargets:Z
    :cond_2
    move v5, v11

    .line 41
    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onPause()V

    .line 53
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->finish()V

    .line 54
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 69
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 74
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/google/glass/home/R$layout;->empty_layout:I

    return v0
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 81
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 82
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 89
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 90
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 77
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 94
    invoke-virtual {p1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 95
    return-void
.end method

.method public showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 0
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"

    .prologue
    .line 85
    return-void
.end method

.method public showProgressBar()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
