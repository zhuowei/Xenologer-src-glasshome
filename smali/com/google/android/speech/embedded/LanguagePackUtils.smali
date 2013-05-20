.class public Lcom/google/android/speech/embedded/LanguagePackUtils;
.super Ljava/lang/Object;
.source "LanguagePackUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadFilename(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Ljava/lang/String;
    .locals 2
    .parameter "pack"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/speech/embedded/LanguagePackUtils;->findById(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 49
    .local v2, listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    .end local v2           #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :goto_1
    return-object v2

    .line 47
    .restart local v2       #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v2           #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInstallableLanguagePacks(Ljava/util/List;IILjava/util/Map;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter "engineVersion"
    .parameter "deviceClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, all:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    .local p3, installed:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, available:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 115
    .local v3, pack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {v3, p1, p2}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 118
    .local v1, existing:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 119
    :cond_1
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v1           #existing:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v3           #pack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v4, returnedLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-object v4
.end method

.method public static isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;II)Z
    .locals 4
    .parameter "languagePack"
    .parameter "engineVersion"
    .parameter "deviceClass"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, compatibleWithEngine:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getCompatibleEngineVersionsCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getCompatibleEngineVersions(I)I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 68
    const/4 v1, 0x1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, compatibleWithDevice:Z
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getMinimumDeviceClass()I

    move-result v3

    if-ge p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass()Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    :cond_1
    const/4 v0, 0x1

    .line 82
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 66
    .end local v0           #compatibleWithDevice:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .restart local v0       #compatibleWithDevice:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isUpgradeable(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/List;II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 6
    .parameter "pack"
    .parameter
    .parameter "engineVersion"
    .parameter "deviceClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;II)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, all:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, locale:Ljava/lang/String;
    const/4 v3, 0x0

    .line 91
    .local v3, potential:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 94
    .local v0, candidate:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {p0, p2, p3}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 99
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 100
    :cond_1
    move-object v3, v0

    goto :goto_0

    .line 105
    .end local v0           #candidate:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_2
    return-object v3
.end method
