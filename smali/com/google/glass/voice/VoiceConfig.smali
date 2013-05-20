.class public Lcom/google/glass/voice/VoiceConfig;
.super Ljava/lang/Object;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceConfig$Type;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_COMMANDS:Lcom/google/glass/voice/VoiceConfig;

.field public static final CONTACTS:Lcom/google/glass/voice/VoiceConfig;

.field public static final GUARD:Lcom/google/glass/voice/VoiceConfig;

.field private static final HYBRID_MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

.field private static final MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

.field public static final NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

.field public static final NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfig;

.field public static final PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

.field public static final SEARCH:Lcom/google/glass/voice/VoiceConfig;

.field public static final VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;


# instance fields
.field final isDynamic:Z

.field final ltsFile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final recogFile:Ljava/lang/String;

.field final searchFile:Ljava/lang/String;

.field final type:Lcom/google/glass/voice/VoiceConfig$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$1;

    const-string v2, "OFF"

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceConfig$1;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 31
    const-string v0, "GUARD"

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

    const-string v4, "google_glass_okglass_en_us_alpha_sfs_delivery08_search_10.raw"

    invoke-static {v0, v2, v4}, Lcom/google/glass/voice/VoiceConfig;->newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    .line 39
    const-string v0, "NOTIFICATION_GUARD"

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

    const-string v4, "google_glass_okglass_en_us_alpha_sfs_delivery08_search_1.raw"

    invoke-static {v0, v2, v4}, Lcom/google/glass/voice/VoiceConfig;->newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

    .line 44
    const-string v0, "MAIN_MENU"

    const-string v2, "google_glass_mainset_en_us_alpha_sfs_delivery21_am.raw"

    const-string v4, "google_glass_mainset_en_us_alpha_sfs_delivery21_search_20.raw"

    invoke-static {v0, v2, v4}, Lcom/google/glass/voice/VoiceConfig;->newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    .line 48
    const-string v0, "ADDITIONAL_COMMANDS"

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

    const-string v4, "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw"

    invoke-static {v0, v2, v4}, Lcom/google/glass/voice/VoiceConfig;->newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->ADDITIONAL_COMMANDS:Lcom/google/glass/voice/VoiceConfig;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v0, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->ADDITIONAL_COMMANDS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->HYBRID_MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    .line 61
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$2;

    const-string v2, "CONTACTS"

    const-string v3, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    const-string v4, "lts_en_us_cid_9.3.1.1.raw"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/glass/voice/VoiceConfig$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    .line 75
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$3;

    const-string v2, "PLUS_SHARE_TARGETS"

    const-string v3, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    const-string v4, "lts_en_us_cid_9.3.1.1.raw"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/glass/voice/VoiceConfig$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 90
    const-string v0, "NOTIFICATION"

    const-string v1, "google_notification_en_us_v3_net.raw"

    const-string v2, "google_notification_en_us_v3_5.raw"

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/VoiceConfig;->newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    .line 97
    const-string v0, "SEARCH"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->newGrecoVoiceConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->SEARCH:Lcom/google/glass/voice/VoiceConfig;

    .line 103
    const-string v0, "NAVIGATION"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->newGrecoVoiceConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

    .line 117
    const-string v0, "VOICE_RECORD"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->newGrecoVoiceConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "name"
    .parameter "isDynamic"
    .parameter "recogFile"
    .parameter "searchFile"
    .parameter "ltsFile"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    .line 167
    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    .line 168
    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig;->isDynamic:Z

    .line 169
    iput-object p4, p0, Lcom/google/glass/voice/VoiceConfig;->recogFile:Ljava/lang/String;

    .line 170
    iput-object p5, p0, Lcom/google/glass/voice/VoiceConfig;->searchFile:Ljava/lang/String;

    .line 171
    iput-object p6, p0, Lcom/google/glass/voice/VoiceConfig;->ltsFile:Ljava/lang/String;

    .line 173
    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne p1, v2, :cond_0

    .line 174
    if-nez p5, :cond_1

    move v3, v0

    :goto_0
    if-nez p6, :cond_2

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 176
    :cond_0
    return-void

    :cond_1
    move v3, v1

    .line 174
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "recogFile"
    .parameter "searchFile"
    .parameter "ltsFile"

    .prologue
    .line 193
    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-nez p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->HYBRID_MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    .line 205
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method public static newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 9
    .parameter "context"
    .parameter "name"
    .parameter "phrases"
    .parameter "tags"

    .prologue
    .line 217
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$4;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v3, 0x1

    const-string v4, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    const/4 v5, 0x0

    const-string v6, "lts_en_us_9.3.raw"

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig$4;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static newGrecoVoiceConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 180
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 13
    .parameter "configs"

    .prologue
    .line 266
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v11, nameBuilder:Ljava/lang/StringBuilder;
    move-object v8, p0

    .local v8, arr$:[Lcom/google/glass/voice/VoiceConfig;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v12, v8, v9

    .line 268
    .local v12, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v0, v12, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 270
    .end local v12           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$5;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    const/4 v5, 0x0

    const-string v6, "lts_en_us_9.3.raw"

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/VoiceConfig$5;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;)V

    return-object v0
.end method

.method public static newStaticSensoryVoiceConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "name"
    .parameter "recogFile"
    .parameter "searchFile"

    .prologue
    .line 198
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;
    .locals 1
    .parameter "context"

    .prologue
    .line 262
    invoke-static {p1, p0}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/Sensory;

    move-result-object v0

    return-object v0
.end method

.method isValidConfig()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 236
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v2, v3, :cond_5

    .line 241
    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceConfig;->isDynamic:Z

    if-eqz v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->recogFile:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->ltsFile:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->recogFile:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->searchFile:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 247
    :cond_5
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
