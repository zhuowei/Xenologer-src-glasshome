.class public abstract Lcom/google/glass/voice/Sensory;
.super Ljava/lang/Object;
.source "Sensory.java"


# static fields
.field public static final LTS_RULES_FILE_GENERIC:Ljava/lang/String; = "lts_en_us_9.3.raw"

.field public static final LTS_RULES_FILE_NAMES:Ljava/lang/String; = "lts_en_us_cid_9.3.1.1.raw"

.field public static final RECOG_FILE_GENERIC:Ljava/lang/String; = "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

.field public static final RECOG_FILE_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

.field public static final RECOG_FILE_MAIN_MENU:Ljava/lang/String; = "google_glass_mainset_en_us_alpha_sfs_delivery21_am.raw"

.field public static final RECOG_FILE_NOTIFICATION:Ljava/lang/String; = "google_notification_en_us_v3_net.raw"

.field public static final RECOG_FILE_NOTIFICATION_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

.field public static final RECOG_FILE_TAKE_A_NOTE:Ljava/lang/String; = "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

.field public static final SEARCH_FILE_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery08_search_10.raw"

.field public static final SEARCH_FILE_MAIN_MENU:Ljava/lang/String; = "google_glass_mainset_en_us_alpha_sfs_delivery21_search_20.raw"

.field public static final SEARCH_FILE_NOTIFICATION:Ljava/lang/String; = "google_notification_en_us_v3_5.raw"

.field public static final SEARCH_FILE_NOTIFICATION_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery08_search_1.raw"

.field public static final SEARCH_FILE_TAKE_A_NOTE:Ljava/lang/String; = "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw"

.field private static final TAG:Ljava/lang/String;

.field private static final resIdToFilename:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resolver:Landroid/content/ContentResolver;


# instance fields
.field protected grammar:Ljava/lang/String;

.field protected sensoryContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/Sensory;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery08_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery08_search_10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_search_10.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery08_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery08_search_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery08_search_1.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_mainset_en_us_alpha_sfs_delivery21_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_mainset_en_us_alpha_sfs_delivery21_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_mainset_en_us_alpha_sfs_delivery21_search_20:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_mainset_en_us_alpha_sfs_delivery21_search_20.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_notification_en_us_v3_net:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_notification_en_us_v3_net.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_notification_en_us_v3_5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_notification_en_us_v3_5.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_takeanote_en_us_alpha_sfs_delivery01_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->nn_en_us_mfcc_16k_15_big_250_v4_7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->lts_en_us_9_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lts_en_us_9.3.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->lts_en_us_cid_9_3_1_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lts_en_us_cid_9.3.1.1.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "fssdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 119
    const-string v0, "/data/data/%s/files/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    invoke-static {p0, v0, v1}, Lcom/google/glass/util/FileHelper;->copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/Sensory;->resolver:Landroid/content/ContentResolver;

    .line 112
    return-void
.end method

.method private native nativeClosePhrasespot(J)V
.end method

.method private native nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/SensoryResult;
.end method

.method private native nativeResetPhrasespot(J)V
.end method

.method public static newEntityRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/Sensory;
    .locals 6
    .parameter "context"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Lcom/google/glass/voice/Sensory;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 166
    .local v3, phrases:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 167
    .local v4, tags:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 168
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 171
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 172
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_0

    .line 175
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    new-instance v5, Lcom/google/glass/voice/DynamicSensoryRecognizer;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/google/glass/voice/DynamicSensoryRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public closePhrasespot()V
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeClosePhrasespot(J)V

    .line 135
    return-void
.end method

.method protected native nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespot(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespotDynamic()J
.end method

.method protected native nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public pipePhrasespot(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    .locals 7
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 124
    iget-wide v1, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/Sensory;->nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/SensoryResult;

    move-result-object v6

    .line 125
    .local v6, result:Lcom/google/glass/voice/SensoryResult;
    if-eqz v6, :cond_0

    .line 126
    new-instance v0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    invoke-virtual {v6}, Lcom/google/glass/voice/SensoryResult;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/Sensory;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;-><init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/glass/voice/SensoryResult;)V

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reinitialize()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/glass/voice/Sensory;->resetPhrasespot()V

    .line 147
    return-void
.end method

.method protected resetPhrasespot()V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeResetPhrasespot(J)V

    .line 139
    return-void
.end method

.method abstract stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
.end method
