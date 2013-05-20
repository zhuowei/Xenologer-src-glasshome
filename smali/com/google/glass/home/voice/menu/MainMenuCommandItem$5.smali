.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newSendMessageItem(Ljava/util/List;)Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contactEntities:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;Ljava/util/List;)V
    .locals 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 245
    iput-object p6, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;->val$contactEntities:Ljava/util/List;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 7
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 249
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v5}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 250
    if-eqz p2, :cond_1

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-interface {p1, v5}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 253
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 254
    .local v0, context:Landroid/app/Activity;
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, v0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    .line 255
    .local v2, settingsHelper:Lcom/google/glass/util/SettingsHelper;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 256
    .local v3, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 259
    .local v4, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v4, :cond_0

    .line 260
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v1, v5}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/util/List;Lcom/google/glass/voice/VoiceCommand;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    .end local v1           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v4           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    :goto_1
    invoke-interface {p1, p0, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    .line 267
    return-void

    .line 250
    .end local v0           #context:Landroid/app/Activity;
    .end local v2           #settingsHelper:Lcom/google/glass/util/SettingsHelper;
    .end local v3           #subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    :cond_1
    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 264
    .restart local v0       #context:Landroid/app/Activity;
    .restart local v2       #settingsHelper:Lcom/google/glass/util/SettingsHelper;
    .restart local v3       #subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;->val$contactEntities:Ljava/util/List;

    iget-object v6, p0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v5, v6}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/util/List;Lcom/google/glass/voice/VoiceCommand;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
