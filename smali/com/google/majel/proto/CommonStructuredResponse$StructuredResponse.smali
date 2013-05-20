.class public final Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredResponse"
.end annotation


# static fields
.field public static final CALCULATOR_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1bd4b0a

.field public static final CURRENCY_CONVERSION_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1bd1793

.field public static final DICTIONARY_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1cb332a

.field public static final ECOUTEZ_LOCAL_RESULTS_EXTENSION_FIELD_NUMBER:I = 0x1ca484a

.field public static final FINANCE_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1c7f302

.field public static final FLIGHT_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1c879ea

.field public static final GOGGLES_GENERIC_RESULT_EXTENSION_FIELD_NUMBER:I = 0x2466b15

.field public static final KNOWLEDGE_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1fe4d3a

.field public static final PUBLIC_DATA_RESULT_EXTENSION_FIELD_NUMBER:I = 0x2588b73

.field public static final RECOGNIZED_CONTACT_EXTENSION_FIELD_NUMBER:I = 0x293d11b

.field public static final RELATED_SEARCH_RESULTS_EXTENSION_FIELD_NUMBER:I = 0x21a00dd

.field public static final REPLACES_TYPE_FIELD_NUMBER:I = 0x1

.field public static final SNIPPET_RESULTS_EXTENSION_FIELD_NUMBER:I = 0x207765c

.field public static final SPORTS_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1cce67c

.field public static final TRANSLATION_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1a07149

.field public static final WEATHER_RESULT_EXTENSION_FIELD_NUMBER:I = 0x1be0d85


# instance fields
.field private cachedSize:I

.field private calculatorResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

.field private currencyConversionResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

.field private dictionaryResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

.field private ecoutezLocalResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

.field private financeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

.field private flightResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

.field private gogglesGenericResultExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

.field private hasCalculatorResultExtension:Z

.field private hasCurrencyConversionResultExtension:Z

.field private hasDictionaryResultExtension:Z

.field private hasEcoutezLocalResultsExtension:Z

.field private hasFinanceResultExtension:Z

.field private hasFlightResultExtension:Z

.field private hasGogglesGenericResultExtension:Z

.field private hasKnowledgeResultExtension:Z

.field private hasPublicDataResultExtension:Z

.field private hasRecognizedContactExtension:Z

.field private hasRelatedSearchResultsExtension:Z

.field private hasReplacesType:Z

.field private hasSnippetResultsExtension:Z

.field private hasSportsResultExtension:Z

.field private hasTranslationResultExtension:Z

.field private hasWeatherResultExtension:Z

.field private knowledgeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

.field private publicDataResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

.field private recognizedContactExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

.field private relatedSearchResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

.field private replacesType_:I

.field private snippetResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

.field private sportsResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

.field private translationResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

.field private weatherResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 32
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 52
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 72
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 92
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 112
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 132
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 152
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 172
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 192
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 212
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 232
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 252
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 272
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 292
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 312
    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearReplacesType()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 331
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 332
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearCurrencyConversionResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 333
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 334
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearWeatherResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 335
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearFinanceResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 336
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearFlightResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 337
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearEcoutezLocalResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 338
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearDictionaryResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 339
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearSportsResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 340
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearKnowledgeResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 341
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearSnippetResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 342
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearRelatedSearchResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 343
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearGogglesGenericResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 344
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearPublicDataResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 345
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clearRecognizedContactExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    .line 347
    return-object p0
.end method

.method public clearCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 86
    return-object p0
.end method

.method public clearCurrencyConversionResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCurrencyConversionResultExtension:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 66
    return-object p0
.end method

.method public clearDictionaryResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension:Z

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 186
    return-object p0
.end method

.method public clearEcoutezLocalResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 166
    return-object p0
.end method

.method public clearFinanceResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 126
    return-object p0
.end method

.method public clearFlightResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 146
    return-object p0
.end method

.method public clearGogglesGenericResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasGogglesGenericResultExtension:Z

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 286
    return-object p0
.end method

.method public clearKnowledgeResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension:Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 226
    return-object p0
.end method

.method public clearPublicDataResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasPublicDataResultExtension:Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 306
    return-object p0
.end method

.method public clearRecognizedContactExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRecognizedContactExtension:Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 326
    return-object p0
.end method

.method public clearRelatedSearchResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRelatedSearchResultsExtension:Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 266
    return-object p0
.end method

.method public clearReplacesType()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasReplacesType:Z

    .line 25
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 26
    return-object p0
.end method

.method public clearSnippetResultsExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension:Z

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 246
    return-object p0
.end method

.method public clearSportsResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension:Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 206
    return-object p0
.end method

.method public clearTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 46
    return-object p0
.end method

.method public clearWeatherResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 106
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSerializedSize()I

    .line 414
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    return v0
.end method

.method public getCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    return-object v0
.end method

.method public getCurrencyConversionResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    return-object v0
.end method

.method public getDictionaryResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    return-object v0
.end method

.method public getEcoutezLocalResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    return-object v0
.end method

.method public getFinanceResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    return-object v0
.end method

.method public getFlightResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    return-object v0
.end method

.method public getGogglesGenericResultExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    return-object v0
.end method

.method public getKnowledgeResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    return-object v0
.end method

.method public getPublicDataResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    return-object v0
.end method

.method public getRecognizedContactExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    return-object v0
.end method

.method public getRelatedSearchResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    return-object v0
.end method

.method public getReplacesType()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasReplacesType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getReplacesType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const v1, 0x1a07149

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCurrencyConversionResultExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    const v1, 0x1bd1793

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getCurrencyConversionResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const v1, 0x1bd4b0a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    const v1, 0x1be0d85

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getWeatherResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 441
    const v1, 0x1c7f302

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFinanceResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 445
    const v1, 0x1c879ea

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFlightResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 449
    const v1, 0x1ca484a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getEcoutezLocalResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 453
    const v1, 0x1cb332a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getDictionaryResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 457
    const v1, 0x1cce67c

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSportsResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 461
    const v1, 0x1fe4d3a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getKnowledgeResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 465
    const v1, 0x207765c

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSnippetResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRelatedSearchResultsExtension()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 469
    const v1, 0x21a00dd

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getRelatedSearchResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasGogglesGenericResultExtension()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 473
    const v1, 0x2466b15

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getGogglesGenericResultExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasPublicDataResultExtension()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 477
    const v1, 0x2588b73

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getPublicDataResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRecognizedContactExtension()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 481
    const v1, 0x293d11b

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getRecognizedContactExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 484
    :cond_f
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    .line 485
    return v0
.end method

.method public getSnippetResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    return-object v0
.end method

.method public getSportsResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    return-object v0
.end method

.method public getTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    return-object v0
.end method

.method public getWeatherResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    return-object v0
.end method

.method public hasCalculatorResultExtension()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension:Z

    return v0
.end method

.method public hasCurrencyConversionResultExtension()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCurrencyConversionResultExtension:Z

    return v0
.end method

.method public hasDictionaryResultExtension()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension:Z

    return v0
.end method

.method public hasEcoutezLocalResultsExtension()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension:Z

    return v0
.end method

.method public hasFinanceResultExtension()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension:Z

    return v0
.end method

.method public hasFlightResultExtension()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension:Z

    return v0
.end method

.method public hasGogglesGenericResultExtension()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasGogglesGenericResultExtension:Z

    return v0
.end method

.method public hasKnowledgeResultExtension()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension:Z

    return v0
.end method

.method public hasPublicDataResultExtension()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasPublicDataResultExtension:Z

    return v0
.end method

.method public hasRecognizedContactExtension()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRecognizedContactExtension:Z

    return v0
.end method

.method public hasRelatedSearchResultsExtension()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRelatedSearchResultsExtension:Z

    return v0
.end method

.method public hasReplacesType()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasReplacesType:Z

    return v0
.end method

.method public hasSnippetResultsExtension()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension:Z

    return v0
.end method

.method public hasSportsResultExtension()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension:Z

    return v0
.end method

.method public hasTranslationResultExtension()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension:Z

    return v0
.end method

.method public hasWeatherResultExtension()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 494
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    :sswitch_0
    return-object p0

    .line 504
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setReplacesType(I)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 508
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    .line 509
    .local v1, value:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setTranslationResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 514
    .end local v1           #value:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    .line 515
    .local v1, value:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setCurrencyConversionResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 520
    .end local v1           #value:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    .line 521
    .local v1, value:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setCalculatorResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 526
    .end local v1           #value:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    .line 527
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 528
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setWeatherResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 532
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    .line 533
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setFinanceResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 538
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    .line 539
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setFlightResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 544
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    :sswitch_8
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    .line 545
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setEcoutezLocalResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 550
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    .line 551
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 552
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setDictionaryResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto :goto_0

    .line 556
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    .line 557
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setSportsResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 562
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    :sswitch_b
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    .line 563
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setKnowledgeResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 568
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    :sswitch_c
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    .line 569
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 570
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setSnippetResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 574
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    :sswitch_d
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    .line 575
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 576
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setRelatedSearchResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 580
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    :sswitch_e
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    .line 581
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 582
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setGogglesGenericResultExtension(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 586
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    :sswitch_f
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    .line 587
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 588
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setPublicDataResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 592
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    :sswitch_10
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    .line 593
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 594
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->setRecognizedContactExtension(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    goto/16 :goto_0

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xd038a4a -> :sswitch_2
        0xde8bc9a -> :sswitch_3
        0xdea5852 -> :sswitch_4
        0xdf06c2a -> :sswitch_5
        0xe3f9812 -> :sswitch_6
        0xe43cf52 -> :sswitch_7
        0xe524252 -> :sswitch_8
        0xe599952 -> :sswitch_9
        0xe6733e2 -> :sswitch_a
        0xff269d2 -> :sswitch_b
        0x103bb2e2 -> :sswitch_c
        0x10d006ea -> :sswitch_d
        0x123358aa -> :sswitch_e
        0x12c45b9a -> :sswitch_f
        0x149e88da -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCalculatorResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension:Z

    .line 80
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 81
    return-object p0
.end method

.method public setCurrencyConversionResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCurrencyConversionResultExtension:Z

    .line 60
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 61
    return-object p0
.end method

.method public setDictionaryResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension:Z

    .line 180
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 181
    return-object p0
.end method

.method public setEcoutezLocalResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension:Z

    .line 160
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 161
    return-object p0
.end method

.method public setFinanceResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension:Z

    .line 120
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 121
    return-object p0
.end method

.method public setFlightResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension:Z

    .line 140
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 141
    return-object p0
.end method

.method public setGogglesGenericResultExtension(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasGogglesGenericResultExtension:Z

    .line 280
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 281
    return-object p0
.end method

.method public setKnowledgeResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension:Z

    .line 220
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 221
    return-object p0
.end method

.method public setPublicDataResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasPublicDataResultExtension:Z

    .line 300
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 301
    return-object p0
.end method

.method public setRecognizedContactExtension(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRecognizedContactExtension:Z

    .line 320
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 321
    return-object p0
.end method

.method public setRelatedSearchResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRelatedSearchResultsExtension:Z

    .line 260
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 261
    return-object p0
.end method

.method public setReplacesType(I)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasReplacesType:Z

    .line 20
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 21
    return-object p0
.end method

.method public setSnippetResultsExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension:Z

    .line 240
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 241
    return-object p0
.end method

.method public setSportsResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension:Z

    .line 200
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 201
    return-object p0
.end method

.method public setTranslationResultExtension(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension:Z

    .line 40
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension_:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 41
    return-object p0
.end method

.method public setWeatherResultExtension(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension:Z

    .line 100
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 101
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasReplacesType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getReplacesType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const v0, 0x1a07149

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCurrencyConversionResultExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const v0, 0x1bd1793

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getCurrencyConversionResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    const v0, 0x1bd4b0a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    const v0, 0x1be0d85

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getWeatherResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 372
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    const v0, 0x1c7f302

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFinanceResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 375
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 376
    const v0, 0x1c879ea

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFlightResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 379
    const v0, 0x1ca484a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getEcoutezLocalResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 381
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    const v0, 0x1cb332a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getDictionaryResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 384
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    const v0, 0x1cce67c

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSportsResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 387
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    const v0, 0x1fe4d3a

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getKnowledgeResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 390
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 391
    const v0, 0x207765c

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSnippetResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 393
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRelatedSearchResultsExtension()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 394
    const v0, 0x21a00dd

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getRelatedSearchResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 396
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasGogglesGenericResultExtension()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 397
    const v0, 0x2466b15

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getGogglesGenericResultExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 399
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasPublicDataResultExtension()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 400
    const v0, 0x2588b73

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getPublicDataResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 402
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasRecognizedContactExtension()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 403
    const v0, 0x293d11b

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getRecognizedContactExtension()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 405
    :cond_f
    return-void
.end method
