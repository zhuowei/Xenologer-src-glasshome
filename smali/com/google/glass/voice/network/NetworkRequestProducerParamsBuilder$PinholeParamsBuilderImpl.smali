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
.field private locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;)V
    .locals 0
    .parameter "locationHelper"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;-><init>(Lcom/google/android/speech/helper/SpeechLocationHelper;)V

    return-void
.end method


# virtual methods
.method buildParams(Lcom/google/common/base/Supplier;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 9
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
    .line 137
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/glass/util/SearchQueryBuilder;

    invoke-direct {v6}, Lcom/google/glass/util/SearchQueryBuilder;-><init>()V

    .line 138
    .local v6, searchQueryBuilder:Lcom/google/glass/util/SearchQueryBuilder;
    invoke-virtual {v6}, Lcom/google/glass/util/SearchQueryBuilder;->addTransportParams()V

    .line 140
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    .line 141
    .local v5, paramsProto:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    invoke-virtual {v6}, Lcom/google/glass/util/SearchQueryBuilder;->getCgiParameters()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v8}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v4

    .line 145
    .local v4, param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-virtual {v5, v4}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 149
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    iget-object v7, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-virtual {v6, v7}, Lcom/google/glass/util/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v2

    .line 150
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v8}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v1

    .line 155
    .local v1, header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v5, v1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_1

    .line 157
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_1
    return-object v5
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
    .line 125
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;

    const-string v1, "PinholeParamsBuilderTask"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;-><init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method
