.class public final Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyConversionResult"
.end annotation


# static fields
.field public static final BASE_AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final BASE_CURRENCY_FIELD_NUMBER:I = 0x6

.field public static final BASE_SYMBOL_FIELD_NUMBER:I = 0x2

.field public static final CHART_IMAGE_URL_FIELD_NUMBER:I = 0x8

.field public static final EXCHANGE_RATE_FIELD_NUMBER:I = 0x3

.field public static final LHS_FIELD_NUMBER:I = 0x9

.field public static final RHS_FIELD_NUMBER:I = 0xa

.field public static final TARGET_AMOUNT_FIELD_NUMBER:I = 0x5

.field public static final TARGET_CURRENCY_FIELD_NUMBER:I = 0x7

.field public static final TARGET_SYMBOL_FIELD_NUMBER:I = 0x4


# instance fields
.field private baseAmount_:F

.field private baseCurrency_:Ljava/lang/String;

.field private baseSymbol_:Ljava/lang/String;

.field private cachedSize:I

.field private chartImageUrl_:Ljava/lang/String;

.field private exchangeRate_:F

.field private hasBaseAmount:Z

.field private hasBaseCurrency:Z

.field private hasBaseSymbol:Z

.field private hasChartImageUrl:Z

.field private hasExchangeRate:Z

.field private hasLhs:Z

.field private hasRhs:Z

.field private hasTargetAmount:Z

.field private hasTargetCurrency:Z

.field private hasTargetSymbol:Z

.field private lhs_:Ljava/lang/String;

.field private rhs_:Ljava/lang/String;

.field private targetAmount_:F

.field private targetCurrency_:Ljava/lang/String;

.field private targetSymbol_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1048
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 1065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 1099
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1150
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    .line 1043
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1393
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1387
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearBaseAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1217
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearBaseSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1218
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearBaseCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1219
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearExchangeRate()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1220
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearTargetSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1221
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearTargetCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1222
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearTargetAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1223
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearLhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1224
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearRhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1225
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clearChartImageUrl()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1226
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    .line 1227
    return-object p0
.end method

.method public clearBaseAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseAmount:Z

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 1059
    return-object p0
.end method

.method public clearBaseCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseCurrency:Z

    .line 1092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 1093
    return-object p0
.end method

.method public clearBaseSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseSymbol:Z

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 1076
    return-object p0
.end method

.method public clearChartImageUrl()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasChartImageUrl:Z

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1212
    return-object p0
.end method

.method public clearExchangeRate()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasExchangeRate:Z

    .line 1109
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 1110
    return-object p0
.end method

.method public clearLhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasLhs:Z

    .line 1177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1178
    return-object p0
.end method

.method public clearRhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasRhs:Z

    .line 1194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1195
    return-object p0
.end method

.method public clearTargetAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetAmount:Z

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1161
    return-object p0
.end method

.method public clearTargetCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetCurrency:Z

    .line 1143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1144
    return-object p0
.end method

.method public clearTargetSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetSymbol:Z

    .line 1126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1127
    return-object p0
.end method

.method public getBaseAmount()F
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    return v0
.end method

.method public getBaseCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getSerializedSize()I

    .line 1276
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    return v0
.end method

.method public getChartImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeRate()F
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    return v0
.end method

.method public getLhs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    return-object v0
.end method

.method public getRhs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseAmount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseAmount()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseSymbol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1290
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasExchangeRate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1291
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getExchangeRate()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetSymbol()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1295
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetAmount()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1299
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetAmount()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseCurrency()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1303
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1306
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetCurrency()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1307
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1310
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasChartImageUrl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1311
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getChartImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1314
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasLhs()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1315
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getLhs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1318
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasRhs()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1319
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getRhs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1322
    :cond_9
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    .line 1323
    return v0
.end method

.method public getTargetAmount()F
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    return v0
.end method

.method public getTargetCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBaseAmount()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseAmount:Z

    return v0
.end method

.method public hasBaseCurrency()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseCurrency:Z

    return v0
.end method

.method public hasBaseSymbol()Z
    .locals 1

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseSymbol:Z

    return v0
.end method

.method public hasChartImageUrl()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasChartImageUrl:Z

    return v0
.end method

.method public hasExchangeRate()Z
    .locals 1

    .prologue
    .line 1101
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasExchangeRate:Z

    return v0
.end method

.method public hasLhs()Z
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasLhs:Z

    return v0
.end method

.method public hasRhs()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasRhs:Z

    return v0
.end method

.method public hasTargetAmount()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetAmount:Z

    return v0
.end method

.method public hasTargetCurrency()Z
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetCurrency:Z

    return v0
.end method

.method public hasTargetSymbol()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetSymbol:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1231
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1331
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1332
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1336
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    :sswitch_0
    return-object p0

    .line 1342
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setBaseAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1346
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setBaseSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1350
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setExchangeRate(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1354
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setTargetSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1358
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setTargetAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1362
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setBaseCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1366
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setTargetCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1370
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setChartImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1374
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setLhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1378
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->setRhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    goto :goto_0

    .line 1332
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 1040
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v0

    return-object v0
.end method

.method public setBaseAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseAmount:Z

    .line 1053
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 1054
    return-object p0
.end method

.method public setBaseCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseCurrency:Z

    .line 1087
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 1088
    return-object p0
.end method

.method public setBaseSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseSymbol:Z

    .line 1070
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 1071
    return-object p0
.end method

.method public setChartImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasChartImageUrl:Z

    .line 1206
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1207
    return-object p0
.end method

.method public setExchangeRate(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasExchangeRate:Z

    .line 1104
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 1105
    return-object p0
.end method

.method public setLhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasLhs:Z

    .line 1172
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1173
    return-object p0
.end method

.method public setRhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasRhs:Z

    .line 1189
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1190
    return-object p0
.end method

.method public setTargetAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetAmount:Z

    .line 1155
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1156
    return-object p0
.end method

.method public setTargetCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetCurrency:Z

    .line 1138
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1139
    return-object p0
.end method

.method public setTargetSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetSymbol:Z

    .line 1121
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1122
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
    .line 1237
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseAmount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseAmount()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseSymbol()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasExchangeRate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getExchangeRate()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1246
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetSymbol()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1247
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1249
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetAmount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1250
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetAmount()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1252
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasBaseCurrency()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1253
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getBaseCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1255
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasTargetCurrency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1256
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getTargetCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1258
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasChartImageUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1259
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getChartImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1261
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasLhs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1262
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getLhs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1264
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->hasRhs()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1265
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->getRhs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1267
    :cond_9
    return-void
.end method
