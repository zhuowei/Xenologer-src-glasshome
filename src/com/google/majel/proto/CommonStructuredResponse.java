package com.google.majel.proto;

import com.google.bionics.goggles.api2.GogglesStructuredResponseProtos.GogglesGenericResult;
import com.google.bionics.goggles.api2.GogglesStructuredResponseProtos.RecognizedContact;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class CommonStructuredResponse
{
  public static final class CalculatorResult extends MessageMicro
  {
    public static final int LEFT_FIELD_NUMBER = 1;
    public static final int RIGHT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLeft;
    private boolean hasRight;
    private String left_ = "";
    private String right_ = "";

    public static CalculatorResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new CalculatorResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static CalculatorResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (CalculatorResult)new CalculatorResult().mergeFrom(paramArrayOfByte);
    }

    public final CalculatorResult clear()
    {
      clearLeft();
      clearRight();
      this.cachedSize = -1;
      return this;
    }

    public CalculatorResult clearLeft()
    {
      this.hasLeft = false;
      this.left_ = "";
      return this;
    }

    public CalculatorResult clearRight()
    {
      this.hasRight = false;
      this.right_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLeft()
    {
      return this.left_;
    }

    public String getRight()
    {
      return this.right_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLeft();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLeft());
      if (hasRight())
        i += CodedOutputStreamMicro.computeStringSize(2, getRight());
      this.cachedSize = i;
      return i;
    }

    public boolean hasLeft()
    {
      return this.hasLeft;
    }

    public boolean hasRight()
    {
      return this.hasRight;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public CalculatorResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
          setLeft(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setRight(paramCodedInputStreamMicro.readString());
      }
    }

    public CalculatorResult setLeft(String paramString)
    {
      this.hasLeft = true;
      this.left_ = paramString;
      return this;
    }

    public CalculatorResult setRight(String paramString)
    {
      this.hasRight = true;
      this.right_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLeft())
        paramCodedOutputStreamMicro.writeString(1, getLeft());
      if (hasRight())
        paramCodedOutputStreamMicro.writeString(2, getRight());
    }
  }

  public static final class CurrencyConversionResult extends MessageMicro
  {
    public static final int BASE_AMOUNT_FIELD_NUMBER = 1;
    public static final int BASE_CURRENCY_FIELD_NUMBER = 6;
    public static final int BASE_SYMBOL_FIELD_NUMBER = 2;
    public static final int CHART_IMAGE_URL_FIELD_NUMBER = 8;
    public static final int EXCHANGE_RATE_FIELD_NUMBER = 3;
    public static final int LHS_FIELD_NUMBER = 9;
    public static final int RHS_FIELD_NUMBER = 10;
    public static final int TARGET_AMOUNT_FIELD_NUMBER = 5;
    public static final int TARGET_CURRENCY_FIELD_NUMBER = 7;
    public static final int TARGET_SYMBOL_FIELD_NUMBER = 4;
    private float baseAmount_ = 0.0F;
    private String baseCurrency_ = "";
    private String baseSymbol_ = "";
    private int cachedSize = -1;
    private String chartImageUrl_ = "";
    private float exchangeRate_ = 0.0F;
    private boolean hasBaseAmount;
    private boolean hasBaseCurrency;
    private boolean hasBaseSymbol;
    private boolean hasChartImageUrl;
    private boolean hasExchangeRate;
    private boolean hasLhs;
    private boolean hasRhs;
    private boolean hasTargetAmount;
    private boolean hasTargetCurrency;
    private boolean hasTargetSymbol;
    private String lhs_ = "";
    private String rhs_ = "";
    private float targetAmount_ = 0.0F;
    private String targetCurrency_ = "";
    private String targetSymbol_ = "";

    public static CurrencyConversionResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new CurrencyConversionResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static CurrencyConversionResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (CurrencyConversionResult)new CurrencyConversionResult().mergeFrom(paramArrayOfByte);
    }

    public final CurrencyConversionResult clear()
    {
      clearBaseAmount();
      clearBaseSymbol();
      clearBaseCurrency();
      clearExchangeRate();
      clearTargetSymbol();
      clearTargetCurrency();
      clearTargetAmount();
      clearLhs();
      clearRhs();
      clearChartImageUrl();
      this.cachedSize = -1;
      return this;
    }

    public CurrencyConversionResult clearBaseAmount()
    {
      this.hasBaseAmount = false;
      this.baseAmount_ = 0.0F;
      return this;
    }

    public CurrencyConversionResult clearBaseCurrency()
    {
      this.hasBaseCurrency = false;
      this.baseCurrency_ = "";
      return this;
    }

    public CurrencyConversionResult clearBaseSymbol()
    {
      this.hasBaseSymbol = false;
      this.baseSymbol_ = "";
      return this;
    }

    public CurrencyConversionResult clearChartImageUrl()
    {
      this.hasChartImageUrl = false;
      this.chartImageUrl_ = "";
      return this;
    }

    public CurrencyConversionResult clearExchangeRate()
    {
      this.hasExchangeRate = false;
      this.exchangeRate_ = 0.0F;
      return this;
    }

    public CurrencyConversionResult clearLhs()
    {
      this.hasLhs = false;
      this.lhs_ = "";
      return this;
    }

    public CurrencyConversionResult clearRhs()
    {
      this.hasRhs = false;
      this.rhs_ = "";
      return this;
    }

    public CurrencyConversionResult clearTargetAmount()
    {
      this.hasTargetAmount = false;
      this.targetAmount_ = 0.0F;
      return this;
    }

    public CurrencyConversionResult clearTargetCurrency()
    {
      this.hasTargetCurrency = false;
      this.targetCurrency_ = "";
      return this;
    }

    public CurrencyConversionResult clearTargetSymbol()
    {
      this.hasTargetSymbol = false;
      this.targetSymbol_ = "";
      return this;
    }

    public float getBaseAmount()
    {
      return this.baseAmount_;
    }

    public String getBaseCurrency()
    {
      return this.baseCurrency_;
    }

    public String getBaseSymbol()
    {
      return this.baseSymbol_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getChartImageUrl()
    {
      return this.chartImageUrl_;
    }

    public float getExchangeRate()
    {
      return this.exchangeRate_;
    }

    public String getLhs()
    {
      return this.lhs_;
    }

    public String getRhs()
    {
      return this.rhs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasBaseAmount();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getBaseAmount());
      if (hasBaseSymbol())
        i += CodedOutputStreamMicro.computeStringSize(2, getBaseSymbol());
      if (hasExchangeRate())
        i += CodedOutputStreamMicro.computeFloatSize(3, getExchangeRate());
      if (hasTargetSymbol())
        i += CodedOutputStreamMicro.computeStringSize(4, getTargetSymbol());
      if (hasTargetAmount())
        i += CodedOutputStreamMicro.computeFloatSize(5, getTargetAmount());
      if (hasBaseCurrency())
        i += CodedOutputStreamMicro.computeStringSize(6, getBaseCurrency());
      if (hasTargetCurrency())
        i += CodedOutputStreamMicro.computeStringSize(7, getTargetCurrency());
      if (hasChartImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(8, getChartImageUrl());
      if (hasLhs())
        i += CodedOutputStreamMicro.computeStringSize(9, getLhs());
      if (hasRhs())
        i += CodedOutputStreamMicro.computeStringSize(10, getRhs());
      this.cachedSize = i;
      return i;
    }

    public float getTargetAmount()
    {
      return this.targetAmount_;
    }

    public String getTargetCurrency()
    {
      return this.targetCurrency_;
    }

    public String getTargetSymbol()
    {
      return this.targetSymbol_;
    }

    public boolean hasBaseAmount()
    {
      return this.hasBaseAmount;
    }

    public boolean hasBaseCurrency()
    {
      return this.hasBaseCurrency;
    }

    public boolean hasBaseSymbol()
    {
      return this.hasBaseSymbol;
    }

    public boolean hasChartImageUrl()
    {
      return this.hasChartImageUrl;
    }

    public boolean hasExchangeRate()
    {
      return this.hasExchangeRate;
    }

    public boolean hasLhs()
    {
      return this.hasLhs;
    }

    public boolean hasRhs()
    {
      return this.hasRhs;
    }

    public boolean hasTargetAmount()
    {
      return this.hasTargetAmount;
    }

    public boolean hasTargetCurrency()
    {
      return this.hasTargetCurrency;
    }

    public boolean hasTargetSymbol()
    {
      return this.hasTargetSymbol;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public CurrencyConversionResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 13:
          setBaseAmount(paramCodedInputStreamMicro.readFloat());
          break;
        case 18:
          setBaseSymbol(paramCodedInputStreamMicro.readString());
          break;
        case 29:
          setExchangeRate(paramCodedInputStreamMicro.readFloat());
          break;
        case 34:
          setTargetSymbol(paramCodedInputStreamMicro.readString());
          break;
        case 45:
          setTargetAmount(paramCodedInputStreamMicro.readFloat());
          break;
        case 50:
          setBaseCurrency(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setTargetCurrency(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setChartImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setLhs(paramCodedInputStreamMicro.readString());
          break;
        case 82:
        }
        setRhs(paramCodedInputStreamMicro.readString());
      }
    }

    public CurrencyConversionResult setBaseAmount(float paramFloat)
    {
      this.hasBaseAmount = true;
      this.baseAmount_ = paramFloat;
      return this;
    }

    public CurrencyConversionResult setBaseCurrency(String paramString)
    {
      this.hasBaseCurrency = true;
      this.baseCurrency_ = paramString;
      return this;
    }

    public CurrencyConversionResult setBaseSymbol(String paramString)
    {
      this.hasBaseSymbol = true;
      this.baseSymbol_ = paramString;
      return this;
    }

    public CurrencyConversionResult setChartImageUrl(String paramString)
    {
      this.hasChartImageUrl = true;
      this.chartImageUrl_ = paramString;
      return this;
    }

    public CurrencyConversionResult setExchangeRate(float paramFloat)
    {
      this.hasExchangeRate = true;
      this.exchangeRate_ = paramFloat;
      return this;
    }

    public CurrencyConversionResult setLhs(String paramString)
    {
      this.hasLhs = true;
      this.lhs_ = paramString;
      return this;
    }

    public CurrencyConversionResult setRhs(String paramString)
    {
      this.hasRhs = true;
      this.rhs_ = paramString;
      return this;
    }

    public CurrencyConversionResult setTargetAmount(float paramFloat)
    {
      this.hasTargetAmount = true;
      this.targetAmount_ = paramFloat;
      return this;
    }

    public CurrencyConversionResult setTargetCurrency(String paramString)
    {
      this.hasTargetCurrency = true;
      this.targetCurrency_ = paramString;
      return this;
    }

    public CurrencyConversionResult setTargetSymbol(String paramString)
    {
      this.hasTargetSymbol = true;
      this.targetSymbol_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasBaseAmount())
        paramCodedOutputStreamMicro.writeFloat(1, getBaseAmount());
      if (hasBaseSymbol())
        paramCodedOutputStreamMicro.writeString(2, getBaseSymbol());
      if (hasExchangeRate())
        paramCodedOutputStreamMicro.writeFloat(3, getExchangeRate());
      if (hasTargetSymbol())
        paramCodedOutputStreamMicro.writeString(4, getTargetSymbol());
      if (hasTargetAmount())
        paramCodedOutputStreamMicro.writeFloat(5, getTargetAmount());
      if (hasBaseCurrency())
        paramCodedOutputStreamMicro.writeString(6, getBaseCurrency());
      if (hasTargetCurrency())
        paramCodedOutputStreamMicro.writeString(7, getTargetCurrency());
      if (hasChartImageUrl())
        paramCodedOutputStreamMicro.writeString(8, getChartImageUrl());
      if (hasLhs())
        paramCodedOutputStreamMicro.writeString(9, getLhs());
      if (hasRhs())
        paramCodedOutputStreamMicro.writeString(10, getRhs());
    }
  }

  public static final class StructuredResponse extends MessageMicro
  {
    public static final int CALCULATOR_RESULT_EXTENSION_FIELD_NUMBER = 29182730;
    public static final int CURRENCY_CONVERSION_RESULT_EXTENSION_FIELD_NUMBER = 29169555;
    public static final int DICTIONARY_RESULT_EXTENSION_FIELD_NUMBER = 30094122;
    public static final int ECOUTEZ_LOCAL_RESULTS_EXTENSION_FIELD_NUMBER = 30033994;
    public static final int FINANCE_RESULT_EXTENSION_FIELD_NUMBER = 29881090;
    public static final int FLIGHT_RESULT_EXTENSION_FIELD_NUMBER = 29915626;
    public static final int GOGGLES_GENERIC_RESULT_EXTENSION_FIELD_NUMBER = 38169365;
    public static final int KNOWLEDGE_RESULT_EXTENSION_FIELD_NUMBER = 33443130;
    public static final int PUBLIC_DATA_RESULT_EXTENSION_FIELD_NUMBER = 39357299;
    public static final int RECOGNIZED_CONTACT_EXTENSION_FIELD_NUMBER = 43241755;
    public static final int RELATED_SEARCH_RESULTS_EXTENSION_FIELD_NUMBER = 35258589;
    public static final int REPLACES_TYPE_FIELD_NUMBER = 1;
    public static final int SNIPPET_RESULTS_EXTENSION_FIELD_NUMBER = 34043484;
    public static final int SPORTS_RESULT_EXTENSION_FIELD_NUMBER = 30205564;
    public static final int TRANSLATION_RESULT_EXTENSION_FIELD_NUMBER = 27291977;
    public static final int WEATHER_RESULT_EXTENSION_FIELD_NUMBER = 29232517;
    private int cachedSize = -1;
    private CommonStructuredResponse.CalculatorResult calculatorResultExtension_ = null;
    private CommonStructuredResponse.CurrencyConversionResult currencyConversionResultExtension_ = null;
    private EcoutezStructuredResponse.DictionaryResult dictionaryResultExtension_ = null;
    private EcoutezStructuredResponse.EcoutezLocalResults ecoutezLocalResultsExtension_ = null;
    private EcoutezStructuredResponse.FinanceResult financeResultExtension_ = null;
    private EcoutezStructuredResponse.FlightResult flightResultExtension_ = null;
    private GogglesStructuredResponseProtos.GogglesGenericResult gogglesGenericResultExtension_ = null;
    private boolean hasCalculatorResultExtension;
    private boolean hasCurrencyConversionResultExtension;
    private boolean hasDictionaryResultExtension;
    private boolean hasEcoutezLocalResultsExtension;
    private boolean hasFinanceResultExtension;
    private boolean hasFlightResultExtension;
    private boolean hasGogglesGenericResultExtension;
    private boolean hasKnowledgeResultExtension;
    private boolean hasPublicDataResultExtension;
    private boolean hasRecognizedContactExtension;
    private boolean hasRelatedSearchResultsExtension;
    private boolean hasReplacesType;
    private boolean hasSnippetResultsExtension;
    private boolean hasSportsResultExtension;
    private boolean hasTranslationResultExtension;
    private boolean hasWeatherResultExtension;
    private EcoutezStructuredResponse.KnowledgeResult knowledgeResultExtension_ = null;
    private EcoutezStructuredResponse.PublicDataResult publicDataResultExtension_ = null;
    private GogglesStructuredResponseProtos.RecognizedContact recognizedContactExtension_ = null;
    private EcoutezStructuredResponse.RelatedSearchResults relatedSearchResultsExtension_ = null;
    private int replacesType_ = 0;
    private EcoutezStructuredResponse.SnippetResults snippetResultsExtension_ = null;
    private EcoutezStructuredResponse.SportsResult sportsResultExtension_ = null;
    private CommonStructuredResponse.TranslationResult translationResultExtension_ = null;
    private EcoutezStructuredResponse.WeatherResult weatherResultExtension_ = null;

    public static StructuredResponse parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new StructuredResponse().mergeFrom(paramCodedInputStreamMicro);
    }

    public static StructuredResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (StructuredResponse)new StructuredResponse().mergeFrom(paramArrayOfByte);
    }

    public final StructuredResponse clear()
    {
      clearReplacesType();
      clearTranslationResultExtension();
      clearCurrencyConversionResultExtension();
      clearCalculatorResultExtension();
      clearWeatherResultExtension();
      clearFinanceResultExtension();
      clearFlightResultExtension();
      clearEcoutezLocalResultsExtension();
      clearDictionaryResultExtension();
      clearSportsResultExtension();
      clearKnowledgeResultExtension();
      clearSnippetResultsExtension();
      clearRelatedSearchResultsExtension();
      clearGogglesGenericResultExtension();
      clearPublicDataResultExtension();
      clearRecognizedContactExtension();
      this.cachedSize = -1;
      return this;
    }

    public StructuredResponse clearCalculatorResultExtension()
    {
      this.hasCalculatorResultExtension = false;
      this.calculatorResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearCurrencyConversionResultExtension()
    {
      this.hasCurrencyConversionResultExtension = false;
      this.currencyConversionResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearDictionaryResultExtension()
    {
      this.hasDictionaryResultExtension = false;
      this.dictionaryResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearEcoutezLocalResultsExtension()
    {
      this.hasEcoutezLocalResultsExtension = false;
      this.ecoutezLocalResultsExtension_ = null;
      return this;
    }

    public StructuredResponse clearFinanceResultExtension()
    {
      this.hasFinanceResultExtension = false;
      this.financeResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearFlightResultExtension()
    {
      this.hasFlightResultExtension = false;
      this.flightResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearGogglesGenericResultExtension()
    {
      this.hasGogglesGenericResultExtension = false;
      this.gogglesGenericResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearKnowledgeResultExtension()
    {
      this.hasKnowledgeResultExtension = false;
      this.knowledgeResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearPublicDataResultExtension()
    {
      this.hasPublicDataResultExtension = false;
      this.publicDataResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearRecognizedContactExtension()
    {
      this.hasRecognizedContactExtension = false;
      this.recognizedContactExtension_ = null;
      return this;
    }

    public StructuredResponse clearRelatedSearchResultsExtension()
    {
      this.hasRelatedSearchResultsExtension = false;
      this.relatedSearchResultsExtension_ = null;
      return this;
    }

    public StructuredResponse clearReplacesType()
    {
      this.hasReplacesType = false;
      this.replacesType_ = 0;
      return this;
    }

    public StructuredResponse clearSnippetResultsExtension()
    {
      this.hasSnippetResultsExtension = false;
      this.snippetResultsExtension_ = null;
      return this;
    }

    public StructuredResponse clearSportsResultExtension()
    {
      this.hasSportsResultExtension = false;
      this.sportsResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearTranslationResultExtension()
    {
      this.hasTranslationResultExtension = false;
      this.translationResultExtension_ = null;
      return this;
    }

    public StructuredResponse clearWeatherResultExtension()
    {
      this.hasWeatherResultExtension = false;
      this.weatherResultExtension_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public CommonStructuredResponse.CalculatorResult getCalculatorResultExtension()
    {
      return this.calculatorResultExtension_;
    }

    public CommonStructuredResponse.CurrencyConversionResult getCurrencyConversionResultExtension()
    {
      return this.currencyConversionResultExtension_;
    }

    public EcoutezStructuredResponse.DictionaryResult getDictionaryResultExtension()
    {
      return this.dictionaryResultExtension_;
    }

    public EcoutezStructuredResponse.EcoutezLocalResults getEcoutezLocalResultsExtension()
    {
      return this.ecoutezLocalResultsExtension_;
    }

    public EcoutezStructuredResponse.FinanceResult getFinanceResultExtension()
    {
      return this.financeResultExtension_;
    }

    public EcoutezStructuredResponse.FlightResult getFlightResultExtension()
    {
      return this.flightResultExtension_;
    }

    public GogglesStructuredResponseProtos.GogglesGenericResult getGogglesGenericResultExtension()
    {
      return this.gogglesGenericResultExtension_;
    }

    public EcoutezStructuredResponse.KnowledgeResult getKnowledgeResultExtension()
    {
      return this.knowledgeResultExtension_;
    }

    public EcoutezStructuredResponse.PublicDataResult getPublicDataResultExtension()
    {
      return this.publicDataResultExtension_;
    }

    public GogglesStructuredResponseProtos.RecognizedContact getRecognizedContactExtension()
    {
      return this.recognizedContactExtension_;
    }

    public EcoutezStructuredResponse.RelatedSearchResults getRelatedSearchResultsExtension()
    {
      return this.relatedSearchResultsExtension_;
    }

    public int getReplacesType()
    {
      return this.replacesType_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasReplacesType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getReplacesType());
      if (hasTranslationResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27291977, getTranslationResultExtension());
      if (hasCurrencyConversionResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29169555, getCurrencyConversionResultExtension());
      if (hasCalculatorResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29182730, getCalculatorResultExtension());
      if (hasWeatherResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29232517, getWeatherResultExtension());
      if (hasFinanceResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29881090, getFinanceResultExtension());
      if (hasFlightResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29915626, getFlightResultExtension());
      if (hasEcoutezLocalResultsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(30033994, getEcoutezLocalResultsExtension());
      if (hasDictionaryResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(30094122, getDictionaryResultExtension());
      if (hasSportsResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(30205564, getSportsResultExtension());
      if (hasKnowledgeResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(33443130, getKnowledgeResultExtension());
      if (hasSnippetResultsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(34043484, getSnippetResultsExtension());
      if (hasRelatedSearchResultsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(35258589, getRelatedSearchResultsExtension());
      if (hasGogglesGenericResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(38169365, getGogglesGenericResultExtension());
      if (hasPublicDataResultExtension())
        i += CodedOutputStreamMicro.computeMessageSize(39357299, getPublicDataResultExtension());
      if (hasRecognizedContactExtension())
        i += CodedOutputStreamMicro.computeMessageSize(43241755, getRecognizedContactExtension());
      this.cachedSize = i;
      return i;
    }

    public EcoutezStructuredResponse.SnippetResults getSnippetResultsExtension()
    {
      return this.snippetResultsExtension_;
    }

    public EcoutezStructuredResponse.SportsResult getSportsResultExtension()
    {
      return this.sportsResultExtension_;
    }

    public CommonStructuredResponse.TranslationResult getTranslationResultExtension()
    {
      return this.translationResultExtension_;
    }

    public EcoutezStructuredResponse.WeatherResult getWeatherResultExtension()
    {
      return this.weatherResultExtension_;
    }

    public boolean hasCalculatorResultExtension()
    {
      return this.hasCalculatorResultExtension;
    }

    public boolean hasCurrencyConversionResultExtension()
    {
      return this.hasCurrencyConversionResultExtension;
    }

    public boolean hasDictionaryResultExtension()
    {
      return this.hasDictionaryResultExtension;
    }

    public boolean hasEcoutezLocalResultsExtension()
    {
      return this.hasEcoutezLocalResultsExtension;
    }

    public boolean hasFinanceResultExtension()
    {
      return this.hasFinanceResultExtension;
    }

    public boolean hasFlightResultExtension()
    {
      return this.hasFlightResultExtension;
    }

    public boolean hasGogglesGenericResultExtension()
    {
      return this.hasGogglesGenericResultExtension;
    }

    public boolean hasKnowledgeResultExtension()
    {
      return this.hasKnowledgeResultExtension;
    }

    public boolean hasPublicDataResultExtension()
    {
      return this.hasPublicDataResultExtension;
    }

    public boolean hasRecognizedContactExtension()
    {
      return this.hasRecognizedContactExtension;
    }

    public boolean hasRelatedSearchResultsExtension()
    {
      return this.hasRelatedSearchResultsExtension;
    }

    public boolean hasReplacesType()
    {
      return this.hasReplacesType;
    }

    public boolean hasSnippetResultsExtension()
    {
      return this.hasSnippetResultsExtension;
    }

    public boolean hasSportsResultExtension()
    {
      return this.hasSportsResultExtension;
    }

    public boolean hasTranslationResultExtension()
    {
      return this.hasTranslationResultExtension;
    }

    public boolean hasWeatherResultExtension()
    {
      return this.hasWeatherResultExtension;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public StructuredResponse mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setReplacesType(paramCodedInputStreamMicro.readInt32());
          break;
        case 218335818:
          CommonStructuredResponse.TranslationResult localTranslationResult = new CommonStructuredResponse.TranslationResult();
          paramCodedInputStreamMicro.readMessage(localTranslationResult);
          setTranslationResultExtension(localTranslationResult);
          break;
        case 233356442:
          CommonStructuredResponse.CurrencyConversionResult localCurrencyConversionResult = new CommonStructuredResponse.CurrencyConversionResult();
          paramCodedInputStreamMicro.readMessage(localCurrencyConversionResult);
          setCurrencyConversionResultExtension(localCurrencyConversionResult);
          break;
        case 233461842:
          CommonStructuredResponse.CalculatorResult localCalculatorResult = new CommonStructuredResponse.CalculatorResult();
          paramCodedInputStreamMicro.readMessage(localCalculatorResult);
          setCalculatorResultExtension(localCalculatorResult);
          break;
        case 233860138:
          EcoutezStructuredResponse.WeatherResult localWeatherResult = new EcoutezStructuredResponse.WeatherResult();
          paramCodedInputStreamMicro.readMessage(localWeatherResult);
          setWeatherResultExtension(localWeatherResult);
          break;
        case 239048722:
          EcoutezStructuredResponse.FinanceResult localFinanceResult = new EcoutezStructuredResponse.FinanceResult();
          paramCodedInputStreamMicro.readMessage(localFinanceResult);
          setFinanceResultExtension(localFinanceResult);
          break;
        case 239325010:
          EcoutezStructuredResponse.FlightResult localFlightResult = new EcoutezStructuredResponse.FlightResult();
          paramCodedInputStreamMicro.readMessage(localFlightResult);
          setFlightResultExtension(localFlightResult);
          break;
        case 240271954:
          EcoutezStructuredResponse.EcoutezLocalResults localEcoutezLocalResults = new EcoutezStructuredResponse.EcoutezLocalResults();
          paramCodedInputStreamMicro.readMessage(localEcoutezLocalResults);
          setEcoutezLocalResultsExtension(localEcoutezLocalResults);
          break;
        case 240752978:
          EcoutezStructuredResponse.DictionaryResult localDictionaryResult = new EcoutezStructuredResponse.DictionaryResult();
          paramCodedInputStreamMicro.readMessage(localDictionaryResult);
          setDictionaryResultExtension(localDictionaryResult);
          break;
        case 241644514:
          EcoutezStructuredResponse.SportsResult localSportsResult = new EcoutezStructuredResponse.SportsResult();
          paramCodedInputStreamMicro.readMessage(localSportsResult);
          setSportsResultExtension(localSportsResult);
          break;
        case 267545042:
          EcoutezStructuredResponse.KnowledgeResult localKnowledgeResult = new EcoutezStructuredResponse.KnowledgeResult();
          paramCodedInputStreamMicro.readMessage(localKnowledgeResult);
          setKnowledgeResultExtension(localKnowledgeResult);
          break;
        case 272347874:
          EcoutezStructuredResponse.SnippetResults localSnippetResults = new EcoutezStructuredResponse.SnippetResults();
          paramCodedInputStreamMicro.readMessage(localSnippetResults);
          setSnippetResultsExtension(localSnippetResults);
          break;
        case 282068714:
          EcoutezStructuredResponse.RelatedSearchResults localRelatedSearchResults = new EcoutezStructuredResponse.RelatedSearchResults();
          paramCodedInputStreamMicro.readMessage(localRelatedSearchResults);
          setRelatedSearchResultsExtension(localRelatedSearchResults);
          break;
        case 305354922:
          GogglesStructuredResponseProtos.GogglesGenericResult localGogglesGenericResult = new GogglesStructuredResponseProtos.GogglesGenericResult();
          paramCodedInputStreamMicro.readMessage(localGogglesGenericResult);
          setGogglesGenericResultExtension(localGogglesGenericResult);
          break;
        case 314858394:
          EcoutezStructuredResponse.PublicDataResult localPublicDataResult = new EcoutezStructuredResponse.PublicDataResult();
          paramCodedInputStreamMicro.readMessage(localPublicDataResult);
          setPublicDataResultExtension(localPublicDataResult);
          break;
        case 345934042:
        }
        GogglesStructuredResponseProtos.RecognizedContact localRecognizedContact = new GogglesStructuredResponseProtos.RecognizedContact();
        paramCodedInputStreamMicro.readMessage(localRecognizedContact);
        setRecognizedContactExtension(localRecognizedContact);
      }
    }

    public StructuredResponse setCalculatorResultExtension(CommonStructuredResponse.CalculatorResult paramCalculatorResult)
    {
      if (paramCalculatorResult == null)
        throw new NullPointerException();
      this.hasCalculatorResultExtension = true;
      this.calculatorResultExtension_ = paramCalculatorResult;
      return this;
    }

    public StructuredResponse setCurrencyConversionResultExtension(CommonStructuredResponse.CurrencyConversionResult paramCurrencyConversionResult)
    {
      if (paramCurrencyConversionResult == null)
        throw new NullPointerException();
      this.hasCurrencyConversionResultExtension = true;
      this.currencyConversionResultExtension_ = paramCurrencyConversionResult;
      return this;
    }

    public StructuredResponse setDictionaryResultExtension(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
    {
      if (paramDictionaryResult == null)
        throw new NullPointerException();
      this.hasDictionaryResultExtension = true;
      this.dictionaryResultExtension_ = paramDictionaryResult;
      return this;
    }

    public StructuredResponse setEcoutezLocalResultsExtension(EcoutezStructuredResponse.EcoutezLocalResults paramEcoutezLocalResults)
    {
      if (paramEcoutezLocalResults == null)
        throw new NullPointerException();
      this.hasEcoutezLocalResultsExtension = true;
      this.ecoutezLocalResultsExtension_ = paramEcoutezLocalResults;
      return this;
    }

    public StructuredResponse setFinanceResultExtension(EcoutezStructuredResponse.FinanceResult paramFinanceResult)
    {
      if (paramFinanceResult == null)
        throw new NullPointerException();
      this.hasFinanceResultExtension = true;
      this.financeResultExtension_ = paramFinanceResult;
      return this;
    }

    public StructuredResponse setFlightResultExtension(EcoutezStructuredResponse.FlightResult paramFlightResult)
    {
      if (paramFlightResult == null)
        throw new NullPointerException();
      this.hasFlightResultExtension = true;
      this.flightResultExtension_ = paramFlightResult;
      return this;
    }

    public StructuredResponse setGogglesGenericResultExtension(GogglesStructuredResponseProtos.GogglesGenericResult paramGogglesGenericResult)
    {
      if (paramGogglesGenericResult == null)
        throw new NullPointerException();
      this.hasGogglesGenericResultExtension = true;
      this.gogglesGenericResultExtension_ = paramGogglesGenericResult;
      return this;
    }

    public StructuredResponse setKnowledgeResultExtension(EcoutezStructuredResponse.KnowledgeResult paramKnowledgeResult)
    {
      if (paramKnowledgeResult == null)
        throw new NullPointerException();
      this.hasKnowledgeResultExtension = true;
      this.knowledgeResultExtension_ = paramKnowledgeResult;
      return this;
    }

    public StructuredResponse setPublicDataResultExtension(EcoutezStructuredResponse.PublicDataResult paramPublicDataResult)
    {
      if (paramPublicDataResult == null)
        throw new NullPointerException();
      this.hasPublicDataResultExtension = true;
      this.publicDataResultExtension_ = paramPublicDataResult;
      return this;
    }

    public StructuredResponse setRecognizedContactExtension(GogglesStructuredResponseProtos.RecognizedContact paramRecognizedContact)
    {
      if (paramRecognizedContact == null)
        throw new NullPointerException();
      this.hasRecognizedContactExtension = true;
      this.recognizedContactExtension_ = paramRecognizedContact;
      return this;
    }

    public StructuredResponse setRelatedSearchResultsExtension(EcoutezStructuredResponse.RelatedSearchResults paramRelatedSearchResults)
    {
      if (paramRelatedSearchResults == null)
        throw new NullPointerException();
      this.hasRelatedSearchResultsExtension = true;
      this.relatedSearchResultsExtension_ = paramRelatedSearchResults;
      return this;
    }

    public StructuredResponse setReplacesType(int paramInt)
    {
      this.hasReplacesType = true;
      this.replacesType_ = paramInt;
      return this;
    }

    public StructuredResponse setSnippetResultsExtension(EcoutezStructuredResponse.SnippetResults paramSnippetResults)
    {
      if (paramSnippetResults == null)
        throw new NullPointerException();
      this.hasSnippetResultsExtension = true;
      this.snippetResultsExtension_ = paramSnippetResults;
      return this;
    }

    public StructuredResponse setSportsResultExtension(EcoutezStructuredResponse.SportsResult paramSportsResult)
    {
      if (paramSportsResult == null)
        throw new NullPointerException();
      this.hasSportsResultExtension = true;
      this.sportsResultExtension_ = paramSportsResult;
      return this;
    }

    public StructuredResponse setTranslationResultExtension(CommonStructuredResponse.TranslationResult paramTranslationResult)
    {
      if (paramTranslationResult == null)
        throw new NullPointerException();
      this.hasTranslationResultExtension = true;
      this.translationResultExtension_ = paramTranslationResult;
      return this;
    }

    public StructuredResponse setWeatherResultExtension(EcoutezStructuredResponse.WeatherResult paramWeatherResult)
    {
      if (paramWeatherResult == null)
        throw new NullPointerException();
      this.hasWeatherResultExtension = true;
      this.weatherResultExtension_ = paramWeatherResult;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasReplacesType())
        paramCodedOutputStreamMicro.writeInt32(1, getReplacesType());
      if (hasTranslationResultExtension())
        paramCodedOutputStreamMicro.writeMessage(27291977, getTranslationResultExtension());
      if (hasCurrencyConversionResultExtension())
        paramCodedOutputStreamMicro.writeMessage(29169555, getCurrencyConversionResultExtension());
      if (hasCalculatorResultExtension())
        paramCodedOutputStreamMicro.writeMessage(29182730, getCalculatorResultExtension());
      if (hasWeatherResultExtension())
        paramCodedOutputStreamMicro.writeMessage(29232517, getWeatherResultExtension());
      if (hasFinanceResultExtension())
        paramCodedOutputStreamMicro.writeMessage(29881090, getFinanceResultExtension());
      if (hasFlightResultExtension())
        paramCodedOutputStreamMicro.writeMessage(29915626, getFlightResultExtension());
      if (hasEcoutezLocalResultsExtension())
        paramCodedOutputStreamMicro.writeMessage(30033994, getEcoutezLocalResultsExtension());
      if (hasDictionaryResultExtension())
        paramCodedOutputStreamMicro.writeMessage(30094122, getDictionaryResultExtension());
      if (hasSportsResultExtension())
        paramCodedOutputStreamMicro.writeMessage(30205564, getSportsResultExtension());
      if (hasKnowledgeResultExtension())
        paramCodedOutputStreamMicro.writeMessage(33443130, getKnowledgeResultExtension());
      if (hasSnippetResultsExtension())
        paramCodedOutputStreamMicro.writeMessage(34043484, getSnippetResultsExtension());
      if (hasRelatedSearchResultsExtension())
        paramCodedOutputStreamMicro.writeMessage(35258589, getRelatedSearchResultsExtension());
      if (hasGogglesGenericResultExtension())
        paramCodedOutputStreamMicro.writeMessage(38169365, getGogglesGenericResultExtension());
      if (hasPublicDataResultExtension())
        paramCodedOutputStreamMicro.writeMessage(39357299, getPublicDataResultExtension());
      if (hasRecognizedContactExtension())
        paramCodedOutputStreamMicro.writeMessage(43241755, getRecognizedContactExtension());
    }
  }

  public static final class TranslationResult extends MessageMicro
  {
    public static final int TEXT_TO_TRANSLATE_FIELD_NUMBER = 1;
    public static final int TEXT_TO_TRANSLATE_LANGUAGE_DISPLAY_FIELD_NUMBER = 5;
    public static final int TEXT_TO_TRANSLATE_LANGUAGE_FIELD_NUMBER = 2;
    public static final int TEXT_TO_TRANSLATE_TRANSLITERATION_FIELD_NUMBER = 6;
    public static final int TRANSLATED_TEXT_FIELD_NUMBER = 3;
    public static final int TRANSLATED_TEXT_LANGUAGE_DISPLAY_FIELD_NUMBER = 7;
    public static final int TRANSLATED_TEXT_LANGUAGE_FIELD_NUMBER = 4;
    public static final int TRANSLATED_TEXT_TRANSLITERATION_FIELD_NUMBER = 8;
    private int cachedSize = -1;
    private boolean hasTextToTranslate;
    private boolean hasTextToTranslateLanguage;
    private boolean hasTextToTranslateLanguageDisplay;
    private boolean hasTextToTranslateTransliteration;
    private boolean hasTranslatedText;
    private boolean hasTranslatedTextLanguage;
    private boolean hasTranslatedTextLanguageDisplay;
    private boolean hasTranslatedTextTransliteration;
    private String textToTranslateLanguageDisplay_ = "";
    private String textToTranslateLanguage_ = "";
    private String textToTranslateTransliteration_ = "";
    private String textToTranslate_ = "";
    private String translatedTextLanguageDisplay_ = "";
    private String translatedTextLanguage_ = "";
    private String translatedTextTransliteration_ = "";
    private String translatedText_ = "";

    public static TranslationResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TranslationResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TranslationResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TranslationResult)new TranslationResult().mergeFrom(paramArrayOfByte);
    }

    public final TranslationResult clear()
    {
      clearTextToTranslate();
      clearTextToTranslateLanguage();
      clearTextToTranslateLanguageDisplay();
      clearTextToTranslateTransliteration();
      clearTranslatedText();
      clearTranslatedTextLanguage();
      clearTranslatedTextLanguageDisplay();
      clearTranslatedTextTransliteration();
      this.cachedSize = -1;
      return this;
    }

    public TranslationResult clearTextToTranslate()
    {
      this.hasTextToTranslate = false;
      this.textToTranslate_ = "";
      return this;
    }

    public TranslationResult clearTextToTranslateLanguage()
    {
      this.hasTextToTranslateLanguage = false;
      this.textToTranslateLanguage_ = "";
      return this;
    }

    public TranslationResult clearTextToTranslateLanguageDisplay()
    {
      this.hasTextToTranslateLanguageDisplay = false;
      this.textToTranslateLanguageDisplay_ = "";
      return this;
    }

    public TranslationResult clearTextToTranslateTransliteration()
    {
      this.hasTextToTranslateTransliteration = false;
      this.textToTranslateTransliteration_ = "";
      return this;
    }

    public TranslationResult clearTranslatedText()
    {
      this.hasTranslatedText = false;
      this.translatedText_ = "";
      return this;
    }

    public TranslationResult clearTranslatedTextLanguage()
    {
      this.hasTranslatedTextLanguage = false;
      this.translatedTextLanguage_ = "";
      return this;
    }

    public TranslationResult clearTranslatedTextLanguageDisplay()
    {
      this.hasTranslatedTextLanguageDisplay = false;
      this.translatedTextLanguageDisplay_ = "";
      return this;
    }

    public TranslationResult clearTranslatedTextTransliteration()
    {
      this.hasTranslatedTextTransliteration = false;
      this.translatedTextTransliteration_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTextToTranslate();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTextToTranslate());
      if (hasTextToTranslateLanguage())
        i += CodedOutputStreamMicro.computeStringSize(2, getTextToTranslateLanguage());
      if (hasTranslatedText())
        i += CodedOutputStreamMicro.computeStringSize(3, getTranslatedText());
      if (hasTranslatedTextLanguage())
        i += CodedOutputStreamMicro.computeStringSize(4, getTranslatedTextLanguage());
      if (hasTextToTranslateLanguageDisplay())
        i += CodedOutputStreamMicro.computeStringSize(5, getTextToTranslateLanguageDisplay());
      if (hasTextToTranslateTransliteration())
        i += CodedOutputStreamMicro.computeStringSize(6, getTextToTranslateTransliteration());
      if (hasTranslatedTextLanguageDisplay())
        i += CodedOutputStreamMicro.computeStringSize(7, getTranslatedTextLanguageDisplay());
      if (hasTranslatedTextTransliteration())
        i += CodedOutputStreamMicro.computeStringSize(8, getTranslatedTextTransliteration());
      this.cachedSize = i;
      return i;
    }

    public String getTextToTranslate()
    {
      return this.textToTranslate_;
    }

    public String getTextToTranslateLanguage()
    {
      return this.textToTranslateLanguage_;
    }

    public String getTextToTranslateLanguageDisplay()
    {
      return this.textToTranslateLanguageDisplay_;
    }

    public String getTextToTranslateTransliteration()
    {
      return this.textToTranslateTransliteration_;
    }

    public String getTranslatedText()
    {
      return this.translatedText_;
    }

    public String getTranslatedTextLanguage()
    {
      return this.translatedTextLanguage_;
    }

    public String getTranslatedTextLanguageDisplay()
    {
      return this.translatedTextLanguageDisplay_;
    }

    public String getTranslatedTextTransliteration()
    {
      return this.translatedTextTransliteration_;
    }

    public boolean hasTextToTranslate()
    {
      return this.hasTextToTranslate;
    }

    public boolean hasTextToTranslateLanguage()
    {
      return this.hasTextToTranslateLanguage;
    }

    public boolean hasTextToTranslateLanguageDisplay()
    {
      return this.hasTextToTranslateLanguageDisplay;
    }

    public boolean hasTextToTranslateTransliteration()
    {
      return this.hasTextToTranslateTransliteration;
    }

    public boolean hasTranslatedText()
    {
      return this.hasTranslatedText;
    }

    public boolean hasTranslatedTextLanguage()
    {
      return this.hasTranslatedTextLanguage;
    }

    public boolean hasTranslatedTextLanguageDisplay()
    {
      return this.hasTranslatedTextLanguageDisplay;
    }

    public boolean hasTranslatedTextTransliteration()
    {
      return this.hasTranslatedTextTransliteration;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TranslationResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
          setTextToTranslate(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setTextToTranslateLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setTranslatedText(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setTranslatedTextLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setTextToTranslateLanguageDisplay(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setTextToTranslateTransliteration(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setTranslatedTextLanguageDisplay(paramCodedInputStreamMicro.readString());
          break;
        case 66:
        }
        setTranslatedTextTransliteration(paramCodedInputStreamMicro.readString());
      }
    }

    public TranslationResult setTextToTranslate(String paramString)
    {
      this.hasTextToTranslate = true;
      this.textToTranslate_ = paramString;
      return this;
    }

    public TranslationResult setTextToTranslateLanguage(String paramString)
    {
      this.hasTextToTranslateLanguage = true;
      this.textToTranslateLanguage_ = paramString;
      return this;
    }

    public TranslationResult setTextToTranslateLanguageDisplay(String paramString)
    {
      this.hasTextToTranslateLanguageDisplay = true;
      this.textToTranslateLanguageDisplay_ = paramString;
      return this;
    }

    public TranslationResult setTextToTranslateTransliteration(String paramString)
    {
      this.hasTextToTranslateTransliteration = true;
      this.textToTranslateTransliteration_ = paramString;
      return this;
    }

    public TranslationResult setTranslatedText(String paramString)
    {
      this.hasTranslatedText = true;
      this.translatedText_ = paramString;
      return this;
    }

    public TranslationResult setTranslatedTextLanguage(String paramString)
    {
      this.hasTranslatedTextLanguage = true;
      this.translatedTextLanguage_ = paramString;
      return this;
    }

    public TranslationResult setTranslatedTextLanguageDisplay(String paramString)
    {
      this.hasTranslatedTextLanguageDisplay = true;
      this.translatedTextLanguageDisplay_ = paramString;
      return this;
    }

    public TranslationResult setTranslatedTextTransliteration(String paramString)
    {
      this.hasTranslatedTextTransliteration = true;
      this.translatedTextTransliteration_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTextToTranslate())
        paramCodedOutputStreamMicro.writeString(1, getTextToTranslate());
      if (hasTextToTranslateLanguage())
        paramCodedOutputStreamMicro.writeString(2, getTextToTranslateLanguage());
      if (hasTranslatedText())
        paramCodedOutputStreamMicro.writeString(3, getTranslatedText());
      if (hasTranslatedTextLanguage())
        paramCodedOutputStreamMicro.writeString(4, getTranslatedTextLanguage());
      if (hasTextToTranslateLanguageDisplay())
        paramCodedOutputStreamMicro.writeString(5, getTextToTranslateLanguageDisplay());
      if (hasTextToTranslateTransliteration())
        paramCodedOutputStreamMicro.writeString(6, getTextToTranslateTransliteration());
      if (hasTranslatedTextLanguageDisplay())
        paramCodedOutputStreamMicro.writeString(7, getTranslatedTextLanguageDisplay());
      if (hasTranslatedTextTransliteration())
        paramCodedOutputStreamMicro.writeString(8, getTranslatedTextTransliteration());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.CommonStructuredResponse
 * JD-Core Version:    0.6.2
 */