.class public abstract Lcom/google/glass/voice/Sensory;
.super Ljava/lang/Object;
.source "Sensory.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/Sensory$SensoryResult;,
        Lcom/google/glass/voice/Sensory$State;
    }
.end annotation


# static fields
.field public static final LTS_RULES_FILE_GENERIC:Ljava/lang/String; = "lts_en_us_9.3.raw"

.field public static final LTS_RULES_FILE_NAMES:Ljava/lang/String; = "lts_en_us_cid_9.3.1.1.raw"

.field public static final RECOG_FILE_GENERIC:Ljava/lang/String; = "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

.field public static final RECOG_FILE_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

.field public static final RECOG_FILE_INCOMING_CALL:Ljava/lang/String; = "google_glass_callset_en_us_sfs_delivery02_am.raw"

.field public static final RECOG_FILE_MAIN_MENU:Ljava/lang/String; = "google_glass_mainset_en_us_sfs_delivery22_am.raw"

.field public static final RECOG_FILE_NOTIFICATION:Ljava/lang/String; = "google_glass_notificationset_en_us_sfs_delivery04_am.raw"

.field public static final RECOG_FILE_NOTIFICATION_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

.field public static final RECOG_FILE_POST_AN_UPDATE:Ljava/lang/String; = "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw"

.field public static final RECOG_FILE_SHARE:Ljava/lang/String; = "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw"

.field public static final RECOG_FILE_TAKE_A_NOTE:Ljava/lang/String; = "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

.field public static final SEARCH_FILE_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw"

.field public static final SEARCH_FILE_INCOMING_CALL:Ljava/lang/String; = "google_glass_callset_en_us_sfs_delivery02_search_13.raw"

.field public static final SEARCH_FILE_MAIN_MENU:Ljava/lang/String; = "google_glass_mainset_en_us_sfs_delivery22_search_19.raw"

.field public static final SEARCH_FILE_NOTIFICATION:Ljava/lang/String; = "google_glass_notificationset_en_us_sfs_delivery04_search_15.raw"

.field public static final SEARCH_FILE_NOTIFICATION_GUARD:Ljava/lang/String; = "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw"

.field public static final SEARCH_FILE_POST_AN_UPDATE:Ljava/lang/String; = "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw"

.field public static final SEARCH_FILE_SHARE:Ljava/lang/String; = "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw"

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
.field private audioBuffer:Ljava/nio/ByteBuffer;

.field protected grammar:Ljava/lang/String;

.field protected sensoryContext:J

.field private volatile state:Lcom/google/glass/voice/Sensory$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/Sensory;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    .line 115
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_mainset_en_us_sfs_delivery22_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_mainset_en_us_sfs_delivery22_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_mainset_en_us_sfs_delivery22_search_19:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_mainset_en_us_sfs_delivery22_search_19.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_notificationset_en_us_sfs_delivery04_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_notificationset_en_us_sfs_delivery04_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_notificationset_en_us_sfs_delivery04_search_15:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_notificationset_en_us_sfs_delivery04_search_15.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_callset_en_us_sfs_delivery02_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_callset_en_us_sfs_delivery02_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_callset_en_us_sfs_delivery02_search_13:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_callset_en_us_sfs_delivery02_search_13.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_takeanote_en_us_alpha_sfs_delivery01_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->nn_en_us_mfcc_16k_15_big_250_v4_7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->lts_en_us_9_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lts_en_us_9.3.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v1, Lcom/google/glass/common/R$raw;->lts_en_us_cid_9_3_1_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lts_en_us_cid_9.3.1.1.raw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "fssdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    .line 55
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    .line 279
    return-void
.end method

.method private static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 169
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
    .line 164
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    invoke-static {p0, v0, v1}, Lcom/google/glass/util/FileHelper;->copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/Sensory;->resolver:Landroid/content/ContentResolver;

    .line 166
    return-void
.end method

.method private native nativeClosePhrasespot(J)V
.end method

.method private native nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/Sensory$SensoryResult;
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
    .line 263
    .local p2, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 264
    .local v3, phrases:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 265
    .local v4, tags:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 266
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v1, 0x0

    .line 267
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 269
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 270
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 272
    goto :goto_0

    .line 273
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    new-instance v5, Lcom/google/glass/voice/DynamicSensoryRecognizer;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/google/glass/voice/DynamicSensoryRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method

.method private setState(Lcom/google/glass/voice/Sensory$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 177
    sget-object v0, Lcom/google/glass/voice/Sensory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object p1, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    .line 179
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 245
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/glass/voice/Sensory;->resetPhrasespot()V

    .line 240
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 219
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeClosePhrasespot(J)V

    .line 220
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 221
    return-void
.end method

.method protected doWriteAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 7
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 206
    iget-wide v1, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    iget-object v3, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/Sensory;->nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/Sensory$SensoryResult;

    move-result-object v6

    .line 207
    .local v6, result:Lcom/google/glass/voice/Sensory$SensoryResult;
    if-eqz v6, :cond_2

    .line 208
    new-instance v0, Lcom/google/glass/voice/HotwordResult;

    iget-object v1, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->literal:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/Sensory;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    iget v2, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->score:F

    iget-object v3, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->wordAlignment:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/voice/HotwordResult;->parseAlignments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V

    .line 211
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected native nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespot(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespotDynamic()J
.end method

.method protected native nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected resetPhrasespot()V
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeResetPhrasespot(J)V

    .line 225
    return-void
.end method

.method public abstract stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
.end method

.method public final writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 3
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    if-eq v0, v1, :cond_0

    .line 185
    sget-object v0, Lcom/google/glass/voice/Sensory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring audio outside of initialized state. Current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/voice/Sensory;->doWriteAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v0

    goto :goto_0
.end method
