.class public Lcom/google/glass/logging/audio/SavedAudioStorage;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final MAX_NEGATIVE_RECORDING_LENGTH_MS:J = 0x0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field static final MAX_POSITIVE_RECORDING_LENGTH_MS:J = 0x0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field static final MAX_RECORDING_AGE:J = 0x0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SAVED_FILE_COUNT:I = 0x32
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POSITIVE_RECORDING_PAD_LENGTH_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STORAGE_LABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_POSITIVE_RECORDING_LENGTH_MS:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->POSITIVE_RECORDING_PAD_LENGTH_MS:J

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_RECORDING_AGE:J

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/util/Labs$Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->STORAGE_LABS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V
    .locals 0
    .parameter "syncer"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage;->syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V
    .locals 8
    .parameter "context"
    .parameter "filename"
    .parameter
    .parameter "sampleRate"
    .parameter "trimmedPrefixLengthMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, hotwordResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    new-instance v1, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .local v1, databaseHelper:Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p6

    move-wide v6, p4

    .line 234
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioStorage;->insert(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/lang/String;Ljava/util/List;JJ)V

    .line 235
    invoke-direct {p0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->limitSavedFileCount(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v0
.end method

.method private static createSavedAudioDirectory()Z
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->SAVE_TO_DISK_BASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, basePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating base path for saved audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    sget-object v1, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 450
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 3
    .parameter "databaseHelper"
    .parameter "savedAudioRecord"

    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    .line 447
    :cond_0
    return-void
.end method

.method private deleteOldAudioInternal(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    .locals 9
    .parameter "databaseHelper"

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v3

    .line 433
    .local v3, records:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 434
    .local v1, now:J
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 435
    .local v4, savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-virtual {v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getTimestamp()J

    move-result-wide v5

    sub-long v5, v1, v5

    sget-wide v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_RECORDING_AGE:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 436
    invoke-static {p1, v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 439
    .end local v4           #savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    :cond_1
    return-void
.end method

.method public static getEnabledStorageLabs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, enabledFeatures:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v3, Lcom/google/glass/logging/audio/SavedAudioStorage;->STORAGE_LABS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/Labs$Feature;

    .line 118
    .local v1, feature:Lcom/google/glass/util/Labs$Feature;
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v1           #feature:Lcom/google/glass/util/Labs$Feature;
    :cond_1
    return-object v0
.end method

.method private static getLengthMs(Ljava/io/File;J)J
    .locals 2
    .parameter "audioFile"
    .parameter "sampleRate"

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRecocognizedAudioEndMs(Ljava/util/List;)J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const-wide/16 v2, 0x0

    .line 280
    .local v2, sum:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordResult;

    .line 281
    .local v0, command:Lcom/google/glass/voice/HotwordResult;
    invoke-virtual {v0}, Lcom/google/glass/voice/HotwordResult;->getPhraseEndMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 282
    goto :goto_0

    .line 283
    .end local v0           #command:Lcom/google/glass/voice/HotwordResult;
    :cond_0
    return-wide v2
.end method

.method public static getRecognizedAudioStartMs(Ljava/util/List;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordResult;

    invoke-virtual {v0}, Lcom/google/glass/voice/HotwordResult;->getPhraseStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private insert(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/lang/String;Ljava/util/List;JJ)V
    .locals 5
    .parameter "databaseHelper"
    .parameter "filename"
    .parameter
    .parameter "trimmedPrefixLengthMs"
    .parameter "sampleRate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, recognizedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    invoke-static {p3, p4, p5}, Lcom/google/glass/voice/AlignmentInfo;->getRecognizedCommandString(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, recognizedCommandString:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->newSavedAudioRecord(Ljava/lang/String;J)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setSampleRate(Ljava/lang/Long;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setRecognized(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setRecognizedCommands(Ljava/lang/String;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v1

    .line 355
    .local v1, savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    sget-object v2, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p1, v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->insert(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    .line 357
    return-void

    .line 349
    .end local v1           #savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private limitSavedFileCount(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    .locals 6
    .parameter "databaseHelper"

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v3

    .line 333
    .local v3, savedAudioRecords:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-gt v4, v5, :cond_1

    .line 342
    :cond_0
    return-void

    .line 337
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, recordsToDelete:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 340
    .local v1, recordToDelete:Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-static {p1, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0
.end method

.method public static newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;
    .locals 2
    .parameter "sampleRate"

    .prologue
    .line 80
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    const-string v1, "SAVE_AUDIO lab is enabled, will save all audio from mic to disk."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    move-result-object v0

    goto :goto_0
.end method

.method private static newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;
    .locals 1
    .parameter "sampleRate"

    .prologue
    .line 93
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->createSavedAudioDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(J)V

    goto :goto_0
.end method

.method private static newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    invoke-direct {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;-><init>()V

    return-object v0
.end method

.method private slice(Ljava/io/File;JJJ)V
    .locals 12
    .parameter "audioFile"
    .parameter "sampleRate"
    .parameter "startMs"
    .parameter "endMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    cmp-long v7, p4, p6

    if-lez v7, :cond_0

    .line 305
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal bound milliseconds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 308
    :cond_0
    invoke-static {p1}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v2

    .line 309
    .local v2, byteArray:[B
    move-wide/from16 v0, p4

    invoke-static {v0, v1, p2, p3}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v6

    .line 310
    .local v6, offset:I
    sub-long v7, p6, p4

    invoke-static {v7, v8, p2, p3}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v5

    .line 312
    .local v5, length:I
    array-length v7, v2

    add-int v8, v6, v5

    if-ge v7, v8, :cond_1

    .line 313
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Illegal slice bounds; file length: %d, offset: %d, length: %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 319
    .local v3, deleteSucceeded:Z
    if-nez v3, :cond_2

    .line 320
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to delete."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 323
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 325
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v4, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 329
    return-void

    .line 327
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v7
.end method

.method private storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 19
    .parameter "context"
    .parameter "filename"
    .parameter
    .parameter "sampleRate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, hotwordResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    .local p6, enabledLabs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-wide/16 v12, 0x0

    .line 190
    .local v12, trimmedPrefixLengthMs:J
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, audioFile:Ljava/io/File;
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 193
    .local v18, uploadPositive:Z
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 195
    .local v17, uploadNegative:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    if-eqz v17, :cond_3

    .line 198
    :try_start_0
    move-wide/from16 v0, p4

    invoke-static {v5, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getLengthMs(Ljava/io/File;J)J

    move-result-wide v15

    .line 199
    .local v15, fileLengthMs:J
    sget-wide v6, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    cmp-long v4, v15, v6

    if-lez v4, :cond_2

    .line 200
    const-wide/16 v8, 0x0

    sget-wide v10, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    move-object/from16 v4, p0

    move-wide/from16 v6, p4

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/logging/audio/SavedAudioStorage;->slice(Ljava/io/File;JJJ)V

    :cond_2
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    .line 202
    invoke-direct/range {v6 .. v13}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v15           #fileLengthMs:J
    :catch_0
    move-exception v14

    .line 204
    .local v14, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    const-string v6, "Failed to trim file"

    invoke-static {v4, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-static {v5}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 210
    .end local v14           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {v5}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 215
    :cond_4
    if-eqz v18, :cond_0

    .line 219
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/glass/logging/audio/SavedAudioStorage;->trimFile(Ljava/util/List;JLjava/io/File;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    .line 225
    invoke-direct/range {v6 .. v13}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V

    goto :goto_0

    .line 220
    :catch_1
    move-exception v14

    .line 221
    .restart local v14       #e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    const-string v6, "Failed to trim file"

    invoke-static {v4, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-static {v5}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private uploadStoredAudioInternal(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter "databaseHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 372
    .local p3, enabledLabs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 373
    .local v6, uploadPositive:Z
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 374
    .local v5, uploadNegative:Z
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 376
    .local v3, saveAudio:Z
    if-nez v6, :cond_1

    if-nez v5, :cond_1

    .line 415
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v2

    .line 381
    .local v2, records:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    sget-object v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Syncing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " saved audio records."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 383
    .local v4, savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-virtual {v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isSynced()Z

    move-result v7

    if-nez v7, :cond_2

    .line 387
    invoke-virtual {v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isRecognized()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v5, :cond_2

    .line 391
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isRecognized()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_2

    .line 396
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/logging/audio/SavedAudioStorage;->syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;

    invoke-interface {v7, p1, v4}, Lcom/google/glass/logging/audio/SavedAudioSyncer;->sync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    :try_end_0
    .catch Lcom/google/glass/logging/audio/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setSynced(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 408
    sget-object v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Synced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v3, :cond_6

    .line 410
    invoke-virtual {p2, v4}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->update(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Lcom/google/glass/logging/audio/SyncFailedException;
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SyncFailedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_5

    .line 399
    sget-object v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found, deleting record."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p2, v4}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 403
    :cond_5
    throw v0

    .line 412
    .end local v0           #e:Lcom/google/glass/logging/audio/SyncFailedException;
    :cond_6
    invoke-static {p2, v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteOldAudio(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 422
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 424
    .local v0, databaseHelper:Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteOldAudioInternal(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 428
    return-void

    .line 426
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v1
.end method

.method public storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter "filename"
    .parameter
    .parameter "sampleRate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p3, hotwordResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    .local p6, enabledLabs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioStorage$1;-><init>(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method trimFile(Ljava/util/List;JLjava/io/File;)J
    .locals 21
    .parameter
    .parameter "sampleRate"
    .parameter "audioFile"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/io/File;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    .local p1, recognizedCommands:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getRecognizedAudioStartMs(Ljava/util/List;)J

    move-result-wide v19

    .line 256
    .local v19, recognizedAudioStartMs:J
    invoke-static/range {p1 .. p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getRecocognizedAudioEndMs(Ljava/util/List;)J

    move-result-wide v15

    .line 258
    .local v15, recognizedAudioEndMs:J
    sub-long v17, v15, v19

    .line 260
    .local v17, recognizedAudioLengthMs:J
    sget-wide v3, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_POSITIVE_RECORDING_LENGTH_MS:J

    cmp-long v3, v17, v3

    if-lez v3, :cond_0

    .line 261
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Audio is too long"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    sget-wide v13, Lcom/google/glass/logging/audio/SavedAudioStorage;->POSITIVE_RECORDING_PAD_LENGTH_MS:J

    .line 265
    .local v13, padding:J
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getLengthMs(Ljava/io/File;J)J

    move-result-wide v11

    .line 266
    .local v11, fileLengthMs:J
    cmp-long v3, v19, v13

    if-gez v3, :cond_3

    const-wide/16 v7, 0x0

    .line 268
    .local v7, paddedAudioStartMs:J
    :goto_0
    add-long v3, v15, v13

    cmp-long v3, v3, v11

    if-lez v3, :cond_4

    move-wide v9, v11

    .line 271
    .local v9, paddedAudioEndMs:J
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-gtz v3, :cond_1

    cmp-long v3, v9, v11

    if-gez v3, :cond_2

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-wide/from16 v5, p2

    .line 272
    invoke-direct/range {v3 .. v10}, Lcom/google/glass/logging/audio/SavedAudioStorage;->slice(Ljava/io/File;JJJ)V

    .line 275
    :cond_2
    return-wide v7

    .line 266
    .end local v7           #paddedAudioStartMs:J
    .end local v9           #paddedAudioEndMs:J
    :cond_3
    sub-long v7, v19, v13

    goto :goto_0

    .line 268
    .restart local v7       #paddedAudioStartMs:J
    :cond_4
    add-long v9, v15, v13

    goto :goto_1
.end method

.method public uploadStoredAudio(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 361
    .local p2, enabledLabs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, databaseHelper:Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/logging/audio/SavedAudioStorage;->uploadStoredAudioInternal(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v1
.end method
