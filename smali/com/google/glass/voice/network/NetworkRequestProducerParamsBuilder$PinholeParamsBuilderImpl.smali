.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinholeParamsBuilderImpl"
.end annotation


# instance fields
.field private cookies:Lcom/google/glass/voice/network/Cookies;

.field private locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;)V
    .locals 0
    .parameter "locationHelper"
    .parameter "cookies"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 121
    iput-object p2, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;-><init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;)V

    return-void
.end method


# virtual methods
.method buildParams(Lcom/google/common/base/Supplier;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v7, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    .line 140
    .local v7, searchQueryBuilder:Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 142
    new-instance v6, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v6}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    .line 143
    .local v6, paramsProto:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    invoke-virtual {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getCgiParameters()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v9}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v5

    .line 147
    .local v5, param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-virtual {v6, v5}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 151
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    iget-object v8, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-virtual {v7, v8}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v3

    .line 152
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v2

    .line 157
    .local v2, header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v6, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_1

    .line 160
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_1
    iget-object v8, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    invoke-virtual {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, cookie:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 162
    new-instance v8, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v8}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    const-string v9, "Cookie"

    invoke-virtual {v8, v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v2

    .line 166
    .restart local v2       #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v6, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 168
    .end local v2           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_2
    return-object v6
.end method

.method public getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;

    const-string v1, "PinholeParamsBuilderTask"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;-><init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method
