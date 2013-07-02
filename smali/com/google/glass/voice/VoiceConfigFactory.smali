.class Lcom/google/glass/voice/VoiceConfigFactory;
.super Ljava/lang/Object;
.source "VoiceConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceConfigFactory$1;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;)V
    .locals 0
    .parameter "context"
    .parameter "mirrorCommandHelper"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfigFactory;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfigFactory;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    .line 26
    return-void
.end method

.method static getCustomVoiceConfig(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "context"
    .parameter "phrases"
    .parameter "tags"

    .prologue
    .line 95
    const-string v0, "CUSTOM"

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method static getHybridVoiceConfig(Landroid/content/Context;[Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .parameter "context"
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 104
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    .local v1, components:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/glass/voice/SystemVoiceConfig;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 106
    .local v4, systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    invoke-static {p0, v4}, Lcom/google/glass/voice/VoiceConfigFactory;->getSystemVoiceConfig(Landroid/content/Context;Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v4           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_0
    array-length v5, p2

    if-lez v5, :cond_1

    .line 110
    invoke-static {p0, p2, p3}, Lcom/google/glass/voice/VoiceConfigFactory;->getCustomVoiceConfig(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    return-object v5
.end method

.method static getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method static getSystemVoiceConfig(Landroid/content/Context;Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "context"
    .parameter "systemVoiceConfig"

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/voice/VoiceConfigFactory$1;->$SwitchMap$com$google$glass$voice$SystemVoiceConfig:[I

    invoke-virtual {p1}, Lcom/google/glass/voice/SystemVoiceConfig;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown system voice config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    .line 85
    :goto_0
    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 65
    :pswitch_3
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfigFactory;->getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_4
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 69
    :pswitch_5
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 71
    :pswitch_6
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 73
    :pswitch_7
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 75
    :pswitch_8
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 77
    :pswitch_9
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 79
    :pswitch_a
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SEARCH:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 81
    :pswitch_b
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SHARE:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 83
    :pswitch_c
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 85
    :pswitch_d
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method getVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .parameter "descriptor"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getSystemVoiceConfigs()[Lcom/google/glass/voice/SystemVoiceConfig;

    move-result-object v3

    .line 30
    .local v3, systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, customPhrases:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getCustomTags()[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, customTags:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getDisambiguationCommandType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v2

    .line 34
    .local v2, disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    if-eqz v2, :cond_0

    .line 35
    iget-object v4, p0, Lcom/google/glass/voice/VoiceConfigFactory;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v4, v2}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getConfig(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    .line 47
    :goto_0
    return-object v4

    .line 38
    :cond_0
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    array-length v4, v0

    if-nez v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/google/glass/voice/VoiceConfigFactory;->context:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/google/glass/voice/VoiceConfigFactory;->getSystemVoiceConfig(Landroid/content/Context;Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    goto :goto_0

    .line 42
    :cond_1
    array-length v4, v3

    if-nez v4, :cond_2

    .line 43
    iget-object v4, p0, Lcom/google/glass/voice/VoiceConfigFactory;->context:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/google/glass/voice/VoiceConfigFactory;->getCustomVoiceConfig(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    goto :goto_0

    .line 46
    :cond_2
    array-length v4, v3

    if-lez v4, :cond_3

    .line 47
    iget-object v4, p0, Lcom/google/glass/voice/VoiceConfigFactory;->context:Landroid/content/Context;

    invoke-static {v4, v3, v0, v1}, Lcom/google/glass/voice/VoiceConfigFactory;->getHybridVoiceConfig(Landroid/content/Context;[Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    goto :goto_0

    .line 50
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal voice config description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
