.class public Lcom/google/android/speech/embedded/Greco3DataManager;
.super Ljava/lang/Object;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;,
        Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final COMPILED_GRAMMAR_CACHE:Ljava/lang/String; = "g3_grammars"

.field private static final DEBUG:Z = false

.field private static final DIRECTORY_FILTER:Ljava/io/FileFilter; = null

.field public static final EP_FALLBACK_LOCALE:Ljava/lang/String; = "en-US"

.field public static final METADATA_FILE_NAME:Ljava/lang/String; = "metadata"

.field public static final MODELS_DIR:Ljava/lang/String; = "g3_models"

.field static final SYSTEM_DATA_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "VS.G3DataManager"


# instance fields
.field private mAvailableLanguages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mCompiledGrammarRoot:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEngineVersion:I

.field private final mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mInitializationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/callback/SimpleCallback",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumUpdatesInProgress:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

.field private final mSearchPaths:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/srec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    .line 662
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$4;

    invoke-direct {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$4;-><init>()V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;)V
    .locals 3
    .parameter "context"
    .end parameter
    .parameter "preferences"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "installedEngineVersion"
    .end parameter
    .parameter
    .end parameter
    .parameter "compiledGrammarRoot"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "updateExecutor"
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/speech/embedded/Greco3Preferences;",
            "I",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p4, searchPaths:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    .line 107
    iput p3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mEngineVersion:I

    .line 108
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    .line 109
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 110
    .local v1, searchPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 112
    .end local v1           #searchPath:Ljava/io/File;
    :cond_0
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    .line 113
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;

    .line 117
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;ILjava/util/concurrent/Executor;)V
    .locals 7
    .parameter "ctx"
    .parameter "prefs"
    .parameter "installedEngineVersion"
    .parameter "updateExecutor"

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "g3_models"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->getSearchPathList([Ljava/io/File;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "g3_grammars"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3DataManager;-><init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/embedded/Greco3DataManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourceListAndNotifyCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/speech/embedded/Greco3DataManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    return-void
.end method

.method static deleteSingleLevelTree(Ljava/io/File;)V
    .locals 8
    .parameter "resourceDir"

    .prologue
    .line 577
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 579
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 580
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 581
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 582
    const-string v5, "VS.G3DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting resource file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 587
    const-string v5, "VS.G3DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v2           #files:[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 3
    .parameter "resource"

    .prologue
    const/4 v2, 0x1

    .line 567
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getOutputDirForLocale(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 568
    .local v0, resourceDir:Ljava/io/File;
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    invoke-interface {v1, v0, v2}, Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;->delete(Ljava/io/File;Z)V

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 570
    return-void
.end method

.method private getOutputDirForLocale(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "locale"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;

    const-string v2, "g3_models"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 397
    .local v0, outputBase:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static varargs getSearchPathList([Ljava/io/File;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .parameter "files"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v4, nonNullFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 673
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 674
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v1           #file:Ljava/io/File;
    :cond_1
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method private handleLocale(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 11
    .parameter "localeDataDir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, langPacks:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, localeName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/android/speech/embedded/Greco3DataManager;->isValidLocale(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 617
    :cond_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/speech/embedded/LocaleResourcesImpl;

    .line 599
    .local v5, langPack:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    if-nez v5, :cond_2

    .line 600
    new-instance v5, Lcom/google/android/speech/embedded/LocaleResourcesImpl;

    .end local v5           #langPack:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    iget v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mEngineVersion:I

    invoke-direct {v5, v9}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;-><init>(I)V

    .line 601
    .restart local v5       #langPack:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    invoke-virtual {p2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 606
    .local v2, fileList:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 607
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 608
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/speech/embedded/Greco3Mode;->valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v8

    .line 609
    .local v8, type:Lcom/google/android/speech/embedded/Greco3Mode;
    const-string v9, "metadata"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 610
    .local v4, isMetadata:Z
    if-eqz v8, :cond_4

    .line 611
    invoke-virtual {v5, v8, v1}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->addConfig(Lcom/google/android/speech/embedded/Greco3Mode;Ljava/io/File;)V

    .line 607
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_4
    if-eqz v4, :cond_3

    .line 613
    invoke-virtual {v5, v1}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->addMetadata(Ljava/io/File;)V

    goto :goto_1
.end method

.method private hasDictationOrGrammarResources(Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;)Z
    .locals 2
    .parameter "resources"

    .prologue
    const/4 v0, 0x0

    .line 465
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getResourcePaths()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {p1, v1}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {p1, v1}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidLocale(Ljava/lang/String;)Z
    .locals 3
    .parameter "localeName"

    .prologue
    const/16 v2, 0x2d

    .line 624
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processGrammar(Ljava/io/File;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/LocaleResourcesImpl;)V
    .locals 9
    .parameter "directory"
    .parameter "grammar"
    .parameter "localeResources"

    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, revisionName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 375
    .local v1, grammarResources:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v7, v1

    sget v8, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->NUM_GENERATED_FILES:I

    if-ge v7, v8, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v4, 0x0

    .line 384
    .local v4, metaData:Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 385
    .local v5, resource:Ljava/io/File;
    const-string v7, "metadata"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 386
    move-object v4, v5

    .line 384
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    .end local v5           #resource:Ljava/io/File;
    :cond_3
    if-eqz v4, :cond_0

    .line 391
    invoke-virtual {p3, p2, v6, p1, v4}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->addGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method private processLocaleData(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, availableLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/LocaleResourcesImpl;

    .line 307
    .local v1, lr:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    invoke-virtual {v1}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->processLocaleData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 311
    .end local v1           #lr:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    :cond_1
    return-void
.end method

.method private updateGrammars(Ljava/util/HashMap;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, available:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    invoke-virtual/range {v22 .. v23}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v18

    .line 316
    .local v18, locales:[Ljava/io/File;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 368
    :cond_0
    return-void

    .line 320
    :cond_1
    move-object/from16 v3, v18

    .local v3, arr$:[Ljava/io/File;
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v12, v10

    .end local v3           #arr$:[Ljava/io/File;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v16, v3, v12

    .line 322
    .local v16, locale:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 323
    .local v17, localeName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->isValidLocale(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/speech/embedded/LocaleResourcesImpl;

    .line 331
    .local v19, lr:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    if-eqz v19, :cond_0

    .line 335
    sget-object v22, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    .line 336
    .local v9, grammars:[Ljava/io/File;
    if-eqz v9, :cond_2

    array-length v0, v9

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 320
    .end local v12           #i$:I
    :cond_2
    add-int/lit8 v10, v12, 0x1

    .restart local v10       #i$:I
    move v12, v10

    .end local v10           #i$:I
    .restart local v12       #i$:I
    goto :goto_0

    .line 340
    :cond_3
    move-object v4, v9

    .local v4, arr$:[Ljava/io/File;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .end local v12           #i$:I
    .restart local v10       #i$:I
    move v11, v10

    .end local v4           #arr$:[Ljava/io/File;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v14, :cond_2

    aget-object v7, v4, v11

    .line 342
    .local v7, grammar:Ljava/io/File;
    invoke-static {v7}, Lcom/google/android/speech/embedded/Greco3Grammar;->valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v8

    .line 344
    .local v8, grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;
    if-nez v8, :cond_5

    .line 340
    .end local v11           #i$:I
    :cond_4
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_1

    .line 348
    :cond_5
    sget-object v22, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v21

    .line 349
    .local v21, revisions:[Ljava/io/File;
    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, currentRevision:Ljava/lang/String;
    move-object/from16 v5, v21

    .local v5, arr$:[Ljava/io/File;
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_2
    if-ge v10, v15, :cond_4

    aget-object v20, v5, v10

    .line 358
    .local v20, revision:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;->delete(Ljava/io/File;Z)V

    .line 357
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 363
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->processGrammar(Ljava/io/File;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/LocaleResourcesImpl;)V

    goto :goto_3
.end method

.method private updateResourceListAndNotifyCallback()V
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->doUpdateResourceList()Ljava/util/HashMap;

    move-result-object v0

    .line 267
    .local v0, availableLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/callback/SimpleCallback;

    .line 274
    .local v1, callback:Lcom/google/android/speech/callback/SimpleCallback;,"Lcom/google/android/speech/callback/SimpleCallback<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/google/android/speech/callback/SimpleCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    .end local v1           #callback:Lcom/google/android/speech/callback/SimpleCallback;,"Lcom/google/android/speech/callback/SimpleCallback<Ljava/lang/Void;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 277
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 278
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;

    .line 279
    iget v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 282
    iget v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void

    .line 282
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateResources(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, availableLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    iget-object v7, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 290
    .local v6, searchPath:Ljava/io/File;
    sget-object v7, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 293
    .local v5, locales:[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 297
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 298
    .local v4, locale:Ljava/io/File;
    invoke-direct {p0, v4, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->handleLocale(Ljava/io/File;Ljava/util/HashMap;)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #locale:Ljava/io/File;
    .end local v5           #locales:[Ljava/io/File;
    .end local v6           #searchPath:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private updateResourcesLocked(Lcom/google/android/speech/callback/SimpleCallback;Z)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "forceUpdate"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/SimpleCallback",
            "<",
            "Ljava/lang/Void;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, completionCallback:Lcom/google/android/speech/callback/SimpleCallback;,"Lcom/google/android/speech/callback/SimpleCallback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    iget v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    if-lez v0, :cond_2

    if-nez p2, :cond_2

    .line 221
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 214
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/speech/embedded/Greco3DataManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/speech/embedded/Greco3DataManager$1;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized blockingUpdateResources(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->checkNotMainThread()V

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Lcom/google/android/speech/callback/SimpleCallback;Z)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->waitForPendingUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createOutputPathForGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "grammar"
    .parameter "locale"
    .parameter "revision"

    .prologue
    .line 553
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v1, localeDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/android/speech/embedded/Greco3Grammar;->getDirectoryName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .local v0, grammarDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 559
    .local v2, revisionDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    const/4 v2, 0x0

    .line 563
    .end local v2           #revisionDir:Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public deleteLanguage(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "resource"
    .parameter "executor"
    .parameter "postDelete"

    .prologue
    .line 528
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/speech/embedded/Greco3DataManager$3;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/speech/embedded/Greco3DataManager$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 542
    return-void
.end method

.method protected doUpdateResourceList()Ljava/util/HashMap;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 240
    .local v0, availableLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResourcesImpl;>;"
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResources(Ljava/util/HashMap;)V

    .line 242
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateGrammars(Ljava/util/HashMap;)V

    .line 248
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->processLocaleData(Ljava/util/HashMap;)V

    .line 250
    return-object v0
.end method

.method getInitializationCallbacksForTesting()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/callback/SimpleCallback",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getInstalledLanguages()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 505
    .local v1, languages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    monitor-enter p0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 507
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/speech/embedded/LocaleResourcesImpl;

    .line 508
    .local v3, resource:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    invoke-virtual {v3}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v2

    .line 511
    .local v2, metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/speech/embedded/Greco3DataManager;->hasDictationOrGrammarResources(Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v3           #resource:Lcom/google/android/speech/embedded/LocaleResourcesImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    return-object v1
.end method

.method public getModelsDirSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/speech/embedded/Greco3DataManager$2;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    .locals 1
    .parameter "bcp47Locale"

    .prologue
    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 412
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    monitor-exit p0

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRevisionForGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;
    .locals 4
    .parameter "bcp47Locale"
    .parameter "grammar"

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v1

    .line 444
    .local v1, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    invoke-virtual {v3, p2}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, grammarRevision:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-interface {v1, p2, v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_2
    move-object v0, v2

    .line 454
    goto :goto_0
.end method

.method public hasCompiledGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Z
    .locals 1
    .parameter "bcp47Locale"
    .parameter "grammar"

    .prologue
    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/google/android/speech/embedded/Greco3DataManager;->getRevisionForGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;)Z
    .locals 3
    .parameter "bcp47Locale"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v0

    .line 421
    .local v0, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0, p2}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasResourcesForCompilation(Ljava/lang/String;)Z
    .locals 3
    .parameter "bcp47Locale"

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v0

    .line 430
    .local v0, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v2}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v2}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInstalledInSystemPartition(Ljava/lang/String;)Z
    .locals 2
    .parameter "bcp47Locale"

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v0

    .line 482
    .local v0, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getResourcePaths()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 483
    :cond_0
    const/4 v1, 0x0

    .line 486
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->isInstalledInSystemPartition()Z

    move-result v1

    goto :goto_0
.end method

.method public isUsingDownloadedData(Ljava/lang/String;)Z
    .locals 2
    .parameter "bcp47Locale"

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v0

    .line 491
    .local v0, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getResourcePaths()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 492
    :cond_0
    const/4 v1, 0x0

    .line 495
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->isUsingDownloadedData()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized maybeInitialize(Lcom/google/android/speech/callback/SimpleCallback;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/SimpleCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, callback:Lcom/google/android/speech/callback/SimpleCallback;,"Lcom/google/android/speech/callback/SimpleCallback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Lcom/google/android/speech/callback/SimpleCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const/4 v0, 0x1

    .line 140
    :cond_0
    monitor-exit p0

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPathDeleter(Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;)V
    .locals 0
    .parameter "deleter"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    .line 122
    return-void
.end method

.method public declared-synchronized waitForInitialization()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized waitForPendingUpdates()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 170
    const-string v1, "VS.G3DataManager"

    const-string v2, "Interrupted waiting for resource update."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    :cond_0
    monitor-exit p0

    return-void
.end method
