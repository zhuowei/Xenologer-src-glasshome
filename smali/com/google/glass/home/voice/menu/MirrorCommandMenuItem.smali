.class public Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.source "MirrorCommandMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;,
        Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field protected final shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 1
    .parameter "commandType"
    .parameter "shareTarget"

    .prologue
    .line 69
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)V
    .locals 1
    .parameter "commandType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    sget-object v0, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 78
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 79
    iput-object p2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getStartMirrorInputRunnable(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public static asDisambiguationItems(Ljava/util/Collection;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "commandType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 150
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    new-instance v3, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;

    invoke-direct {v3, p1, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v2
.end method

.method private static getStartMirrorInputRunnable(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "environment"
    .parameter "inputTypeText"
    .parameter "spoken"
    .parameter "shareTarget"

    .prologue
    .line 108
    new-instance v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$1;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method public static newEntityMenuItem(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
    .locals 1
    .parameter "commandType"
    .parameter "entity"

    .prologue
    .line 143
    new-instance v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method private showDisambiguation(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZLjava/util/List;)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showShareTargetList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    .line 103
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 198
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;

    .line 201
    .local v0, other:Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 202
    goto :goto_0

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    if-nez v3, :cond_5

    .line 205
    iget-object v3, v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    if-eqz v3, :cond_0

    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 209
    goto :goto_0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 164
    sget-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Command$CommandType:[I

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    sget-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No known context menu label for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    const-string v0, "Post update"

    goto :goto_0

    .line 168
    :pswitch_1
    const-string v0, "Take note"

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLiteral()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->mirrorApiCommands:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 182
    const/16 v0, 0x1f

    .line 183
    .local v0, prime:I
    const/4 v1, 0x1

    .line 184
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 185
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 186
    return v1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->hashCode()I

    move-result v2

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 2
    .parameter "voiceCommand"

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {p1, v1, p2, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getStartMirrorInputRunnable(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->showDisambiguation(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorCommandMenuItem [shareTargets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->shareTargets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
