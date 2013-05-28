package com.google.majel.proto;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class EcoutezStructuredResponse
{
  public static final class AssociationData extends MessageMicro
  {
    public static final int MATCH_LIST_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasMatchList;
    private boolean hasName;
    private EcoutezStructuredResponse.MatchList matchList_ = null;
    private String name_ = "";

    public static AssociationData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AssociationData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AssociationData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AssociationData)new AssociationData().mergeFrom(paramArrayOfByte);
    }

    public final AssociationData clear()
    {
      clearName();
      clearMatchList();
      this.cachedSize = -1;
      return this;
    }

    public AssociationData clearMatchList()
    {
      this.hasMatchList = false;
      this.matchList_ = null;
      return this;
    }

    public AssociationData clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.MatchList getMatchList()
    {
      return this.matchList_;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      if (hasMatchList())
        i += CodedOutputStreamMicro.computeMessageSize(2, getMatchList());
      this.cachedSize = i;
      return i;
    }

    public boolean hasMatchList()
    {
      return this.hasMatchList;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AssociationData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        EcoutezStructuredResponse.MatchList localMatchList = new EcoutezStructuredResponse.MatchList();
        paramCodedInputStreamMicro.readMessage(localMatchList);
        setMatchList(localMatchList);
      }
    }

    public AssociationData setMatchList(EcoutezStructuredResponse.MatchList paramMatchList)
    {
      if (paramMatchList == null)
        throw new NullPointerException();
      this.hasMatchList = true;
      this.matchList_ = paramMatchList;
      return this;
    }

    public AssociationData setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasMatchList())
        paramCodedOutputStreamMicro.writeMessage(2, getMatchList());
    }
  }

  public static final class BaseballMatch extends MessageMicro
  {
    public static final int FIRST_TEAM_ERRORS_FIELD_NUMBER = 3;
    public static final int FIRST_TEAM_HITS_FIELD_NUMBER = 2;
    public static final int FIRST_TEAM_RUNS_FIELD_NUMBER = 1;
    public static final int SECOND_TEAM_ERRORS_FIELD_NUMBER = 6;
    public static final int SECOND_TEAM_HITS_FIELD_NUMBER = 4;
    public static final int SECOND_TEAM_RUNS_FIELD_NUMBER = 5;
    private int cachedSize = -1;
    private int firstTeamErrors_ = 0;
    private int firstTeamHits_ = 0;
    private int firstTeamRuns_ = 0;
    private boolean hasFirstTeamErrors;
    private boolean hasFirstTeamHits;
    private boolean hasFirstTeamRuns;
    private boolean hasSecondTeamErrors;
    private boolean hasSecondTeamHits;
    private boolean hasSecondTeamRuns;
    private int secondTeamErrors_ = 0;
    private int secondTeamHits_ = 0;
    private int secondTeamRuns_ = 0;

    public static BaseballMatch parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new BaseballMatch().mergeFrom(paramCodedInputStreamMicro);
    }

    public static BaseballMatch parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (BaseballMatch)new BaseballMatch().mergeFrom(paramArrayOfByte);
    }

    public final BaseballMatch clear()
    {
      clearFirstTeamRuns();
      clearFirstTeamHits();
      clearFirstTeamErrors();
      clearSecondTeamHits();
      clearSecondTeamRuns();
      clearSecondTeamErrors();
      this.cachedSize = -1;
      return this;
    }

    public BaseballMatch clearFirstTeamErrors()
    {
      this.hasFirstTeamErrors = false;
      this.firstTeamErrors_ = 0;
      return this;
    }

    public BaseballMatch clearFirstTeamHits()
    {
      this.hasFirstTeamHits = false;
      this.firstTeamHits_ = 0;
      return this;
    }

    public BaseballMatch clearFirstTeamRuns()
    {
      this.hasFirstTeamRuns = false;
      this.firstTeamRuns_ = 0;
      return this;
    }

    public BaseballMatch clearSecondTeamErrors()
    {
      this.hasSecondTeamErrors = false;
      this.secondTeamErrors_ = 0;
      return this;
    }

    public BaseballMatch clearSecondTeamHits()
    {
      this.hasSecondTeamHits = false;
      this.secondTeamHits_ = 0;
      return this;
    }

    public BaseballMatch clearSecondTeamRuns()
    {
      this.hasSecondTeamRuns = false;
      this.secondTeamRuns_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getFirstTeamErrors()
    {
      return this.firstTeamErrors_;
    }

    public int getFirstTeamHits()
    {
      return this.firstTeamHits_;
    }

    public int getFirstTeamRuns()
    {
      return this.firstTeamRuns_;
    }

    public int getSecondTeamErrors()
    {
      return this.secondTeamErrors_;
    }

    public int getSecondTeamHits()
    {
      return this.secondTeamHits_;
    }

    public int getSecondTeamRuns()
    {
      return this.secondTeamRuns_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFirstTeamRuns();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getFirstTeamRuns());
      if (hasFirstTeamHits())
        i += CodedOutputStreamMicro.computeInt32Size(2, getFirstTeamHits());
      if (hasFirstTeamErrors())
        i += CodedOutputStreamMicro.computeInt32Size(3, getFirstTeamErrors());
      if (hasSecondTeamHits())
        i += CodedOutputStreamMicro.computeInt32Size(4, getSecondTeamHits());
      if (hasSecondTeamRuns())
        i += CodedOutputStreamMicro.computeInt32Size(5, getSecondTeamRuns());
      if (hasSecondTeamErrors())
        i += CodedOutputStreamMicro.computeInt32Size(6, getSecondTeamErrors());
      this.cachedSize = i;
      return i;
    }

    public boolean hasFirstTeamErrors()
    {
      return this.hasFirstTeamErrors;
    }

    public boolean hasFirstTeamHits()
    {
      return this.hasFirstTeamHits;
    }

    public boolean hasFirstTeamRuns()
    {
      return this.hasFirstTeamRuns;
    }

    public boolean hasSecondTeamErrors()
    {
      return this.hasSecondTeamErrors;
    }

    public boolean hasSecondTeamHits()
    {
      return this.hasSecondTeamHits;
    }

    public boolean hasSecondTeamRuns()
    {
      return this.hasSecondTeamRuns;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public BaseballMatch mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setFirstTeamRuns(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setFirstTeamHits(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setFirstTeamErrors(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setSecondTeamHits(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
          setSecondTeamRuns(paramCodedInputStreamMicro.readInt32());
          break;
        case 48:
        }
        setSecondTeamErrors(paramCodedInputStreamMicro.readInt32());
      }
    }

    public BaseballMatch setFirstTeamErrors(int paramInt)
    {
      this.hasFirstTeamErrors = true;
      this.firstTeamErrors_ = paramInt;
      return this;
    }

    public BaseballMatch setFirstTeamHits(int paramInt)
    {
      this.hasFirstTeamHits = true;
      this.firstTeamHits_ = paramInt;
      return this;
    }

    public BaseballMatch setFirstTeamRuns(int paramInt)
    {
      this.hasFirstTeamRuns = true;
      this.firstTeamRuns_ = paramInt;
      return this;
    }

    public BaseballMatch setSecondTeamErrors(int paramInt)
    {
      this.hasSecondTeamErrors = true;
      this.secondTeamErrors_ = paramInt;
      return this;
    }

    public BaseballMatch setSecondTeamHits(int paramInt)
    {
      this.hasSecondTeamHits = true;
      this.secondTeamHits_ = paramInt;
      return this;
    }

    public BaseballMatch setSecondTeamRuns(int paramInt)
    {
      this.hasSecondTeamRuns = true;
      this.secondTeamRuns_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFirstTeamRuns())
        paramCodedOutputStreamMicro.writeInt32(1, getFirstTeamRuns());
      if (hasFirstTeamHits())
        paramCodedOutputStreamMicro.writeInt32(2, getFirstTeamHits());
      if (hasFirstTeamErrors())
        paramCodedOutputStreamMicro.writeInt32(3, getFirstTeamErrors());
      if (hasSecondTeamHits())
        paramCodedOutputStreamMicro.writeInt32(4, getSecondTeamHits());
      if (hasSecondTeamRuns())
        paramCodedOutputStreamMicro.writeInt32(5, getSecondTeamRuns());
      if (hasSecondTeamErrors())
        paramCodedOutputStreamMicro.writeInt32(6, getSecondTeamErrors());
    }
  }

  public static final class BaseballPeriod extends MessageMicro
  {
    public static final int INNING_STATUS_BOTTOM_INNING = 2;
    public static final int INNING_STATUS_END_INNING = 3;
    public static final int INNING_STATUS_FIELD_NUMBER = 1;
    public static final int INNING_STATUS_MIDDLE_INNING = 1;
    public static final int INNING_STATUS_TOP_INNING = 0;
    public static final int NUM_OF_BALLS_FIELD_NUMBER = 4;
    public static final int NUM_OF_OUTS_FIELD_NUMBER = 2;
    public static final int NUM_OF_STRIKES_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasInningStatus;
    private boolean hasNumOfBalls;
    private boolean hasNumOfOuts;
    private boolean hasNumOfStrikes;
    private int inningStatus_ = 0;
    private int numOfBalls_ = 0;
    private int numOfOuts_ = 0;
    private int numOfStrikes_ = 0;

    public static BaseballPeriod parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new BaseballPeriod().mergeFrom(paramCodedInputStreamMicro);
    }

    public static BaseballPeriod parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (BaseballPeriod)new BaseballPeriod().mergeFrom(paramArrayOfByte);
    }

    public final BaseballPeriod clear()
    {
      clearInningStatus();
      clearNumOfOuts();
      clearNumOfStrikes();
      clearNumOfBalls();
      this.cachedSize = -1;
      return this;
    }

    public BaseballPeriod clearInningStatus()
    {
      this.hasInningStatus = false;
      this.inningStatus_ = 0;
      return this;
    }

    public BaseballPeriod clearNumOfBalls()
    {
      this.hasNumOfBalls = false;
      this.numOfBalls_ = 0;
      return this;
    }

    public BaseballPeriod clearNumOfOuts()
    {
      this.hasNumOfOuts = false;
      this.numOfOuts_ = 0;
      return this;
    }

    public BaseballPeriod clearNumOfStrikes()
    {
      this.hasNumOfStrikes = false;
      this.numOfStrikes_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getInningStatus()
    {
      return this.inningStatus_;
    }

    public int getNumOfBalls()
    {
      return this.numOfBalls_;
    }

    public int getNumOfOuts()
    {
      return this.numOfOuts_;
    }

    public int getNumOfStrikes()
    {
      return this.numOfStrikes_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasInningStatus();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getInningStatus());
      if (hasNumOfOuts())
        i += CodedOutputStreamMicro.computeInt32Size(2, getNumOfOuts());
      if (hasNumOfStrikes())
        i += CodedOutputStreamMicro.computeInt32Size(3, getNumOfStrikes());
      if (hasNumOfBalls())
        i += CodedOutputStreamMicro.computeInt32Size(4, getNumOfBalls());
      this.cachedSize = i;
      return i;
    }

    public boolean hasInningStatus()
    {
      return this.hasInningStatus;
    }

    public boolean hasNumOfBalls()
    {
      return this.hasNumOfBalls;
    }

    public boolean hasNumOfOuts()
    {
      return this.hasNumOfOuts;
    }

    public boolean hasNumOfStrikes()
    {
      return this.hasNumOfStrikes;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public BaseballPeriod mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setInningStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setNumOfOuts(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setNumOfStrikes(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
        }
        setNumOfBalls(paramCodedInputStreamMicro.readInt32());
      }
    }

    public BaseballPeriod setInningStatus(int paramInt)
    {
      this.hasInningStatus = true;
      this.inningStatus_ = paramInt;
      return this;
    }

    public BaseballPeriod setNumOfBalls(int paramInt)
    {
      this.hasNumOfBalls = true;
      this.numOfBalls_ = paramInt;
      return this;
    }

    public BaseballPeriod setNumOfOuts(int paramInt)
    {
      this.hasNumOfOuts = true;
      this.numOfOuts_ = paramInt;
      return this;
    }

    public BaseballPeriod setNumOfStrikes(int paramInt)
    {
      this.hasNumOfStrikes = true;
      this.numOfStrikes_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasInningStatus())
        paramCodedOutputStreamMicro.writeInt32(1, getInningStatus());
      if (hasNumOfOuts())
        paramCodedOutputStreamMicro.writeInt32(2, getNumOfOuts());
      if (hasNumOfStrikes())
        paramCodedOutputStreamMicro.writeInt32(3, getNumOfStrikes());
      if (hasNumOfBalls())
        paramCodedOutputStreamMicro.writeInt32(4, getNumOfBalls());
    }
  }

  public static final class DailyForecast extends MessageMicro
  {
    public static final int CHANCE_OF_PRECIPITATION_FIELD_NUMBER = 4;
    public static final int CONDITION_FIELD_NUMBER = 1;
    public static final int HIGH_TEMP_FIELD_NUMBER = 2;
    public static final int LOW_TEMP_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private int chanceOfPrecipitation_ = 0;
    private EcoutezStructuredResponse.WeatherCondition condition_ = null;
    private boolean hasChanceOfPrecipitation;
    private boolean hasCondition;
    private boolean hasHighTemp;
    private boolean hasLowTemp;
    private int highTemp_ = 0;
    private int lowTemp_ = 0;

    public static DailyForecast parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new DailyForecast().mergeFrom(paramCodedInputStreamMicro);
    }

    public static DailyForecast parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (DailyForecast)new DailyForecast().mergeFrom(paramArrayOfByte);
    }

    public final DailyForecast clear()
    {
      clearCondition();
      clearHighTemp();
      clearLowTemp();
      clearChanceOfPrecipitation();
      this.cachedSize = -1;
      return this;
    }

    public DailyForecast clearChanceOfPrecipitation()
    {
      this.hasChanceOfPrecipitation = false;
      this.chanceOfPrecipitation_ = 0;
      return this;
    }

    public DailyForecast clearCondition()
    {
      this.hasCondition = false;
      this.condition_ = null;
      return this;
    }

    public DailyForecast clearHighTemp()
    {
      this.hasHighTemp = false;
      this.highTemp_ = 0;
      return this;
    }

    public DailyForecast clearLowTemp()
    {
      this.hasLowTemp = false;
      this.lowTemp_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getChanceOfPrecipitation()
    {
      return this.chanceOfPrecipitation_;
    }

    public EcoutezStructuredResponse.WeatherCondition getCondition()
    {
      return this.condition_;
    }

    public int getHighTemp()
    {
      return this.highTemp_;
    }

    public int getLowTemp()
    {
      return this.lowTemp_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCondition();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getCondition());
      if (hasHighTemp())
        i += CodedOutputStreamMicro.computeInt32Size(2, getHighTemp());
      if (hasLowTemp())
        i += CodedOutputStreamMicro.computeInt32Size(3, getLowTemp());
      if (hasChanceOfPrecipitation())
        i += CodedOutputStreamMicro.computeInt32Size(4, getChanceOfPrecipitation());
      this.cachedSize = i;
      return i;
    }

    public boolean hasChanceOfPrecipitation()
    {
      return this.hasChanceOfPrecipitation;
    }

    public boolean hasCondition()
    {
      return this.hasCondition;
    }

    public boolean hasHighTemp()
    {
      return this.hasHighTemp;
    }

    public boolean hasLowTemp()
    {
      return this.hasLowTemp;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public DailyForecast mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.WeatherCondition localWeatherCondition = new EcoutezStructuredResponse.WeatherCondition();
          paramCodedInputStreamMicro.readMessage(localWeatherCondition);
          setCondition(localWeatherCondition);
          break;
        case 16:
          setHighTemp(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setLowTemp(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
        }
        setChanceOfPrecipitation(paramCodedInputStreamMicro.readInt32());
      }
    }

    public DailyForecast setChanceOfPrecipitation(int paramInt)
    {
      this.hasChanceOfPrecipitation = true;
      this.chanceOfPrecipitation_ = paramInt;
      return this;
    }

    public DailyForecast setCondition(EcoutezStructuredResponse.WeatherCondition paramWeatherCondition)
    {
      if (paramWeatherCondition == null)
        throw new NullPointerException();
      this.hasCondition = true;
      this.condition_ = paramWeatherCondition;
      return this;
    }

    public DailyForecast setHighTemp(int paramInt)
    {
      this.hasHighTemp = true;
      this.highTemp_ = paramInt;
      return this;
    }

    public DailyForecast setLowTemp(int paramInt)
    {
      this.hasLowTemp = true;
      this.lowTemp_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCondition())
        paramCodedOutputStreamMicro.writeMessage(1, getCondition());
      if (hasHighTemp())
        paramCodedOutputStreamMicro.writeInt32(2, getHighTemp());
      if (hasLowTemp())
        paramCodedOutputStreamMicro.writeInt32(3, getLowTemp());
      if (hasChanceOfPrecipitation())
        paramCodedOutputStreamMicro.writeInt32(4, getChanceOfPrecipitation());
    }
  }

  public static final class DictionaryLink extends MessageMicro
  {
    public static final int TEXT_FIELD_NUMBER = 1;
    public static final int URL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasText;
    private boolean hasUrl;
    private String text_ = "";
    private String url_ = "";

    public static DictionaryLink parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new DictionaryLink().mergeFrom(paramCodedInputStreamMicro);
    }

    public static DictionaryLink parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (DictionaryLink)new DictionaryLink().mergeFrom(paramArrayOfByte);
    }

    public final DictionaryLink clear()
    {
      clearText();
      clearUrl();
      this.cachedSize = -1;
      return this;
    }

    public DictionaryLink clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public DictionaryLink clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
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
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getUrl());
      this.cachedSize = i;
      return i;
    }

    public String getText()
    {
      return this.text_;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public DictionaryLink mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public DictionaryLink setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public DictionaryLink setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(2, getUrl());
    }
  }

  public static final class DictionaryResult extends MessageMicro
  {
    public static final int ATTRIBUTION_LINK_FIELD_NUMBER = 11;
    public static final int DICTIONARY_WORD_FIELD_NUMBER = 1;
    public static final int EXTERNAL_DICTIONARY_LINK_FIELD_NUMBER = 12;
    public static final int GOOGLE_DICTIONARY_LINK_FIELD_NUMBER = 10;
    public static final int NORMAL_FORM_FIELD_NUMBER = 3;
    public static final int PART_OF_SPEECH_FIELD_NUMBER = 4;
    public static final int PART_OF_SPEECH_MEANING_FIELD_NUMBER = 7;
    public static final int PRONUNCIATION_FIELD_NUMBER = 5;
    public static final int SOUND_FIELD_NUMBER = 6;
    public static final int SYNONYMS_HEADER_FIELD_NUMBER = 8;
    public static final int SYNONYM_FIELD_NUMBER = 9;
    public static final int VARIATION_TYPE_FIELD_NUMBER = 2;
    private EcoutezStructuredResponse.DictionaryLink attributionLink_ = null;
    private int cachedSize = -1;
    private String dictionaryWord_ = "";
    private List<EcoutezStructuredResponse.DictionaryLink> externalDictionaryLink_ = Collections.emptyList();
    private EcoutezStructuredResponse.DictionaryLink googleDictionaryLink_ = null;
    private boolean hasAttributionLink;
    private boolean hasDictionaryWord;
    private boolean hasGoogleDictionaryLink;
    private boolean hasNormalForm;
    private boolean hasPartOfSpeech;
    private boolean hasPronunciation;
    private boolean hasSound;
    private boolean hasSynonymsHeader;
    private boolean hasVariationType;
    private String normalForm_ = "";
    private List<EcoutezStructuredResponse.PosMeaning> partOfSpeechMeaning_ = Collections.emptyList();
    private String partOfSpeech_ = "";
    private String pronunciation_ = "";
    private String sound_ = "";
    private List<EcoutezStructuredResponse.Synonym> synonym_ = Collections.emptyList();
    private String synonymsHeader_ = "";
    private String variationType_ = "";

    public static DictionaryResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new DictionaryResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static DictionaryResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (DictionaryResult)new DictionaryResult().mergeFrom(paramArrayOfByte);
    }

    public DictionaryResult addExternalDictionaryLink(EcoutezStructuredResponse.DictionaryLink paramDictionaryLink)
    {
      if (paramDictionaryLink == null)
        throw new NullPointerException();
      if (this.externalDictionaryLink_.isEmpty())
        this.externalDictionaryLink_ = new ArrayList();
      this.externalDictionaryLink_.add(paramDictionaryLink);
      return this;
    }

    public DictionaryResult addPartOfSpeechMeaning(EcoutezStructuredResponse.PosMeaning paramPosMeaning)
    {
      if (paramPosMeaning == null)
        throw new NullPointerException();
      if (this.partOfSpeechMeaning_.isEmpty())
        this.partOfSpeechMeaning_ = new ArrayList();
      this.partOfSpeechMeaning_.add(paramPosMeaning);
      return this;
    }

    public DictionaryResult addSynonym(EcoutezStructuredResponse.Synonym paramSynonym)
    {
      if (paramSynonym == null)
        throw new NullPointerException();
      if (this.synonym_.isEmpty())
        this.synonym_ = new ArrayList();
      this.synonym_.add(paramSynonym);
      return this;
    }

    public final DictionaryResult clear()
    {
      clearDictionaryWord();
      clearVariationType();
      clearNormalForm();
      clearPartOfSpeech();
      clearPronunciation();
      clearSound();
      clearPartOfSpeechMeaning();
      clearSynonymsHeader();
      clearSynonym();
      clearGoogleDictionaryLink();
      clearAttributionLink();
      clearExternalDictionaryLink();
      this.cachedSize = -1;
      return this;
    }

    public DictionaryResult clearAttributionLink()
    {
      this.hasAttributionLink = false;
      this.attributionLink_ = null;
      return this;
    }

    public DictionaryResult clearDictionaryWord()
    {
      this.hasDictionaryWord = false;
      this.dictionaryWord_ = "";
      return this;
    }

    public DictionaryResult clearExternalDictionaryLink()
    {
      this.externalDictionaryLink_ = Collections.emptyList();
      return this;
    }

    public DictionaryResult clearGoogleDictionaryLink()
    {
      this.hasGoogleDictionaryLink = false;
      this.googleDictionaryLink_ = null;
      return this;
    }

    public DictionaryResult clearNormalForm()
    {
      this.hasNormalForm = false;
      this.normalForm_ = "";
      return this;
    }

    public DictionaryResult clearPartOfSpeech()
    {
      this.hasPartOfSpeech = false;
      this.partOfSpeech_ = "";
      return this;
    }

    public DictionaryResult clearPartOfSpeechMeaning()
    {
      this.partOfSpeechMeaning_ = Collections.emptyList();
      return this;
    }

    public DictionaryResult clearPronunciation()
    {
      this.hasPronunciation = false;
      this.pronunciation_ = "";
      return this;
    }

    public DictionaryResult clearSound()
    {
      this.hasSound = false;
      this.sound_ = "";
      return this;
    }

    public DictionaryResult clearSynonym()
    {
      this.synonym_ = Collections.emptyList();
      return this;
    }

    public DictionaryResult clearSynonymsHeader()
    {
      this.hasSynonymsHeader = false;
      this.synonymsHeader_ = "";
      return this;
    }

    public DictionaryResult clearVariationType()
    {
      this.hasVariationType = false;
      this.variationType_ = "";
      return this;
    }

    public EcoutezStructuredResponse.DictionaryLink getAttributionLink()
    {
      return this.attributionLink_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDictionaryWord()
    {
      return this.dictionaryWord_;
    }

    public EcoutezStructuredResponse.DictionaryLink getExternalDictionaryLink(int paramInt)
    {
      return (EcoutezStructuredResponse.DictionaryLink)this.externalDictionaryLink_.get(paramInt);
    }

    public int getExternalDictionaryLinkCount()
    {
      return this.externalDictionaryLink_.size();
    }

    public List<EcoutezStructuredResponse.DictionaryLink> getExternalDictionaryLinkList()
    {
      return this.externalDictionaryLink_;
    }

    public EcoutezStructuredResponse.DictionaryLink getGoogleDictionaryLink()
    {
      return this.googleDictionaryLink_;
    }

    public String getNormalForm()
    {
      return this.normalForm_;
    }

    public String getPartOfSpeech()
    {
      return this.partOfSpeech_;
    }

    public EcoutezStructuredResponse.PosMeaning getPartOfSpeechMeaning(int paramInt)
    {
      return (EcoutezStructuredResponse.PosMeaning)this.partOfSpeechMeaning_.get(paramInt);
    }

    public int getPartOfSpeechMeaningCount()
    {
      return this.partOfSpeechMeaning_.size();
    }

    public List<EcoutezStructuredResponse.PosMeaning> getPartOfSpeechMeaningList()
    {
      return this.partOfSpeechMeaning_;
    }

    public String getPronunciation()
    {
      return this.pronunciation_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDictionaryWord();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getDictionaryWord());
      if (hasVariationType())
        i += CodedOutputStreamMicro.computeStringSize(2, getVariationType());
      if (hasNormalForm())
        i += CodedOutputStreamMicro.computeStringSize(3, getNormalForm());
      if (hasPartOfSpeech())
        i += CodedOutputStreamMicro.computeStringSize(4, getPartOfSpeech());
      if (hasPronunciation())
        i += CodedOutputStreamMicro.computeStringSize(5, getPronunciation());
      if (hasSound())
        i += CodedOutputStreamMicro.computeStringSize(6, getSound());
      Iterator localIterator1 = getPartOfSpeechMeaningList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(7, (EcoutezStructuredResponse.PosMeaning)localIterator1.next());
      if (hasSynonymsHeader())
        i += CodedOutputStreamMicro.computeStringSize(8, getSynonymsHeader());
      Iterator localIterator2 = getSynonymList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(9, (EcoutezStructuredResponse.Synonym)localIterator2.next());
      if (hasGoogleDictionaryLink())
        i += CodedOutputStreamMicro.computeMessageSize(10, getGoogleDictionaryLink());
      if (hasAttributionLink())
        i += CodedOutputStreamMicro.computeMessageSize(11, getAttributionLink());
      Iterator localIterator3 = getExternalDictionaryLinkList().iterator();
      while (localIterator3.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(12, (EcoutezStructuredResponse.DictionaryLink)localIterator3.next());
      this.cachedSize = i;
      return i;
    }

    public String getSound()
    {
      return this.sound_;
    }

    public EcoutezStructuredResponse.Synonym getSynonym(int paramInt)
    {
      return (EcoutezStructuredResponse.Synonym)this.synonym_.get(paramInt);
    }

    public int getSynonymCount()
    {
      return this.synonym_.size();
    }

    public List<EcoutezStructuredResponse.Synonym> getSynonymList()
    {
      return this.synonym_;
    }

    public String getSynonymsHeader()
    {
      return this.synonymsHeader_;
    }

    public String getVariationType()
    {
      return this.variationType_;
    }

    public boolean hasAttributionLink()
    {
      return this.hasAttributionLink;
    }

    public boolean hasDictionaryWord()
    {
      return this.hasDictionaryWord;
    }

    public boolean hasGoogleDictionaryLink()
    {
      return this.hasGoogleDictionaryLink;
    }

    public boolean hasNormalForm()
    {
      return this.hasNormalForm;
    }

    public boolean hasPartOfSpeech()
    {
      return this.hasPartOfSpeech;
    }

    public boolean hasPronunciation()
    {
      return this.hasPronunciation;
    }

    public boolean hasSound()
    {
      return this.hasSound;
    }

    public boolean hasSynonymsHeader()
    {
      return this.hasSynonymsHeader;
    }

    public boolean hasVariationType()
    {
      return this.hasVariationType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public DictionaryResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setDictionaryWord(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setVariationType(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setNormalForm(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setPartOfSpeech(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setPronunciation(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setSound(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          EcoutezStructuredResponse.PosMeaning localPosMeaning = new EcoutezStructuredResponse.PosMeaning();
          paramCodedInputStreamMicro.readMessage(localPosMeaning);
          addPartOfSpeechMeaning(localPosMeaning);
          break;
        case 66:
          setSynonymsHeader(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          EcoutezStructuredResponse.Synonym localSynonym = new EcoutezStructuredResponse.Synonym();
          paramCodedInputStreamMicro.readMessage(localSynonym);
          addSynonym(localSynonym);
          break;
        case 82:
          EcoutezStructuredResponse.DictionaryLink localDictionaryLink3 = new EcoutezStructuredResponse.DictionaryLink();
          paramCodedInputStreamMicro.readMessage(localDictionaryLink3);
          setGoogleDictionaryLink(localDictionaryLink3);
          break;
        case 90:
          EcoutezStructuredResponse.DictionaryLink localDictionaryLink2 = new EcoutezStructuredResponse.DictionaryLink();
          paramCodedInputStreamMicro.readMessage(localDictionaryLink2);
          setAttributionLink(localDictionaryLink2);
          break;
        case 98:
        }
        EcoutezStructuredResponse.DictionaryLink localDictionaryLink1 = new EcoutezStructuredResponse.DictionaryLink();
        paramCodedInputStreamMicro.readMessage(localDictionaryLink1);
        addExternalDictionaryLink(localDictionaryLink1);
      }
    }

    public DictionaryResult setAttributionLink(EcoutezStructuredResponse.DictionaryLink paramDictionaryLink)
    {
      if (paramDictionaryLink == null)
        throw new NullPointerException();
      this.hasAttributionLink = true;
      this.attributionLink_ = paramDictionaryLink;
      return this;
    }

    public DictionaryResult setDictionaryWord(String paramString)
    {
      this.hasDictionaryWord = true;
      this.dictionaryWord_ = paramString;
      return this;
    }

    public DictionaryResult setExternalDictionaryLink(int paramInt, EcoutezStructuredResponse.DictionaryLink paramDictionaryLink)
    {
      if (paramDictionaryLink == null)
        throw new NullPointerException();
      this.externalDictionaryLink_.set(paramInt, paramDictionaryLink);
      return this;
    }

    public DictionaryResult setGoogleDictionaryLink(EcoutezStructuredResponse.DictionaryLink paramDictionaryLink)
    {
      if (paramDictionaryLink == null)
        throw new NullPointerException();
      this.hasGoogleDictionaryLink = true;
      this.googleDictionaryLink_ = paramDictionaryLink;
      return this;
    }

    public DictionaryResult setNormalForm(String paramString)
    {
      this.hasNormalForm = true;
      this.normalForm_ = paramString;
      return this;
    }

    public DictionaryResult setPartOfSpeech(String paramString)
    {
      this.hasPartOfSpeech = true;
      this.partOfSpeech_ = paramString;
      return this;
    }

    public DictionaryResult setPartOfSpeechMeaning(int paramInt, EcoutezStructuredResponse.PosMeaning paramPosMeaning)
    {
      if (paramPosMeaning == null)
        throw new NullPointerException();
      this.partOfSpeechMeaning_.set(paramInt, paramPosMeaning);
      return this;
    }

    public DictionaryResult setPronunciation(String paramString)
    {
      this.hasPronunciation = true;
      this.pronunciation_ = paramString;
      return this;
    }

    public DictionaryResult setSound(String paramString)
    {
      this.hasSound = true;
      this.sound_ = paramString;
      return this;
    }

    public DictionaryResult setSynonym(int paramInt, EcoutezStructuredResponse.Synonym paramSynonym)
    {
      if (paramSynonym == null)
        throw new NullPointerException();
      this.synonym_.set(paramInt, paramSynonym);
      return this;
    }

    public DictionaryResult setSynonymsHeader(String paramString)
    {
      this.hasSynonymsHeader = true;
      this.synonymsHeader_ = paramString;
      return this;
    }

    public DictionaryResult setVariationType(String paramString)
    {
      this.hasVariationType = true;
      this.variationType_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDictionaryWord())
        paramCodedOutputStreamMicro.writeString(1, getDictionaryWord());
      if (hasVariationType())
        paramCodedOutputStreamMicro.writeString(2, getVariationType());
      if (hasNormalForm())
        paramCodedOutputStreamMicro.writeString(3, getNormalForm());
      if (hasPartOfSpeech())
        paramCodedOutputStreamMicro.writeString(4, getPartOfSpeech());
      if (hasPronunciation())
        paramCodedOutputStreamMicro.writeString(5, getPronunciation());
      if (hasSound())
        paramCodedOutputStreamMicro.writeString(6, getSound());
      Iterator localIterator1 = getPartOfSpeechMeaningList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(7, (EcoutezStructuredResponse.PosMeaning)localIterator1.next());
      if (hasSynonymsHeader())
        paramCodedOutputStreamMicro.writeString(8, getSynonymsHeader());
      Iterator localIterator2 = getSynonymList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(9, (EcoutezStructuredResponse.Synonym)localIterator2.next());
      if (hasGoogleDictionaryLink())
        paramCodedOutputStreamMicro.writeMessage(10, getGoogleDictionaryLink());
      if (hasAttributionLink())
        paramCodedOutputStreamMicro.writeMessage(11, getAttributionLink());
      Iterator localIterator3 = getExternalDictionaryLinkList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeMessage(12, (EcoutezStructuredResponse.DictionaryLink)localIterator3.next());
    }
  }

  public static final class EcnResult extends MessageMicro
  {
    public static final int ANCHOR_FIELD_NUMBER = 1;
    public static final int LAST_CHANGE_TIME_FIELD_NUMBER = 5;
    public static final int LAST_PRICE_FIELD_NUMBER = 2;
    public static final int PRICE_CHANGE_FIELD_NUMBER = 3;
    public static final int PRICE_PERCENT_CHANGE_FIELD_NUMBER = 4;
    private String anchor_ = "";
    private int cachedSize = -1;
    private boolean hasAnchor;
    private boolean hasLastChangeTime;
    private boolean hasLastPrice;
    private boolean hasPriceChange;
    private boolean hasPricePercentChange;
    private String lastChangeTime_ = "";
    private float lastPrice_ = 0.0F;
    private float priceChange_ = 0.0F;
    private float pricePercentChange_ = 0.0F;

    public static EcnResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EcnResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EcnResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EcnResult)new EcnResult().mergeFrom(paramArrayOfByte);
    }

    public final EcnResult clear()
    {
      clearAnchor();
      clearLastPrice();
      clearPriceChange();
      clearPricePercentChange();
      clearLastChangeTime();
      this.cachedSize = -1;
      return this;
    }

    public EcnResult clearAnchor()
    {
      this.hasAnchor = false;
      this.anchor_ = "";
      return this;
    }

    public EcnResult clearLastChangeTime()
    {
      this.hasLastChangeTime = false;
      this.lastChangeTime_ = "";
      return this;
    }

    public EcnResult clearLastPrice()
    {
      this.hasLastPrice = false;
      this.lastPrice_ = 0.0F;
      return this;
    }

    public EcnResult clearPriceChange()
    {
      this.hasPriceChange = false;
      this.priceChange_ = 0.0F;
      return this;
    }

    public EcnResult clearPricePercentChange()
    {
      this.hasPricePercentChange = false;
      this.pricePercentChange_ = 0.0F;
      return this;
    }

    public String getAnchor()
    {
      return this.anchor_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLastChangeTime()
    {
      return this.lastChangeTime_;
    }

    public float getLastPrice()
    {
      return this.lastPrice_;
    }

    public float getPriceChange()
    {
      return this.priceChange_;
    }

    public float getPricePercentChange()
    {
      return this.pricePercentChange_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAnchor();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAnchor());
      if (hasLastPrice())
        i += CodedOutputStreamMicro.computeFloatSize(2, getLastPrice());
      if (hasPriceChange())
        i += CodedOutputStreamMicro.computeFloatSize(3, getPriceChange());
      if (hasPricePercentChange())
        i += CodedOutputStreamMicro.computeFloatSize(4, getPricePercentChange());
      if (hasLastChangeTime())
        i += CodedOutputStreamMicro.computeStringSize(5, getLastChangeTime());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAnchor()
    {
      return this.hasAnchor;
    }

    public boolean hasLastChangeTime()
    {
      return this.hasLastChangeTime;
    }

    public boolean hasLastPrice()
    {
      return this.hasLastPrice;
    }

    public boolean hasPriceChange()
    {
      return this.hasPriceChange;
    }

    public boolean hasPricePercentChange()
    {
      return this.hasPricePercentChange;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EcnResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAnchor(paramCodedInputStreamMicro.readString());
          break;
        case 21:
          setLastPrice(paramCodedInputStreamMicro.readFloat());
          break;
        case 29:
          setPriceChange(paramCodedInputStreamMicro.readFloat());
          break;
        case 37:
          setPricePercentChange(paramCodedInputStreamMicro.readFloat());
          break;
        case 42:
        }
        setLastChangeTime(paramCodedInputStreamMicro.readString());
      }
    }

    public EcnResult setAnchor(String paramString)
    {
      this.hasAnchor = true;
      this.anchor_ = paramString;
      return this;
    }

    public EcnResult setLastChangeTime(String paramString)
    {
      this.hasLastChangeTime = true;
      this.lastChangeTime_ = paramString;
      return this;
    }

    public EcnResult setLastPrice(float paramFloat)
    {
      this.hasLastPrice = true;
      this.lastPrice_ = paramFloat;
      return this;
    }

    public EcnResult setPriceChange(float paramFloat)
    {
      this.hasPriceChange = true;
      this.priceChange_ = paramFloat;
      return this;
    }

    public EcnResult setPricePercentChange(float paramFloat)
    {
      this.hasPricePercentChange = true;
      this.pricePercentChange_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAnchor())
        paramCodedOutputStreamMicro.writeString(1, getAnchor());
      if (hasLastPrice())
        paramCodedOutputStreamMicro.writeFloat(2, getLastPrice());
      if (hasPriceChange())
        paramCodedOutputStreamMicro.writeFloat(3, getPriceChange());
      if (hasPricePercentChange())
        paramCodedOutputStreamMicro.writeFloat(4, getPricePercentChange());
      if (hasLastChangeTime())
        paramCodedOutputStreamMicro.writeString(5, getLastChangeTime());
    }
  }

  public static final class EcoutezLocalResult extends MessageMicro
  {
    public static final int ACTION_BIKING_URL_FIELD_NUMBER = 28;
    public static final int ACTION_DRIVING_URL_FIELD_NUMBER = 25;
    public static final int ACTION_TRANSIT_URL_FIELD_NUMBER = 27;
    public static final int ACTION_WALKING_URL_FIELD_NUMBER = 26;
    public static final int ADDRESS1_FIELD_NUMBER = 10;
    public static final int ADDRESS2_FIELD_NUMBER = 11;
    public static final int ADDRESS_FIELD_NUMBER = 9;
    public static final int ADDRESS_FOR_MAP_IMAGE_URL_FIELD_NUMBER = 32;
    public static final int ALIAS_FIELD_NUMBER = 33;
    public static final int AUTHORITY_FIELD_NUMBER = 14;
    public static final int BUSINESS_DOMAIN_FIELD_NUMBER = 3;
    public static final int BUSINESS_URL_FIELD_NUMBER = 2;
    public static final int CLUSTER_ID_FIELD_NUMBER = 23;
    public static final int DEPRECATED_HOURS_FIELD_NUMBER = 13;
    public static final int FEATURE_ID_FIELD_NUMBER = 34;
    public static final int HOURS_FIELD_NUMBER = 31;
    public static final int IS_CHAIN_FIELD_NUMBER = 35;
    public static final int LAT_DEGREES_FIELD_NUMBER = 5;
    public static final int LAT_SPAN_DEGREES_FIELD_NUMBER = 29;
    public static final int LNG_DEGREES_FIELD_NUMBER = 6;
    public static final int LNG_SPAN_DEGREES_FIELD_NUMBER = 30;
    public static final int MAPS_URL_FIELD_NUMBER = 24;
    public static final int NEAR_LOCATION_FIELD_NUMBER = 7;
    public static final int NUM_HALF_STARS_FIELD_NUMBER = 19;
    public static final int NUM_REVIEWS_FIELD_NUMBER = 20;
    public static final int PHONE_NUMBER_FIELD_NUMBER = 12;
    public static final int PLACE_PAGE_URL_FIELD_NUMBER = 4;
    public static final int QUERY_FIELD_NUMBER = 8;
    public static final int REVIEWS_TEXT_FIELD_NUMBER = 21;
    public static final int REVIEW_SITE_FIELD_NUMBER = 22;
    public static final int REVIEW_SNIPPET_FIELD_NUMBER = 18;
    public static final int TITLE_FIELD_NUMBER = 1;
    public static final int TRANSIT_STATION_NAME_FIELD_NUMBER = 17;
    public static final int TRANSIT_STATION_TEXT_FIELD_NUMBER = 15;
    public static final int TRANSIT_STATION_TYPE_FIELD_NUMBER = 16;
    private String actionBikingUrl_ = "";
    private String actionDrivingUrl_ = "";
    private String actionTransitUrl_ = "";
    private String actionWalkingUrl_ = "";
    private String address1_ = "";
    private String address2_ = "";
    private String addressForMapImageUrl_ = "";
    private String address_ = "";
    private AliasProto.Alias alias_ = null;
    private String authority_ = "";
    private String businessDomain_ = "";
    private String businessUrl_ = "";
    private int cachedSize = -1;
    private String clusterId_ = "";
    private String deprecatedHours_ = "";
    private EcoutezStructuredResponse.FeatureIdProto featureId_ = null;
    private boolean hasActionBikingUrl;
    private boolean hasActionDrivingUrl;
    private boolean hasActionTransitUrl;
    private boolean hasActionWalkingUrl;
    private boolean hasAddress;
    private boolean hasAddress1;
    private boolean hasAddress2;
    private boolean hasAddressForMapImageUrl;
    private boolean hasAlias;
    private boolean hasAuthority;
    private boolean hasBusinessDomain;
    private boolean hasBusinessUrl;
    private boolean hasClusterId;
    private boolean hasDeprecatedHours;
    private boolean hasFeatureId;
    private boolean hasHours;
    private boolean hasIsChain;
    private boolean hasLatDegrees;
    private boolean hasLatSpanDegrees;
    private boolean hasLngDegrees;
    private boolean hasLngSpanDegrees;
    private boolean hasMapsUrl;
    private boolean hasNearLocation;
    private boolean hasNumHalfStars;
    private boolean hasNumReviews;
    private boolean hasPhoneNumber;
    private boolean hasPlacePageUrl;
    private boolean hasQuery;
    private boolean hasReviewSnippet;
    private boolean hasReviewsText;
    private boolean hasTitle;
    private boolean hasTransitStationName;
    private boolean hasTransitStationText;
    private boolean hasTransitStationType;
    private EcoutezStructuredResponse.Hours hours_ = null;
    private boolean isChain_ = false;
    private double latDegrees_ = 0.0D;
    private double latSpanDegrees_ = 0.0D;
    private double lngDegrees_ = 0.0D;
    private double lngSpanDegrees_ = 0.0D;
    private String mapsUrl_ = "";
    private String nearLocation_ = "";
    private int numHalfStars_ = 0;
    private int numReviews_ = 0;
    private String phoneNumber_ = "";
    private String placePageUrl_ = "";
    private String query_ = "";
    private List<EcoutezStructuredResponse.ReviewSite> reviewSite_ = Collections.emptyList();
    private String reviewSnippet_ = "";
    private String reviewsText_ = "";
    private String title_ = "";
    private String transitStationName_ = "";
    private String transitStationText_ = "";
    private String transitStationType_ = "";

    public static EcoutezLocalResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EcoutezLocalResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EcoutezLocalResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EcoutezLocalResult)new EcoutezLocalResult().mergeFrom(paramArrayOfByte);
    }

    public EcoutezLocalResult addReviewSite(EcoutezStructuredResponse.ReviewSite paramReviewSite)
    {
      if (paramReviewSite == null)
        throw new NullPointerException();
      if (this.reviewSite_.isEmpty())
        this.reviewSite_ = new ArrayList();
      this.reviewSite_.add(paramReviewSite);
      return this;
    }

    public final EcoutezLocalResult clear()
    {
      clearTitle();
      clearBusinessUrl();
      clearBusinessDomain();
      clearPlacePageUrl();
      clearMapsUrl();
      clearActionDrivingUrl();
      clearActionWalkingUrl();
      clearActionTransitUrl();
      clearActionBikingUrl();
      clearClusterId();
      clearLatDegrees();
      clearLngDegrees();
      clearLatSpanDegrees();
      clearLngSpanDegrees();
      clearNearLocation();
      clearQuery();
      clearAddress();
      clearAddress1();
      clearAddress2();
      clearPhoneNumber();
      clearAddressForMapImageUrl();
      clearDeprecatedHours();
      clearHours();
      clearAuthority();
      clearTransitStationText();
      clearTransitStationType();
      clearTransitStationName();
      clearReviewSnippet();
      clearNumHalfStars();
      clearNumReviews();
      clearReviewsText();
      clearReviewSite();
      clearAlias();
      clearFeatureId();
      clearIsChain();
      this.cachedSize = -1;
      return this;
    }

    public EcoutezLocalResult clearActionBikingUrl()
    {
      this.hasActionBikingUrl = false;
      this.actionBikingUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearActionDrivingUrl()
    {
      this.hasActionDrivingUrl = false;
      this.actionDrivingUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearActionTransitUrl()
    {
      this.hasActionTransitUrl = false;
      this.actionTransitUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearActionWalkingUrl()
    {
      this.hasActionWalkingUrl = false;
      this.actionWalkingUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearAddress()
    {
      this.hasAddress = false;
      this.address_ = "";
      return this;
    }

    public EcoutezLocalResult clearAddress1()
    {
      this.hasAddress1 = false;
      this.address1_ = "";
      return this;
    }

    public EcoutezLocalResult clearAddress2()
    {
      this.hasAddress2 = false;
      this.address2_ = "";
      return this;
    }

    public EcoutezLocalResult clearAddressForMapImageUrl()
    {
      this.hasAddressForMapImageUrl = false;
      this.addressForMapImageUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearAlias()
    {
      this.hasAlias = false;
      this.alias_ = null;
      return this;
    }

    public EcoutezLocalResult clearAuthority()
    {
      this.hasAuthority = false;
      this.authority_ = "";
      return this;
    }

    public EcoutezLocalResult clearBusinessDomain()
    {
      this.hasBusinessDomain = false;
      this.businessDomain_ = "";
      return this;
    }

    public EcoutezLocalResult clearBusinessUrl()
    {
      this.hasBusinessUrl = false;
      this.businessUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearClusterId()
    {
      this.hasClusterId = false;
      this.clusterId_ = "";
      return this;
    }

    public EcoutezLocalResult clearDeprecatedHours()
    {
      this.hasDeprecatedHours = false;
      this.deprecatedHours_ = "";
      return this;
    }

    public EcoutezLocalResult clearFeatureId()
    {
      this.hasFeatureId = false;
      this.featureId_ = null;
      return this;
    }

    public EcoutezLocalResult clearHours()
    {
      this.hasHours = false;
      this.hours_ = null;
      return this;
    }

    public EcoutezLocalResult clearIsChain()
    {
      this.hasIsChain = false;
      this.isChain_ = false;
      return this;
    }

    public EcoutezLocalResult clearLatDegrees()
    {
      this.hasLatDegrees = false;
      this.latDegrees_ = 0.0D;
      return this;
    }

    public EcoutezLocalResult clearLatSpanDegrees()
    {
      this.hasLatSpanDegrees = false;
      this.latSpanDegrees_ = 0.0D;
      return this;
    }

    public EcoutezLocalResult clearLngDegrees()
    {
      this.hasLngDegrees = false;
      this.lngDegrees_ = 0.0D;
      return this;
    }

    public EcoutezLocalResult clearLngSpanDegrees()
    {
      this.hasLngSpanDegrees = false;
      this.lngSpanDegrees_ = 0.0D;
      return this;
    }

    public EcoutezLocalResult clearMapsUrl()
    {
      this.hasMapsUrl = false;
      this.mapsUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearNearLocation()
    {
      this.hasNearLocation = false;
      this.nearLocation_ = "";
      return this;
    }

    public EcoutezLocalResult clearNumHalfStars()
    {
      this.hasNumHalfStars = false;
      this.numHalfStars_ = 0;
      return this;
    }

    public EcoutezLocalResult clearNumReviews()
    {
      this.hasNumReviews = false;
      this.numReviews_ = 0;
      return this;
    }

    public EcoutezLocalResult clearPhoneNumber()
    {
      this.hasPhoneNumber = false;
      this.phoneNumber_ = "";
      return this;
    }

    public EcoutezLocalResult clearPlacePageUrl()
    {
      this.hasPlacePageUrl = false;
      this.placePageUrl_ = "";
      return this;
    }

    public EcoutezLocalResult clearQuery()
    {
      this.hasQuery = false;
      this.query_ = "";
      return this;
    }

    public EcoutezLocalResult clearReviewSite()
    {
      this.reviewSite_ = Collections.emptyList();
      return this;
    }

    public EcoutezLocalResult clearReviewSnippet()
    {
      this.hasReviewSnippet = false;
      this.reviewSnippet_ = "";
      return this;
    }

    public EcoutezLocalResult clearReviewsText()
    {
      this.hasReviewsText = false;
      this.reviewsText_ = "";
      return this;
    }

    public EcoutezLocalResult clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public EcoutezLocalResult clearTransitStationName()
    {
      this.hasTransitStationName = false;
      this.transitStationName_ = "";
      return this;
    }

    public EcoutezLocalResult clearTransitStationText()
    {
      this.hasTransitStationText = false;
      this.transitStationText_ = "";
      return this;
    }

    public EcoutezLocalResult clearTransitStationType()
    {
      this.hasTransitStationType = false;
      this.transitStationType_ = "";
      return this;
    }

    public String getActionBikingUrl()
    {
      return this.actionBikingUrl_;
    }

    public String getActionDrivingUrl()
    {
      return this.actionDrivingUrl_;
    }

    public String getActionTransitUrl()
    {
      return this.actionTransitUrl_;
    }

    public String getActionWalkingUrl()
    {
      return this.actionWalkingUrl_;
    }

    public String getAddress()
    {
      return this.address_;
    }

    public String getAddress1()
    {
      return this.address1_;
    }

    public String getAddress2()
    {
      return this.address2_;
    }

    public String getAddressForMapImageUrl()
    {
      return this.addressForMapImageUrl_;
    }

    public AliasProto.Alias getAlias()
    {
      return this.alias_;
    }

    public String getAuthority()
    {
      return this.authority_;
    }

    public String getBusinessDomain()
    {
      return this.businessDomain_;
    }

    public String getBusinessUrl()
    {
      return this.businessUrl_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getClusterId()
    {
      return this.clusterId_;
    }

    public String getDeprecatedHours()
    {
      return this.deprecatedHours_;
    }

    public EcoutezStructuredResponse.FeatureIdProto getFeatureId()
    {
      return this.featureId_;
    }

    public EcoutezStructuredResponse.Hours getHours()
    {
      return this.hours_;
    }

    public boolean getIsChain()
    {
      return this.isChain_;
    }

    public double getLatDegrees()
    {
      return this.latDegrees_;
    }

    public double getLatSpanDegrees()
    {
      return this.latSpanDegrees_;
    }

    public double getLngDegrees()
    {
      return this.lngDegrees_;
    }

    public double getLngSpanDegrees()
    {
      return this.lngSpanDegrees_;
    }

    public String getMapsUrl()
    {
      return this.mapsUrl_;
    }

    public String getNearLocation()
    {
      return this.nearLocation_;
    }

    public int getNumHalfStars()
    {
      return this.numHalfStars_;
    }

    public int getNumReviews()
    {
      return this.numReviews_;
    }

    public String getPhoneNumber()
    {
      return this.phoneNumber_;
    }

    public String getPlacePageUrl()
    {
      return this.placePageUrl_;
    }

    public String getQuery()
    {
      return this.query_;
    }

    public EcoutezStructuredResponse.ReviewSite getReviewSite(int paramInt)
    {
      return (EcoutezStructuredResponse.ReviewSite)this.reviewSite_.get(paramInt);
    }

    public int getReviewSiteCount()
    {
      return this.reviewSite_.size();
    }

    public List<EcoutezStructuredResponse.ReviewSite> getReviewSiteList()
    {
      return this.reviewSite_;
    }

    public String getReviewSnippet()
    {
      return this.reviewSnippet_;
    }

    public String getReviewsText()
    {
      return this.reviewsText_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTitle();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTitle());
      if (hasBusinessUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getBusinessUrl());
      if (hasBusinessDomain())
        i += CodedOutputStreamMicro.computeStringSize(3, getBusinessDomain());
      if (hasPlacePageUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getPlacePageUrl());
      if (hasLatDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(5, getLatDegrees());
      if (hasLngDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(6, getLngDegrees());
      if (hasNearLocation())
        i += CodedOutputStreamMicro.computeStringSize(7, getNearLocation());
      if (hasQuery())
        i += CodedOutputStreamMicro.computeStringSize(8, getQuery());
      if (hasAddress())
        i += CodedOutputStreamMicro.computeStringSize(9, getAddress());
      if (hasAddress1())
        i += CodedOutputStreamMicro.computeStringSize(10, getAddress1());
      if (hasAddress2())
        i += CodedOutputStreamMicro.computeStringSize(11, getAddress2());
      if (hasPhoneNumber())
        i += CodedOutputStreamMicro.computeStringSize(12, getPhoneNumber());
      if (hasDeprecatedHours())
        i += CodedOutputStreamMicro.computeStringSize(13, getDeprecatedHours());
      if (hasAuthority())
        i += CodedOutputStreamMicro.computeStringSize(14, getAuthority());
      if (hasTransitStationText())
        i += CodedOutputStreamMicro.computeStringSize(15, getTransitStationText());
      if (hasTransitStationType())
        i += CodedOutputStreamMicro.computeStringSize(16, getTransitStationType());
      if (hasTransitStationName())
        i += CodedOutputStreamMicro.computeStringSize(17, getTransitStationName());
      if (hasReviewSnippet())
        i += CodedOutputStreamMicro.computeStringSize(18, getReviewSnippet());
      if (hasNumHalfStars())
        i += CodedOutputStreamMicro.computeInt32Size(19, getNumHalfStars());
      if (hasNumReviews())
        i += CodedOutputStreamMicro.computeInt32Size(20, getNumReviews());
      if (hasReviewsText())
        i += CodedOutputStreamMicro.computeStringSize(21, getReviewsText());
      Iterator localIterator = getReviewSiteList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(22, (EcoutezStructuredResponse.ReviewSite)localIterator.next());
      if (hasClusterId())
        i += CodedOutputStreamMicro.computeStringSize(23, getClusterId());
      if (hasMapsUrl())
        i += CodedOutputStreamMicro.computeStringSize(24, getMapsUrl());
      if (hasActionDrivingUrl())
        i += CodedOutputStreamMicro.computeStringSize(25, getActionDrivingUrl());
      if (hasActionWalkingUrl())
        i += CodedOutputStreamMicro.computeStringSize(26, getActionWalkingUrl());
      if (hasActionTransitUrl())
        i += CodedOutputStreamMicro.computeStringSize(27, getActionTransitUrl());
      if (hasActionBikingUrl())
        i += CodedOutputStreamMicro.computeStringSize(28, getActionBikingUrl());
      if (hasLatSpanDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(29, getLatSpanDegrees());
      if (hasLngSpanDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(30, getLngSpanDegrees());
      if (hasHours())
        i += CodedOutputStreamMicro.computeMessageSize(31, getHours());
      if (hasAddressForMapImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(32, getAddressForMapImageUrl());
      if (hasAlias())
        i += CodedOutputStreamMicro.computeMessageSize(33, getAlias());
      if (hasFeatureId())
        i += CodedOutputStreamMicro.computeMessageSize(34, getFeatureId());
      if (hasIsChain())
        i += CodedOutputStreamMicro.computeBoolSize(35, getIsChain());
      this.cachedSize = i;
      return i;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public String getTransitStationName()
    {
      return this.transitStationName_;
    }

    public String getTransitStationText()
    {
      return this.transitStationText_;
    }

    public String getTransitStationType()
    {
      return this.transitStationType_;
    }

    public boolean hasActionBikingUrl()
    {
      return this.hasActionBikingUrl;
    }

    public boolean hasActionDrivingUrl()
    {
      return this.hasActionDrivingUrl;
    }

    public boolean hasActionTransitUrl()
    {
      return this.hasActionTransitUrl;
    }

    public boolean hasActionWalkingUrl()
    {
      return this.hasActionWalkingUrl;
    }

    public boolean hasAddress()
    {
      return this.hasAddress;
    }

    public boolean hasAddress1()
    {
      return this.hasAddress1;
    }

    public boolean hasAddress2()
    {
      return this.hasAddress2;
    }

    public boolean hasAddressForMapImageUrl()
    {
      return this.hasAddressForMapImageUrl;
    }

    public boolean hasAlias()
    {
      return this.hasAlias;
    }

    public boolean hasAuthority()
    {
      return this.hasAuthority;
    }

    public boolean hasBusinessDomain()
    {
      return this.hasBusinessDomain;
    }

    public boolean hasBusinessUrl()
    {
      return this.hasBusinessUrl;
    }

    public boolean hasClusterId()
    {
      return this.hasClusterId;
    }

    public boolean hasDeprecatedHours()
    {
      return this.hasDeprecatedHours;
    }

    public boolean hasFeatureId()
    {
      return this.hasFeatureId;
    }

    public boolean hasHours()
    {
      return this.hasHours;
    }

    public boolean hasIsChain()
    {
      return this.hasIsChain;
    }

    public boolean hasLatDegrees()
    {
      return this.hasLatDegrees;
    }

    public boolean hasLatSpanDegrees()
    {
      return this.hasLatSpanDegrees;
    }

    public boolean hasLngDegrees()
    {
      return this.hasLngDegrees;
    }

    public boolean hasLngSpanDegrees()
    {
      return this.hasLngSpanDegrees;
    }

    public boolean hasMapsUrl()
    {
      return this.hasMapsUrl;
    }

    public boolean hasNearLocation()
    {
      return this.hasNearLocation;
    }

    public boolean hasNumHalfStars()
    {
      return this.hasNumHalfStars;
    }

    public boolean hasNumReviews()
    {
      return this.hasNumReviews;
    }

    public boolean hasPhoneNumber()
    {
      return this.hasPhoneNumber;
    }

    public boolean hasPlacePageUrl()
    {
      return this.hasPlacePageUrl;
    }

    public boolean hasQuery()
    {
      return this.hasQuery;
    }

    public boolean hasReviewSnippet()
    {
      return this.hasReviewSnippet;
    }

    public boolean hasReviewsText()
    {
      return this.hasReviewsText;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public boolean hasTransitStationName()
    {
      return this.hasTransitStationName;
    }

    public boolean hasTransitStationText()
    {
      return this.hasTransitStationText;
    }

    public boolean hasTransitStationType()
    {
      return this.hasTransitStationType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EcoutezLocalResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setBusinessUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setBusinessDomain(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setPlacePageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 41:
          setLatDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 49:
          setLngDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 58:
          setNearLocation(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setQuery(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setAddress(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          setAddress1(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setAddress2(paramCodedInputStreamMicro.readString());
          break;
        case 98:
          setPhoneNumber(paramCodedInputStreamMicro.readString());
          break;
        case 106:
          setDeprecatedHours(paramCodedInputStreamMicro.readString());
          break;
        case 114:
          setAuthority(paramCodedInputStreamMicro.readString());
          break;
        case 122:
          setTransitStationText(paramCodedInputStreamMicro.readString());
          break;
        case 130:
          setTransitStationType(paramCodedInputStreamMicro.readString());
          break;
        case 138:
          setTransitStationName(paramCodedInputStreamMicro.readString());
          break;
        case 146:
          setReviewSnippet(paramCodedInputStreamMicro.readString());
          break;
        case 152:
          setNumHalfStars(paramCodedInputStreamMicro.readInt32());
          break;
        case 160:
          setNumReviews(paramCodedInputStreamMicro.readInt32());
          break;
        case 170:
          setReviewsText(paramCodedInputStreamMicro.readString());
          break;
        case 178:
          EcoutezStructuredResponse.ReviewSite localReviewSite = new EcoutezStructuredResponse.ReviewSite();
          paramCodedInputStreamMicro.readMessage(localReviewSite);
          addReviewSite(localReviewSite);
          break;
        case 186:
          setClusterId(paramCodedInputStreamMicro.readString());
          break;
        case 194:
          setMapsUrl(paramCodedInputStreamMicro.readString());
          break;
        case 202:
          setActionDrivingUrl(paramCodedInputStreamMicro.readString());
          break;
        case 210:
          setActionWalkingUrl(paramCodedInputStreamMicro.readString());
          break;
        case 218:
          setActionTransitUrl(paramCodedInputStreamMicro.readString());
          break;
        case 226:
          setActionBikingUrl(paramCodedInputStreamMicro.readString());
          break;
        case 233:
          setLatSpanDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 241:
          setLngSpanDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 250:
          EcoutezStructuredResponse.Hours localHours = new EcoutezStructuredResponse.Hours();
          paramCodedInputStreamMicro.readMessage(localHours);
          setHours(localHours);
          break;
        case 258:
          setAddressForMapImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 266:
          AliasProto.Alias localAlias = new AliasProto.Alias();
          paramCodedInputStreamMicro.readMessage(localAlias);
          setAlias(localAlias);
          break;
        case 274:
          EcoutezStructuredResponse.FeatureIdProto localFeatureIdProto = new EcoutezStructuredResponse.FeatureIdProto();
          paramCodedInputStreamMicro.readMessage(localFeatureIdProto);
          setFeatureId(localFeatureIdProto);
          break;
        case 280:
        }
        setIsChain(paramCodedInputStreamMicro.readBool());
      }
    }

    public EcoutezLocalResult setActionBikingUrl(String paramString)
    {
      this.hasActionBikingUrl = true;
      this.actionBikingUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setActionDrivingUrl(String paramString)
    {
      this.hasActionDrivingUrl = true;
      this.actionDrivingUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setActionTransitUrl(String paramString)
    {
      this.hasActionTransitUrl = true;
      this.actionTransitUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setActionWalkingUrl(String paramString)
    {
      this.hasActionWalkingUrl = true;
      this.actionWalkingUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setAddress(String paramString)
    {
      this.hasAddress = true;
      this.address_ = paramString;
      return this;
    }

    public EcoutezLocalResult setAddress1(String paramString)
    {
      this.hasAddress1 = true;
      this.address1_ = paramString;
      return this;
    }

    public EcoutezLocalResult setAddress2(String paramString)
    {
      this.hasAddress2 = true;
      this.address2_ = paramString;
      return this;
    }

    public EcoutezLocalResult setAddressForMapImageUrl(String paramString)
    {
      this.hasAddressForMapImageUrl = true;
      this.addressForMapImageUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setAlias(AliasProto.Alias paramAlias)
    {
      if (paramAlias == null)
        throw new NullPointerException();
      this.hasAlias = true;
      this.alias_ = paramAlias;
      return this;
    }

    public EcoutezLocalResult setAuthority(String paramString)
    {
      this.hasAuthority = true;
      this.authority_ = paramString;
      return this;
    }

    public EcoutezLocalResult setBusinessDomain(String paramString)
    {
      this.hasBusinessDomain = true;
      this.businessDomain_ = paramString;
      return this;
    }

    public EcoutezLocalResult setBusinessUrl(String paramString)
    {
      this.hasBusinessUrl = true;
      this.businessUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setClusterId(String paramString)
    {
      this.hasClusterId = true;
      this.clusterId_ = paramString;
      return this;
    }

    public EcoutezLocalResult setDeprecatedHours(String paramString)
    {
      this.hasDeprecatedHours = true;
      this.deprecatedHours_ = paramString;
      return this;
    }

    public EcoutezLocalResult setFeatureId(EcoutezStructuredResponse.FeatureIdProto paramFeatureIdProto)
    {
      if (paramFeatureIdProto == null)
        throw new NullPointerException();
      this.hasFeatureId = true;
      this.featureId_ = paramFeatureIdProto;
      return this;
    }

    public EcoutezLocalResult setHours(EcoutezStructuredResponse.Hours paramHours)
    {
      if (paramHours == null)
        throw new NullPointerException();
      this.hasHours = true;
      this.hours_ = paramHours;
      return this;
    }

    public EcoutezLocalResult setIsChain(boolean paramBoolean)
    {
      this.hasIsChain = true;
      this.isChain_ = paramBoolean;
      return this;
    }

    public EcoutezLocalResult setLatDegrees(double paramDouble)
    {
      this.hasLatDegrees = true;
      this.latDegrees_ = paramDouble;
      return this;
    }

    public EcoutezLocalResult setLatSpanDegrees(double paramDouble)
    {
      this.hasLatSpanDegrees = true;
      this.latSpanDegrees_ = paramDouble;
      return this;
    }

    public EcoutezLocalResult setLngDegrees(double paramDouble)
    {
      this.hasLngDegrees = true;
      this.lngDegrees_ = paramDouble;
      return this;
    }

    public EcoutezLocalResult setLngSpanDegrees(double paramDouble)
    {
      this.hasLngSpanDegrees = true;
      this.lngSpanDegrees_ = paramDouble;
      return this;
    }

    public EcoutezLocalResult setMapsUrl(String paramString)
    {
      this.hasMapsUrl = true;
      this.mapsUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setNearLocation(String paramString)
    {
      this.hasNearLocation = true;
      this.nearLocation_ = paramString;
      return this;
    }

    public EcoutezLocalResult setNumHalfStars(int paramInt)
    {
      this.hasNumHalfStars = true;
      this.numHalfStars_ = paramInt;
      return this;
    }

    public EcoutezLocalResult setNumReviews(int paramInt)
    {
      this.hasNumReviews = true;
      this.numReviews_ = paramInt;
      return this;
    }

    public EcoutezLocalResult setPhoneNumber(String paramString)
    {
      this.hasPhoneNumber = true;
      this.phoneNumber_ = paramString;
      return this;
    }

    public EcoutezLocalResult setPlacePageUrl(String paramString)
    {
      this.hasPlacePageUrl = true;
      this.placePageUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResult setQuery(String paramString)
    {
      this.hasQuery = true;
      this.query_ = paramString;
      return this;
    }

    public EcoutezLocalResult setReviewSite(int paramInt, EcoutezStructuredResponse.ReviewSite paramReviewSite)
    {
      if (paramReviewSite == null)
        throw new NullPointerException();
      this.reviewSite_.set(paramInt, paramReviewSite);
      return this;
    }

    public EcoutezLocalResult setReviewSnippet(String paramString)
    {
      this.hasReviewSnippet = true;
      this.reviewSnippet_ = paramString;
      return this;
    }

    public EcoutezLocalResult setReviewsText(String paramString)
    {
      this.hasReviewsText = true;
      this.reviewsText_ = paramString;
      return this;
    }

    public EcoutezLocalResult setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public EcoutezLocalResult setTransitStationName(String paramString)
    {
      this.hasTransitStationName = true;
      this.transitStationName_ = paramString;
      return this;
    }

    public EcoutezLocalResult setTransitStationText(String paramString)
    {
      this.hasTransitStationText = true;
      this.transitStationText_ = paramString;
      return this;
    }

    public EcoutezLocalResult setTransitStationType(String paramString)
    {
      this.hasTransitStationType = true;
      this.transitStationType_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(1, getTitle());
      if (hasBusinessUrl())
        paramCodedOutputStreamMicro.writeString(2, getBusinessUrl());
      if (hasBusinessDomain())
        paramCodedOutputStreamMicro.writeString(3, getBusinessDomain());
      if (hasPlacePageUrl())
        paramCodedOutputStreamMicro.writeString(4, getPlacePageUrl());
      if (hasLatDegrees())
        paramCodedOutputStreamMicro.writeDouble(5, getLatDegrees());
      if (hasLngDegrees())
        paramCodedOutputStreamMicro.writeDouble(6, getLngDegrees());
      if (hasNearLocation())
        paramCodedOutputStreamMicro.writeString(7, getNearLocation());
      if (hasQuery())
        paramCodedOutputStreamMicro.writeString(8, getQuery());
      if (hasAddress())
        paramCodedOutputStreamMicro.writeString(9, getAddress());
      if (hasAddress1())
        paramCodedOutputStreamMicro.writeString(10, getAddress1());
      if (hasAddress2())
        paramCodedOutputStreamMicro.writeString(11, getAddress2());
      if (hasPhoneNumber())
        paramCodedOutputStreamMicro.writeString(12, getPhoneNumber());
      if (hasDeprecatedHours())
        paramCodedOutputStreamMicro.writeString(13, getDeprecatedHours());
      if (hasAuthority())
        paramCodedOutputStreamMicro.writeString(14, getAuthority());
      if (hasTransitStationText())
        paramCodedOutputStreamMicro.writeString(15, getTransitStationText());
      if (hasTransitStationType())
        paramCodedOutputStreamMicro.writeString(16, getTransitStationType());
      if (hasTransitStationName())
        paramCodedOutputStreamMicro.writeString(17, getTransitStationName());
      if (hasReviewSnippet())
        paramCodedOutputStreamMicro.writeString(18, getReviewSnippet());
      if (hasNumHalfStars())
        paramCodedOutputStreamMicro.writeInt32(19, getNumHalfStars());
      if (hasNumReviews())
        paramCodedOutputStreamMicro.writeInt32(20, getNumReviews());
      if (hasReviewsText())
        paramCodedOutputStreamMicro.writeString(21, getReviewsText());
      Iterator localIterator = getReviewSiteList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(22, (EcoutezStructuredResponse.ReviewSite)localIterator.next());
      if (hasClusterId())
        paramCodedOutputStreamMicro.writeString(23, getClusterId());
      if (hasMapsUrl())
        paramCodedOutputStreamMicro.writeString(24, getMapsUrl());
      if (hasActionDrivingUrl())
        paramCodedOutputStreamMicro.writeString(25, getActionDrivingUrl());
      if (hasActionWalkingUrl())
        paramCodedOutputStreamMicro.writeString(26, getActionWalkingUrl());
      if (hasActionTransitUrl())
        paramCodedOutputStreamMicro.writeString(27, getActionTransitUrl());
      if (hasActionBikingUrl())
        paramCodedOutputStreamMicro.writeString(28, getActionBikingUrl());
      if (hasLatSpanDegrees())
        paramCodedOutputStreamMicro.writeDouble(29, getLatSpanDegrees());
      if (hasLngSpanDegrees())
        paramCodedOutputStreamMicro.writeDouble(30, getLngSpanDegrees());
      if (hasHours())
        paramCodedOutputStreamMicro.writeMessage(31, getHours());
      if (hasAddressForMapImageUrl())
        paramCodedOutputStreamMicro.writeString(32, getAddressForMapImageUrl());
      if (hasAlias())
        paramCodedOutputStreamMicro.writeMessage(33, getAlias());
      if (hasFeatureId())
        paramCodedOutputStreamMicro.writeMessage(34, getFeatureId());
      if (hasIsChain())
        paramCodedOutputStreamMicro.writeBool(35, getIsChain());
    }
  }

  public static final class EcoutezLocalResults extends MessageMicro
  {
    public static final int ACTION_TYPE_CALL = 4;
    public static final int ACTION_TYPE_DIRECTIONS = 2;
    public static final int ACTION_TYPE_FIELD_NUMBER = 3;
    public static final int ACTION_TYPE_MAP = 1;
    public static final int ACTION_TYPE_NAVIGATION = 3;
    public static final int ACTION_TYPE_REMINDER = 5;
    public static final int LOCAL_RESULT_FIELD_NUMBER = 1;
    public static final int MAPS_URL_FIELD_NUMBER = 6;
    public static final int ORIGIN_FIELD_NUMBER = 4;
    public static final int PREVIEW_IMAGE_FIELD_NUMBER = 7;
    public static final int PREVIEW_IMAGE_URL_FIELD_NUMBER = 2;
    public static final int TRANSPORTATION_METHOD_FIELD_NUMBER = 5;
    private int actionType_ = 0;
    private int cachedSize = -1;
    private boolean hasActionType;
    private boolean hasMapsUrl;
    private boolean hasPreviewImage;
    private boolean hasPreviewImageUrl;
    private boolean hasTransportationMethod;
    private List<EcoutezStructuredResponse.EcoutezLocalResult> localResult_ = Collections.emptyList();
    private String mapsUrl_ = "";
    private List<EcoutezStructuredResponse.EcoutezLocalResult> origin_ = Collections.emptyList();
    private String previewImageUrl_ = "";
    private ByteStringMicro previewImage_ = ByteStringMicro.EMPTY;
    private int transportationMethod_ = 0;

    public static EcoutezLocalResults parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EcoutezLocalResults().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EcoutezLocalResults parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EcoutezLocalResults)new EcoutezLocalResults().mergeFrom(paramArrayOfByte);
    }

    public EcoutezLocalResults addLocalResult(EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      if (this.localResult_.isEmpty())
        this.localResult_ = new ArrayList();
      this.localResult_.add(paramEcoutezLocalResult);
      return this;
    }

    public EcoutezLocalResults addOrigin(EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      if (this.origin_.isEmpty())
        this.origin_ = new ArrayList();
      this.origin_.add(paramEcoutezLocalResult);
      return this;
    }

    public final EcoutezLocalResults clear()
    {
      clearLocalResult();
      clearOrigin();
      clearPreviewImageUrl();
      clearPreviewImage();
      clearMapsUrl();
      clearActionType();
      clearTransportationMethod();
      this.cachedSize = -1;
      return this;
    }

    public EcoutezLocalResults clearActionType()
    {
      this.hasActionType = false;
      this.actionType_ = 0;
      return this;
    }

    public EcoutezLocalResults clearLocalResult()
    {
      this.localResult_ = Collections.emptyList();
      return this;
    }

    public EcoutezLocalResults clearMapsUrl()
    {
      this.hasMapsUrl = false;
      this.mapsUrl_ = "";
      return this;
    }

    public EcoutezLocalResults clearOrigin()
    {
      this.origin_ = Collections.emptyList();
      return this;
    }

    public EcoutezLocalResults clearPreviewImage()
    {
      this.hasPreviewImage = false;
      this.previewImage_ = ByteStringMicro.EMPTY;
      return this;
    }

    public EcoutezLocalResults clearPreviewImageUrl()
    {
      this.hasPreviewImageUrl = false;
      this.previewImageUrl_ = "";
      return this;
    }

    public EcoutezLocalResults clearTransportationMethod()
    {
      this.hasTransportationMethod = false;
      this.transportationMethod_ = 0;
      return this;
    }

    public int getActionType()
    {
      return this.actionType_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.EcoutezLocalResult getLocalResult(int paramInt)
    {
      return (EcoutezStructuredResponse.EcoutezLocalResult)this.localResult_.get(paramInt);
    }

    public int getLocalResultCount()
    {
      return this.localResult_.size();
    }

    public List<EcoutezStructuredResponse.EcoutezLocalResult> getLocalResultList()
    {
      return this.localResult_;
    }

    public String getMapsUrl()
    {
      return this.mapsUrl_;
    }

    public EcoutezStructuredResponse.EcoutezLocalResult getOrigin(int paramInt)
    {
      return (EcoutezStructuredResponse.EcoutezLocalResult)this.origin_.get(paramInt);
    }

    public int getOriginCount()
    {
      return this.origin_.size();
    }

    public List<EcoutezStructuredResponse.EcoutezLocalResult> getOriginList()
    {
      return this.origin_;
    }

    public ByteStringMicro getPreviewImage()
    {
      return this.previewImage_;
    }

    public String getPreviewImageUrl()
    {
      return this.previewImageUrl_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getLocalResultList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator1.next());
      if (hasPreviewImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getPreviewImageUrl());
      if (hasActionType())
        i += CodedOutputStreamMicro.computeInt32Size(3, getActionType());
      Iterator localIterator2 = getOriginList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator2.next());
      if (hasTransportationMethod())
        i += CodedOutputStreamMicro.computeInt32Size(5, getTransportationMethod());
      if (hasMapsUrl())
        i += CodedOutputStreamMicro.computeStringSize(6, getMapsUrl());
      if (hasPreviewImage())
        i += CodedOutputStreamMicro.computeBytesSize(7, getPreviewImage());
      this.cachedSize = i;
      return i;
    }

    public int getTransportationMethod()
    {
      return this.transportationMethod_;
    }

    public boolean hasActionType()
    {
      return this.hasActionType;
    }

    public boolean hasMapsUrl()
    {
      return this.hasMapsUrl;
    }

    public boolean hasPreviewImage()
    {
      return this.hasPreviewImage;
    }

    public boolean hasPreviewImageUrl()
    {
      return this.hasPreviewImageUrl;
    }

    public boolean hasTransportationMethod()
    {
      return this.hasTransportationMethod;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EcoutezLocalResults mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.EcoutezLocalResult localEcoutezLocalResult2 = new EcoutezStructuredResponse.EcoutezLocalResult();
          paramCodedInputStreamMicro.readMessage(localEcoutezLocalResult2);
          addLocalResult(localEcoutezLocalResult2);
          break;
        case 18:
          setPreviewImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 24:
          setActionType(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
          EcoutezStructuredResponse.EcoutezLocalResult localEcoutezLocalResult1 = new EcoutezStructuredResponse.EcoutezLocalResult();
          paramCodedInputStreamMicro.readMessage(localEcoutezLocalResult1);
          addOrigin(localEcoutezLocalResult1);
          break;
        case 40:
          setTransportationMethod(paramCodedInputStreamMicro.readInt32());
          break;
        case 50:
          setMapsUrl(paramCodedInputStreamMicro.readString());
          break;
        case 58:
        }
        setPreviewImage(paramCodedInputStreamMicro.readBytes());
      }
    }

    public EcoutezLocalResults setActionType(int paramInt)
    {
      this.hasActionType = true;
      this.actionType_ = paramInt;
      return this;
    }

    public EcoutezLocalResults setLocalResult(int paramInt, EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      this.localResult_.set(paramInt, paramEcoutezLocalResult);
      return this;
    }

    public EcoutezLocalResults setMapsUrl(String paramString)
    {
      this.hasMapsUrl = true;
      this.mapsUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResults setOrigin(int paramInt, EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      this.origin_.set(paramInt, paramEcoutezLocalResult);
      return this;
    }

    public EcoutezLocalResults setPreviewImage(ByteStringMicro paramByteStringMicro)
    {
      this.hasPreviewImage = true;
      this.previewImage_ = paramByteStringMicro;
      return this;
    }

    public EcoutezLocalResults setPreviewImageUrl(String paramString)
    {
      this.hasPreviewImageUrl = true;
      this.previewImageUrl_ = paramString;
      return this;
    }

    public EcoutezLocalResults setTransportationMethod(int paramInt)
    {
      this.hasTransportationMethod = true;
      this.transportationMethod_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getLocalResultList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator1.next());
      if (hasPreviewImageUrl())
        paramCodedOutputStreamMicro.writeString(2, getPreviewImageUrl());
      if (hasActionType())
        paramCodedOutputStreamMicro.writeInt32(3, getActionType());
      Iterator localIterator2 = getOriginList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator2.next());
      if (hasTransportationMethod())
        paramCodedOutputStreamMicro.writeInt32(5, getTransportationMethod());
      if (hasMapsUrl())
        paramCodedOutputStreamMicro.writeString(6, getMapsUrl());
      if (hasPreviewImage())
        paramCodedOutputStreamMicro.writeBytes(7, getPreviewImage());
    }
  }

  public static final class Fact extends MessageMicro
  {
    public static final int LABEL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLabel;
    private boolean hasValue;
    private String label_ = "";
    private String value_ = "";

    public static Fact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Fact().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Fact parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Fact)new Fact().mergeFrom(paramArrayOfByte);
    }

    public final Fact clear()
    {
      clearLabel();
      clearValue();
      this.cachedSize = -1;
      return this;
    }

    public Fact clearLabel()
    {
      this.hasLabel = false;
      this.label_ = "";
      return this;
    }

    public Fact clearValue()
    {
      this.hasValue = false;
      this.value_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLabel()
    {
      return this.label_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLabel();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLabel());
      if (hasValue())
        i += CodedOutputStreamMicro.computeStringSize(2, getValue());
      this.cachedSize = i;
      return i;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasLabel()
    {
      return this.hasLabel;
    }

    public boolean hasValue()
    {
      return this.hasValue;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Fact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLabel(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setValue(paramCodedInputStreamMicro.readString());
      }
    }

    public Fact setLabel(String paramString)
    {
      this.hasLabel = true;
      this.label_ = paramString;
      return this;
    }

    public Fact setValue(String paramString)
    {
      this.hasValue = true;
      this.value_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLabel())
        paramCodedOutputStreamMicro.writeString(1, getLabel());
      if (hasValue())
        paramCodedOutputStreamMicro.writeString(2, getValue());
    }
  }

  public static final class FeatureIdProto extends MessageMicro
  {
    public static final int CELL_ID_FIELD_NUMBER = 1;
    public static final int FPRINT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private long cellId_ = 0L;
    private long fprint_ = 0L;
    private boolean hasCellId;
    private boolean hasFprint;

    public static FeatureIdProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FeatureIdProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FeatureIdProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FeatureIdProto)new FeatureIdProto().mergeFrom(paramArrayOfByte);
    }

    public final FeatureIdProto clear()
    {
      clearCellId();
      clearFprint();
      this.cachedSize = -1;
      return this;
    }

    public FeatureIdProto clearCellId()
    {
      this.hasCellId = false;
      this.cellId_ = 0L;
      return this;
    }

    public FeatureIdProto clearFprint()
    {
      this.hasFprint = false;
      this.fprint_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public long getCellId()
    {
      return this.cellId_;
    }

    public long getFprint()
    {
      return this.fprint_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCellId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFixed64Size(1, getCellId());
      if (hasFprint())
        i += CodedOutputStreamMicro.computeFixed64Size(2, getFprint());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCellId()
    {
      return this.hasCellId;
    }

    public boolean hasFprint()
    {
      return this.hasFprint;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FeatureIdProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 9:
          setCellId(paramCodedInputStreamMicro.readFixed64());
          break;
        case 17:
        }
        setFprint(paramCodedInputStreamMicro.readFixed64());
      }
    }

    public FeatureIdProto setCellId(long paramLong)
    {
      this.hasCellId = true;
      this.cellId_ = paramLong;
      return this;
    }

    public FeatureIdProto setFprint(long paramLong)
    {
      this.hasFprint = true;
      this.fprint_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCellId())
        paramCodedOutputStreamMicro.writeFixed64(1, getCellId());
      if (hasFprint())
        paramCodedOutputStreamMicro.writeFixed64(2, getFprint());
    }
  }

  public static final class FinanceResult extends MessageMicro
  {
    public static final int CHART_LINK_FIELD_NUMBER = 8;
    public static final int CHART_URL_FIELD_NUMBER = 7;
    public static final int COMPANY_FIELD_NUMBER = 3;
    public static final int ECN_RESULT_FIELD_NUMBER = 10;
    public static final int EXCHANGE_CODE_FIELD_NUMBER = 5;
    public static final int EXCHANGE_FIELD_NUMBER = 4;
    public static final int STOCK_RESULT_FIELD_NUMBER = 9;
    public static final int SYMBOL_FIELD_NUMBER = 1;
    public static final int SYMBOL_URL_FIELD_NUMBER = 2;
    public static final int TOP_LINK_FIELD_NUMBER = 6;
    private int cachedSize = -1;
    private String chartLink_ = "";
    private String chartUrl_ = "";
    private String company_ = "";
    private EcoutezStructuredResponse.EcnResult ecnResult_ = null;
    private String exchangeCode_ = "";
    private String exchange_ = "";
    private boolean hasChartLink;
    private boolean hasChartUrl;
    private boolean hasCompany;
    private boolean hasEcnResult;
    private boolean hasExchange;
    private boolean hasExchangeCode;
    private boolean hasStockResult;
    private boolean hasSymbol;
    private boolean hasSymbolUrl;
    private EcoutezStructuredResponse.StockResult stockResult_ = null;
    private String symbolUrl_ = "";
    private String symbol_ = "";
    private List<TopLink> topLink_ = Collections.emptyList();

    public static FinanceResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FinanceResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FinanceResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FinanceResult)new FinanceResult().mergeFrom(paramArrayOfByte);
    }

    public FinanceResult addTopLink(TopLink paramTopLink)
    {
      if (paramTopLink == null)
        throw new NullPointerException();
      if (this.topLink_.isEmpty())
        this.topLink_ = new ArrayList();
      this.topLink_.add(paramTopLink);
      return this;
    }

    public final FinanceResult clear()
    {
      clearSymbol();
      clearSymbolUrl();
      clearCompany();
      clearExchange();
      clearExchangeCode();
      clearTopLink();
      clearChartUrl();
      clearChartLink();
      clearStockResult();
      clearEcnResult();
      this.cachedSize = -1;
      return this;
    }

    public FinanceResult clearChartLink()
    {
      this.hasChartLink = false;
      this.chartLink_ = "";
      return this;
    }

    public FinanceResult clearChartUrl()
    {
      this.hasChartUrl = false;
      this.chartUrl_ = "";
      return this;
    }

    public FinanceResult clearCompany()
    {
      this.hasCompany = false;
      this.company_ = "";
      return this;
    }

    public FinanceResult clearEcnResult()
    {
      this.hasEcnResult = false;
      this.ecnResult_ = null;
      return this;
    }

    public FinanceResult clearExchange()
    {
      this.hasExchange = false;
      this.exchange_ = "";
      return this;
    }

    public FinanceResult clearExchangeCode()
    {
      this.hasExchangeCode = false;
      this.exchangeCode_ = "";
      return this;
    }

    public FinanceResult clearStockResult()
    {
      this.hasStockResult = false;
      this.stockResult_ = null;
      return this;
    }

    public FinanceResult clearSymbol()
    {
      this.hasSymbol = false;
      this.symbol_ = "";
      return this;
    }

    public FinanceResult clearSymbolUrl()
    {
      this.hasSymbolUrl = false;
      this.symbolUrl_ = "";
      return this;
    }

    public FinanceResult clearTopLink()
    {
      this.topLink_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getChartLink()
    {
      return this.chartLink_;
    }

    public String getChartUrl()
    {
      return this.chartUrl_;
    }

    public String getCompany()
    {
      return this.company_;
    }

    public EcoutezStructuredResponse.EcnResult getEcnResult()
    {
      return this.ecnResult_;
    }

    public String getExchange()
    {
      return this.exchange_;
    }

    public String getExchangeCode()
    {
      return this.exchangeCode_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSymbol();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSymbol());
      if (hasSymbolUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getSymbolUrl());
      if (hasCompany())
        i += CodedOutputStreamMicro.computeStringSize(3, getCompany());
      if (hasExchange())
        i += CodedOutputStreamMicro.computeStringSize(4, getExchange());
      if (hasExchangeCode())
        i += CodedOutputStreamMicro.computeStringSize(5, getExchangeCode());
      Iterator localIterator = getTopLinkList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(6, (TopLink)localIterator.next());
      if (hasChartUrl())
        i += CodedOutputStreamMicro.computeStringSize(7, getChartUrl());
      if (hasChartLink())
        i += CodedOutputStreamMicro.computeStringSize(8, getChartLink());
      if (hasStockResult())
        i += CodedOutputStreamMicro.computeMessageSize(9, getStockResult());
      if (hasEcnResult())
        i += CodedOutputStreamMicro.computeMessageSize(10, getEcnResult());
      this.cachedSize = i;
      return i;
    }

    public EcoutezStructuredResponse.StockResult getStockResult()
    {
      return this.stockResult_;
    }

    public String getSymbol()
    {
      return this.symbol_;
    }

    public String getSymbolUrl()
    {
      return this.symbolUrl_;
    }

    public TopLink getTopLink(int paramInt)
    {
      return (TopLink)this.topLink_.get(paramInt);
    }

    public int getTopLinkCount()
    {
      return this.topLink_.size();
    }

    public List<TopLink> getTopLinkList()
    {
      return this.topLink_;
    }

    public boolean hasChartLink()
    {
      return this.hasChartLink;
    }

    public boolean hasChartUrl()
    {
      return this.hasChartUrl;
    }

    public boolean hasCompany()
    {
      return this.hasCompany;
    }

    public boolean hasEcnResult()
    {
      return this.hasEcnResult;
    }

    public boolean hasExchange()
    {
      return this.hasExchange;
    }

    public boolean hasExchangeCode()
    {
      return this.hasExchangeCode;
    }

    public boolean hasStockResult()
    {
      return this.hasStockResult;
    }

    public boolean hasSymbol()
    {
      return this.hasSymbol;
    }

    public boolean hasSymbolUrl()
    {
      return this.hasSymbolUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FinanceResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSymbol(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setSymbolUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setCompany(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setExchange(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setExchangeCode(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          TopLink localTopLink = new TopLink();
          paramCodedInputStreamMicro.readMessage(localTopLink);
          addTopLink(localTopLink);
          break;
        case 58:
          setChartUrl(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setChartLink(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          EcoutezStructuredResponse.StockResult localStockResult = new EcoutezStructuredResponse.StockResult();
          paramCodedInputStreamMicro.readMessage(localStockResult);
          setStockResult(localStockResult);
          break;
        case 82:
        }
        EcoutezStructuredResponse.EcnResult localEcnResult = new EcoutezStructuredResponse.EcnResult();
        paramCodedInputStreamMicro.readMessage(localEcnResult);
        setEcnResult(localEcnResult);
      }
    }

    public FinanceResult setChartLink(String paramString)
    {
      this.hasChartLink = true;
      this.chartLink_ = paramString;
      return this;
    }

    public FinanceResult setChartUrl(String paramString)
    {
      this.hasChartUrl = true;
      this.chartUrl_ = paramString;
      return this;
    }

    public FinanceResult setCompany(String paramString)
    {
      this.hasCompany = true;
      this.company_ = paramString;
      return this;
    }

    public FinanceResult setEcnResult(EcoutezStructuredResponse.EcnResult paramEcnResult)
    {
      if (paramEcnResult == null)
        throw new NullPointerException();
      this.hasEcnResult = true;
      this.ecnResult_ = paramEcnResult;
      return this;
    }

    public FinanceResult setExchange(String paramString)
    {
      this.hasExchange = true;
      this.exchange_ = paramString;
      return this;
    }

    public FinanceResult setExchangeCode(String paramString)
    {
      this.hasExchangeCode = true;
      this.exchangeCode_ = paramString;
      return this;
    }

    public FinanceResult setStockResult(EcoutezStructuredResponse.StockResult paramStockResult)
    {
      if (paramStockResult == null)
        throw new NullPointerException();
      this.hasStockResult = true;
      this.stockResult_ = paramStockResult;
      return this;
    }

    public FinanceResult setSymbol(String paramString)
    {
      this.hasSymbol = true;
      this.symbol_ = paramString;
      return this;
    }

    public FinanceResult setSymbolUrl(String paramString)
    {
      this.hasSymbolUrl = true;
      this.symbolUrl_ = paramString;
      return this;
    }

    public FinanceResult setTopLink(int paramInt, TopLink paramTopLink)
    {
      if (paramTopLink == null)
        throw new NullPointerException();
      this.topLink_.set(paramInt, paramTopLink);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSymbol())
        paramCodedOutputStreamMicro.writeString(1, getSymbol());
      if (hasSymbolUrl())
        paramCodedOutputStreamMicro.writeString(2, getSymbolUrl());
      if (hasCompany())
        paramCodedOutputStreamMicro.writeString(3, getCompany());
      if (hasExchange())
        paramCodedOutputStreamMicro.writeString(4, getExchange());
      if (hasExchangeCode())
        paramCodedOutputStreamMicro.writeString(5, getExchangeCode());
      Iterator localIterator = getTopLinkList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(6, (TopLink)localIterator.next());
      if (hasChartUrl())
        paramCodedOutputStreamMicro.writeString(7, getChartUrl());
      if (hasChartLink())
        paramCodedOutputStreamMicro.writeString(8, getChartLink());
      if (hasStockResult())
        paramCodedOutputStreamMicro.writeMessage(9, getStockResult());
      if (hasEcnResult())
        paramCodedOutputStreamMicro.writeMessage(10, getEcnResult());
    }

    public static final class TopLink extends MessageMicro
    {
      public static final int TITLE_FIELD_NUMBER = 2;
      public static final int URL_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private boolean hasTitle;
      private boolean hasUrl;
      private String title_ = "";
      private String url_ = "";

      public final TopLink clear()
      {
        clearUrl();
        clearTitle();
        this.cachedSize = -1;
        return this;
      }

      public TopLink clearTitle()
      {
        this.hasTitle = false;
        this.title_ = "";
        return this;
      }

      public TopLink clearUrl()
      {
        this.hasUrl = false;
        this.url_ = "";
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
        boolean bool = hasUrl();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
        if (hasTitle())
          i += CodedOutputStreamMicro.computeStringSize(2, getTitle());
        this.cachedSize = i;
        return i;
      }

      public String getTitle()
      {
        return this.title_;
      }

      public String getUrl()
      {
        return this.url_;
      }

      public boolean hasTitle()
      {
        return this.hasTitle;
      }

      public boolean hasUrl()
      {
        return this.hasUrl;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public TopLink mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setUrl(paramCodedInputStreamMicro.readString());
            break;
          case 18:
          }
          setTitle(paramCodedInputStreamMicro.readString());
        }
      }

      public TopLink parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new TopLink().mergeFrom(paramCodedInputStreamMicro);
      }

      public TopLink parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (TopLink)new TopLink().mergeFrom(paramArrayOfByte);
      }

      public TopLink setTitle(String paramString)
      {
        this.hasTitle = true;
        this.title_ = paramString;
        return this;
      }

      public TopLink setUrl(String paramString)
      {
        this.hasUrl = true;
        this.url_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasUrl())
          paramCodedOutputStreamMicro.writeString(1, getUrl());
        if (hasTitle())
          paramCodedOutputStreamMicro.writeString(2, getTitle());
      }
    }
  }

  public static final class FlightData extends MessageMicro
  {
    public static final int AIRLINE_CODE_FIELD_NUMBER = 1;
    public static final int AIRLINE_NAME_FIELD_NUMBER = 2;
    public static final int ARRIVAL_AIRPORT_CODE_FIELD_NUMBER = 12;
    public static final int ARRIVAL_AIRPORT_NAME_FIELD_NUMBER = 13;
    public static final int ARRIVAL_GATE_FIELD_NUMBER = 15;
    public static final int ARRIVAL_TERMINAL_FIELD_NUMBER = 14;
    public static final int ARRIVAL_TIME_ACTUAL_FIELD_NUMBER = 17;
    public static final int ARRIVAL_TIME_SCHEDULED_FIELD_NUMBER = 16;
    public static final int ARRIVAL_TIME_ZONE_FIELD_NUMBER = 18;
    public static final int DEPARTURE_AIRPORT_CODE_FIELD_NUMBER = 5;
    public static final int DEPARTURE_AIRPORT_NAME_FIELD_NUMBER = 6;
    public static final int DEPARTURE_GATE_FIELD_NUMBER = 8;
    public static final int DEPARTURE_TERMINAL_FIELD_NUMBER = 7;
    public static final int DEPARTURE_TIME_ACTUAL_FIELD_NUMBER = 10;
    public static final int DEPARTURE_TIME_SCHEDULED_FIELD_NUMBER = 9;
    public static final int DEPARTURE_TIME_ZONE_FIELD_NUMBER = 11;
    public static final int FLIGHT_STATS_ID_FIELD_NUMBER = 4;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int STATUS_CODE_CANCELLED = 5;
    public static final int STATUS_CODE_DELAYED = 4;
    public static final int STATUS_CODE_DIVERTED = 6;
    public static final int STATUS_CODE_FIELD_NUMBER = 19;
    public static final int STATUS_CODE_LANDED = 3;
    public static final int STATUS_CODE_NOT_OPERATIONAL = 8;
    public static final int STATUS_CODE_ON_TIME = 2;
    public static final int STATUS_CODE_REDIRECTED = 7;
    public static final int STATUS_CODE_SCHEDULED = 1;
    public static final int STATUS_CODE_UNKNOWN;
    private String airlineCode_ = "";
    private String airlineName_ = "";
    private String arrivalAirportCode_ = "";
    private String arrivalAirportName_ = "";
    private String arrivalGate_ = "";
    private String arrivalTerminal_ = "";
    private String arrivalTimeActual_ = "";
    private String arrivalTimeScheduled_ = "";
    private String arrivalTimeZone_ = "";
    private int cachedSize = -1;
    private String departureAirportCode_ = "";
    private String departureAirportName_ = "";
    private String departureGate_ = "";
    private String departureTerminal_ = "";
    private String departureTimeActual_ = "";
    private String departureTimeScheduled_ = "";
    private String departureTimeZone_ = "";
    private String flightStatsId_ = "";
    private boolean hasAirlineCode;
    private boolean hasAirlineName;
    private boolean hasArrivalAirportCode;
    private boolean hasArrivalAirportName;
    private boolean hasArrivalGate;
    private boolean hasArrivalTerminal;
    private boolean hasArrivalTimeActual;
    private boolean hasArrivalTimeScheduled;
    private boolean hasArrivalTimeZone;
    private boolean hasDepartureAirportCode;
    private boolean hasDepartureAirportName;
    private boolean hasDepartureGate;
    private boolean hasDepartureTerminal;
    private boolean hasDepartureTimeActual;
    private boolean hasDepartureTimeScheduled;
    private boolean hasDepartureTimeZone;
    private boolean hasFlightStatsId;
    private boolean hasNumber;
    private boolean hasStatusCode;
    private String number_ = "";
    private int statusCode_ = 0;

    public static FlightData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FlightData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FlightData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FlightData)new FlightData().mergeFrom(paramArrayOfByte);
    }

    public final FlightData clear()
    {
      clearAirlineCode();
      clearAirlineName();
      clearNumber();
      clearFlightStatsId();
      clearDepartureAirportCode();
      clearDepartureAirportName();
      clearDepartureTerminal();
      clearDepartureGate();
      clearDepartureTimeScheduled();
      clearDepartureTimeActual();
      clearDepartureTimeZone();
      clearArrivalAirportCode();
      clearArrivalAirportName();
      clearArrivalTerminal();
      clearArrivalGate();
      clearArrivalTimeScheduled();
      clearArrivalTimeActual();
      clearArrivalTimeZone();
      clearStatusCode();
      this.cachedSize = -1;
      return this;
    }

    public FlightData clearAirlineCode()
    {
      this.hasAirlineCode = false;
      this.airlineCode_ = "";
      return this;
    }

    public FlightData clearAirlineName()
    {
      this.hasAirlineName = false;
      this.airlineName_ = "";
      return this;
    }

    public FlightData clearArrivalAirportCode()
    {
      this.hasArrivalAirportCode = false;
      this.arrivalAirportCode_ = "";
      return this;
    }

    public FlightData clearArrivalAirportName()
    {
      this.hasArrivalAirportName = false;
      this.arrivalAirportName_ = "";
      return this;
    }

    public FlightData clearArrivalGate()
    {
      this.hasArrivalGate = false;
      this.arrivalGate_ = "";
      return this;
    }

    public FlightData clearArrivalTerminal()
    {
      this.hasArrivalTerminal = false;
      this.arrivalTerminal_ = "";
      return this;
    }

    public FlightData clearArrivalTimeActual()
    {
      this.hasArrivalTimeActual = false;
      this.arrivalTimeActual_ = "";
      return this;
    }

    public FlightData clearArrivalTimeScheduled()
    {
      this.hasArrivalTimeScheduled = false;
      this.arrivalTimeScheduled_ = "";
      return this;
    }

    public FlightData clearArrivalTimeZone()
    {
      this.hasArrivalTimeZone = false;
      this.arrivalTimeZone_ = "";
      return this;
    }

    public FlightData clearDepartureAirportCode()
    {
      this.hasDepartureAirportCode = false;
      this.departureAirportCode_ = "";
      return this;
    }

    public FlightData clearDepartureAirportName()
    {
      this.hasDepartureAirportName = false;
      this.departureAirportName_ = "";
      return this;
    }

    public FlightData clearDepartureGate()
    {
      this.hasDepartureGate = false;
      this.departureGate_ = "";
      return this;
    }

    public FlightData clearDepartureTerminal()
    {
      this.hasDepartureTerminal = false;
      this.departureTerminal_ = "";
      return this;
    }

    public FlightData clearDepartureTimeActual()
    {
      this.hasDepartureTimeActual = false;
      this.departureTimeActual_ = "";
      return this;
    }

    public FlightData clearDepartureTimeScheduled()
    {
      this.hasDepartureTimeScheduled = false;
      this.departureTimeScheduled_ = "";
      return this;
    }

    public FlightData clearDepartureTimeZone()
    {
      this.hasDepartureTimeZone = false;
      this.departureTimeZone_ = "";
      return this;
    }

    public FlightData clearFlightStatsId()
    {
      this.hasFlightStatsId = false;
      this.flightStatsId_ = "";
      return this;
    }

    public FlightData clearNumber()
    {
      this.hasNumber = false;
      this.number_ = "";
      return this;
    }

    public FlightData clearStatusCode()
    {
      this.hasStatusCode = false;
      this.statusCode_ = 0;
      return this;
    }

    public String getAirlineCode()
    {
      return this.airlineCode_;
    }

    public String getAirlineName()
    {
      return this.airlineName_;
    }

    public String getArrivalAirportCode()
    {
      return this.arrivalAirportCode_;
    }

    public String getArrivalAirportName()
    {
      return this.arrivalAirportName_;
    }

    public String getArrivalGate()
    {
      return this.arrivalGate_;
    }

    public String getArrivalTerminal()
    {
      return this.arrivalTerminal_;
    }

    public String getArrivalTimeActual()
    {
      return this.arrivalTimeActual_;
    }

    public String getArrivalTimeScheduled()
    {
      return this.arrivalTimeScheduled_;
    }

    public String getArrivalTimeZone()
    {
      return this.arrivalTimeZone_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDepartureAirportCode()
    {
      return this.departureAirportCode_;
    }

    public String getDepartureAirportName()
    {
      return this.departureAirportName_;
    }

    public String getDepartureGate()
    {
      return this.departureGate_;
    }

    public String getDepartureTerminal()
    {
      return this.departureTerminal_;
    }

    public String getDepartureTimeActual()
    {
      return this.departureTimeActual_;
    }

    public String getDepartureTimeScheduled()
    {
      return this.departureTimeScheduled_;
    }

    public String getDepartureTimeZone()
    {
      return this.departureTimeZone_;
    }

    public String getFlightStatsId()
    {
      return this.flightStatsId_;
    }

    public String getNumber()
    {
      return this.number_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAirlineCode();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAirlineCode());
      if (hasAirlineName())
        i += CodedOutputStreamMicro.computeStringSize(2, getAirlineName());
      if (hasNumber())
        i += CodedOutputStreamMicro.computeStringSize(3, getNumber());
      if (hasFlightStatsId())
        i += CodedOutputStreamMicro.computeStringSize(4, getFlightStatsId());
      if (hasDepartureAirportCode())
        i += CodedOutputStreamMicro.computeStringSize(5, getDepartureAirportCode());
      if (hasDepartureAirportName())
        i += CodedOutputStreamMicro.computeStringSize(6, getDepartureAirportName());
      if (hasDepartureTerminal())
        i += CodedOutputStreamMicro.computeStringSize(7, getDepartureTerminal());
      if (hasDepartureGate())
        i += CodedOutputStreamMicro.computeStringSize(8, getDepartureGate());
      if (hasDepartureTimeScheduled())
        i += CodedOutputStreamMicro.computeStringSize(9, getDepartureTimeScheduled());
      if (hasDepartureTimeActual())
        i += CodedOutputStreamMicro.computeStringSize(10, getDepartureTimeActual());
      if (hasDepartureTimeZone())
        i += CodedOutputStreamMicro.computeStringSize(11, getDepartureTimeZone());
      if (hasArrivalAirportCode())
        i += CodedOutputStreamMicro.computeStringSize(12, getArrivalAirportCode());
      if (hasArrivalAirportName())
        i += CodedOutputStreamMicro.computeStringSize(13, getArrivalAirportName());
      if (hasArrivalTerminal())
        i += CodedOutputStreamMicro.computeStringSize(14, getArrivalTerminal());
      if (hasArrivalGate())
        i += CodedOutputStreamMicro.computeStringSize(15, getArrivalGate());
      if (hasArrivalTimeScheduled())
        i += CodedOutputStreamMicro.computeStringSize(16, getArrivalTimeScheduled());
      if (hasArrivalTimeActual())
        i += CodedOutputStreamMicro.computeStringSize(17, getArrivalTimeActual());
      if (hasArrivalTimeZone())
        i += CodedOutputStreamMicro.computeStringSize(18, getArrivalTimeZone());
      if (hasStatusCode())
        i += CodedOutputStreamMicro.computeInt32Size(19, getStatusCode());
      this.cachedSize = i;
      return i;
    }

    public int getStatusCode()
    {
      return this.statusCode_;
    }

    public boolean hasAirlineCode()
    {
      return this.hasAirlineCode;
    }

    public boolean hasAirlineName()
    {
      return this.hasAirlineName;
    }

    public boolean hasArrivalAirportCode()
    {
      return this.hasArrivalAirportCode;
    }

    public boolean hasArrivalAirportName()
    {
      return this.hasArrivalAirportName;
    }

    public boolean hasArrivalGate()
    {
      return this.hasArrivalGate;
    }

    public boolean hasArrivalTerminal()
    {
      return this.hasArrivalTerminal;
    }

    public boolean hasArrivalTimeActual()
    {
      return this.hasArrivalTimeActual;
    }

    public boolean hasArrivalTimeScheduled()
    {
      return this.hasArrivalTimeScheduled;
    }

    public boolean hasArrivalTimeZone()
    {
      return this.hasArrivalTimeZone;
    }

    public boolean hasDepartureAirportCode()
    {
      return this.hasDepartureAirportCode;
    }

    public boolean hasDepartureAirportName()
    {
      return this.hasDepartureAirportName;
    }

    public boolean hasDepartureGate()
    {
      return this.hasDepartureGate;
    }

    public boolean hasDepartureTerminal()
    {
      return this.hasDepartureTerminal;
    }

    public boolean hasDepartureTimeActual()
    {
      return this.hasDepartureTimeActual;
    }

    public boolean hasDepartureTimeScheduled()
    {
      return this.hasDepartureTimeScheduled;
    }

    public boolean hasDepartureTimeZone()
    {
      return this.hasDepartureTimeZone;
    }

    public boolean hasFlightStatsId()
    {
      return this.hasFlightStatsId;
    }

    public boolean hasNumber()
    {
      return this.hasNumber;
    }

    public boolean hasStatusCode()
    {
      return this.hasStatusCode;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FlightData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAirlineCode(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setAirlineName(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setNumber(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setFlightStatsId(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setDepartureAirportCode(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setDepartureAirportName(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setDepartureTerminal(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setDepartureGate(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setDepartureTimeScheduled(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          setDepartureTimeActual(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setDepartureTimeZone(paramCodedInputStreamMicro.readString());
          break;
        case 98:
          setArrivalAirportCode(paramCodedInputStreamMicro.readString());
          break;
        case 106:
          setArrivalAirportName(paramCodedInputStreamMicro.readString());
          break;
        case 114:
          setArrivalTerminal(paramCodedInputStreamMicro.readString());
          break;
        case 122:
          setArrivalGate(paramCodedInputStreamMicro.readString());
          break;
        case 130:
          setArrivalTimeScheduled(paramCodedInputStreamMicro.readString());
          break;
        case 138:
          setArrivalTimeActual(paramCodedInputStreamMicro.readString());
          break;
        case 146:
          setArrivalTimeZone(paramCodedInputStreamMicro.readString());
          break;
        case 152:
        }
        setStatusCode(paramCodedInputStreamMicro.readInt32());
      }
    }

    public FlightData setAirlineCode(String paramString)
    {
      this.hasAirlineCode = true;
      this.airlineCode_ = paramString;
      return this;
    }

    public FlightData setAirlineName(String paramString)
    {
      this.hasAirlineName = true;
      this.airlineName_ = paramString;
      return this;
    }

    public FlightData setArrivalAirportCode(String paramString)
    {
      this.hasArrivalAirportCode = true;
      this.arrivalAirportCode_ = paramString;
      return this;
    }

    public FlightData setArrivalAirportName(String paramString)
    {
      this.hasArrivalAirportName = true;
      this.arrivalAirportName_ = paramString;
      return this;
    }

    public FlightData setArrivalGate(String paramString)
    {
      this.hasArrivalGate = true;
      this.arrivalGate_ = paramString;
      return this;
    }

    public FlightData setArrivalTerminal(String paramString)
    {
      this.hasArrivalTerminal = true;
      this.arrivalTerminal_ = paramString;
      return this;
    }

    public FlightData setArrivalTimeActual(String paramString)
    {
      this.hasArrivalTimeActual = true;
      this.arrivalTimeActual_ = paramString;
      return this;
    }

    public FlightData setArrivalTimeScheduled(String paramString)
    {
      this.hasArrivalTimeScheduled = true;
      this.arrivalTimeScheduled_ = paramString;
      return this;
    }

    public FlightData setArrivalTimeZone(String paramString)
    {
      this.hasArrivalTimeZone = true;
      this.arrivalTimeZone_ = paramString;
      return this;
    }

    public FlightData setDepartureAirportCode(String paramString)
    {
      this.hasDepartureAirportCode = true;
      this.departureAirportCode_ = paramString;
      return this;
    }

    public FlightData setDepartureAirportName(String paramString)
    {
      this.hasDepartureAirportName = true;
      this.departureAirportName_ = paramString;
      return this;
    }

    public FlightData setDepartureGate(String paramString)
    {
      this.hasDepartureGate = true;
      this.departureGate_ = paramString;
      return this;
    }

    public FlightData setDepartureTerminal(String paramString)
    {
      this.hasDepartureTerminal = true;
      this.departureTerminal_ = paramString;
      return this;
    }

    public FlightData setDepartureTimeActual(String paramString)
    {
      this.hasDepartureTimeActual = true;
      this.departureTimeActual_ = paramString;
      return this;
    }

    public FlightData setDepartureTimeScheduled(String paramString)
    {
      this.hasDepartureTimeScheduled = true;
      this.departureTimeScheduled_ = paramString;
      return this;
    }

    public FlightData setDepartureTimeZone(String paramString)
    {
      this.hasDepartureTimeZone = true;
      this.departureTimeZone_ = paramString;
      return this;
    }

    public FlightData setFlightStatsId(String paramString)
    {
      this.hasFlightStatsId = true;
      this.flightStatsId_ = paramString;
      return this;
    }

    public FlightData setNumber(String paramString)
    {
      this.hasNumber = true;
      this.number_ = paramString;
      return this;
    }

    public FlightData setStatusCode(int paramInt)
    {
      this.hasStatusCode = true;
      this.statusCode_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAirlineCode())
        paramCodedOutputStreamMicro.writeString(1, getAirlineCode());
      if (hasAirlineName())
        paramCodedOutputStreamMicro.writeString(2, getAirlineName());
      if (hasNumber())
        paramCodedOutputStreamMicro.writeString(3, getNumber());
      if (hasFlightStatsId())
        paramCodedOutputStreamMicro.writeString(4, getFlightStatsId());
      if (hasDepartureAirportCode())
        paramCodedOutputStreamMicro.writeString(5, getDepartureAirportCode());
      if (hasDepartureAirportName())
        paramCodedOutputStreamMicro.writeString(6, getDepartureAirportName());
      if (hasDepartureTerminal())
        paramCodedOutputStreamMicro.writeString(7, getDepartureTerminal());
      if (hasDepartureGate())
        paramCodedOutputStreamMicro.writeString(8, getDepartureGate());
      if (hasDepartureTimeScheduled())
        paramCodedOutputStreamMicro.writeString(9, getDepartureTimeScheduled());
      if (hasDepartureTimeActual())
        paramCodedOutputStreamMicro.writeString(10, getDepartureTimeActual());
      if (hasDepartureTimeZone())
        paramCodedOutputStreamMicro.writeString(11, getDepartureTimeZone());
      if (hasArrivalAirportCode())
        paramCodedOutputStreamMicro.writeString(12, getArrivalAirportCode());
      if (hasArrivalAirportName())
        paramCodedOutputStreamMicro.writeString(13, getArrivalAirportName());
      if (hasArrivalTerminal())
        paramCodedOutputStreamMicro.writeString(14, getArrivalTerminal());
      if (hasArrivalGate())
        paramCodedOutputStreamMicro.writeString(15, getArrivalGate());
      if (hasArrivalTimeScheduled())
        paramCodedOutputStreamMicro.writeString(16, getArrivalTimeScheduled());
      if (hasArrivalTimeActual())
        paramCodedOutputStreamMicro.writeString(17, getArrivalTimeActual());
      if (hasArrivalTimeZone())
        paramCodedOutputStreamMicro.writeString(18, getArrivalTimeZone());
      if (hasStatusCode())
        paramCodedOutputStreamMicro.writeInt32(19, getStatusCode());
    }
  }

  public static final class FlightResult extends MessageMicro
  {
    public static final int AIRLINE_CODE_FIELD_NUMBER = 2;
    public static final int AIRLINE_NAME_FIELD_NUMBER = 3;
    public static final int DATE_FOR_URL_FIELD_NUMBER = 5;
    public static final int FLIGHT_FIELD_NUMBER = 1;
    public static final int NUMBER_FIELD_NUMBER = 4;
    public static final int UPDATE_TIME_FIELD_NUMBER = 6;
    private String airlineCode_ = "";
    private String airlineName_ = "";
    private int cachedSize = -1;
    private String dateForUrl_ = "";
    private List<EcoutezStructuredResponse.FlightData> flight_ = Collections.emptyList();
    private boolean hasAirlineCode;
    private boolean hasAirlineName;
    private boolean hasDateForUrl;
    private boolean hasNumber;
    private boolean hasUpdateTime;
    private String number_ = "";
    private String updateTime_ = "";

    public static FlightResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FlightResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FlightResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FlightResult)new FlightResult().mergeFrom(paramArrayOfByte);
    }

    public FlightResult addFlight(EcoutezStructuredResponse.FlightData paramFlightData)
    {
      if (paramFlightData == null)
        throw new NullPointerException();
      if (this.flight_.isEmpty())
        this.flight_ = new ArrayList();
      this.flight_.add(paramFlightData);
      return this;
    }

    public final FlightResult clear()
    {
      clearFlight();
      clearAirlineCode();
      clearAirlineName();
      clearNumber();
      clearDateForUrl();
      clearUpdateTime();
      this.cachedSize = -1;
      return this;
    }

    public FlightResult clearAirlineCode()
    {
      this.hasAirlineCode = false;
      this.airlineCode_ = "";
      return this;
    }

    public FlightResult clearAirlineName()
    {
      this.hasAirlineName = false;
      this.airlineName_ = "";
      return this;
    }

    public FlightResult clearDateForUrl()
    {
      this.hasDateForUrl = false;
      this.dateForUrl_ = "";
      return this;
    }

    public FlightResult clearFlight()
    {
      this.flight_ = Collections.emptyList();
      return this;
    }

    public FlightResult clearNumber()
    {
      this.hasNumber = false;
      this.number_ = "";
      return this;
    }

    public FlightResult clearUpdateTime()
    {
      this.hasUpdateTime = false;
      this.updateTime_ = "";
      return this;
    }

    public String getAirlineCode()
    {
      return this.airlineCode_;
    }

    public String getAirlineName()
    {
      return this.airlineName_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDateForUrl()
    {
      return this.dateForUrl_;
    }

    public EcoutezStructuredResponse.FlightData getFlight(int paramInt)
    {
      return (EcoutezStructuredResponse.FlightData)this.flight_.get(paramInt);
    }

    public int getFlightCount()
    {
      return this.flight_.size();
    }

    public List<EcoutezStructuredResponse.FlightData> getFlightList()
    {
      return this.flight_;
    }

    public String getNumber()
    {
      return this.number_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getFlightList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (EcoutezStructuredResponse.FlightData)localIterator.next());
      if (hasAirlineCode())
        i += CodedOutputStreamMicro.computeStringSize(2, getAirlineCode());
      if (hasAirlineName())
        i += CodedOutputStreamMicro.computeStringSize(3, getAirlineName());
      if (hasNumber())
        i += CodedOutputStreamMicro.computeStringSize(4, getNumber());
      if (hasDateForUrl())
        i += CodedOutputStreamMicro.computeStringSize(5, getDateForUrl());
      if (hasUpdateTime())
        i += CodedOutputStreamMicro.computeStringSize(6, getUpdateTime());
      this.cachedSize = i;
      return i;
    }

    public String getUpdateTime()
    {
      return this.updateTime_;
    }

    public boolean hasAirlineCode()
    {
      return this.hasAirlineCode;
    }

    public boolean hasAirlineName()
    {
      return this.hasAirlineName;
    }

    public boolean hasDateForUrl()
    {
      return this.hasDateForUrl;
    }

    public boolean hasNumber()
    {
      return this.hasNumber;
    }

    public boolean hasUpdateTime()
    {
      return this.hasUpdateTime;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FlightResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.FlightData localFlightData = new EcoutezStructuredResponse.FlightData();
          paramCodedInputStreamMicro.readMessage(localFlightData);
          addFlight(localFlightData);
          break;
        case 18:
          setAirlineCode(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setAirlineName(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setNumber(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setDateForUrl(paramCodedInputStreamMicro.readString());
          break;
        case 50:
        }
        setUpdateTime(paramCodedInputStreamMicro.readString());
      }
    }

    public FlightResult setAirlineCode(String paramString)
    {
      this.hasAirlineCode = true;
      this.airlineCode_ = paramString;
      return this;
    }

    public FlightResult setAirlineName(String paramString)
    {
      this.hasAirlineName = true;
      this.airlineName_ = paramString;
      return this;
    }

    public FlightResult setDateForUrl(String paramString)
    {
      this.hasDateForUrl = true;
      this.dateForUrl_ = paramString;
      return this;
    }

    public FlightResult setFlight(int paramInt, EcoutezStructuredResponse.FlightData paramFlightData)
    {
      if (paramFlightData == null)
        throw new NullPointerException();
      this.flight_.set(paramInt, paramFlightData);
      return this;
    }

    public FlightResult setNumber(String paramString)
    {
      this.hasNumber = true;
      this.number_ = paramString;
      return this;
    }

    public FlightResult setUpdateTime(String paramString)
    {
      this.hasUpdateTime = true;
      this.updateTime_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getFlightList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (EcoutezStructuredResponse.FlightData)localIterator.next());
      if (hasAirlineCode())
        paramCodedOutputStreamMicro.writeString(2, getAirlineCode());
      if (hasAirlineName())
        paramCodedOutputStreamMicro.writeString(3, getAirlineName());
      if (hasNumber())
        paramCodedOutputStreamMicro.writeString(4, getNumber());
      if (hasDateForUrl())
        paramCodedOutputStreamMicro.writeString(5, getDateForUrl());
      if (hasUpdateTime())
        paramCodedOutputStreamMicro.writeString(6, getUpdateTime());
    }
  }

  public static final class HourlyForecast extends MessageMicro
  {
    public static final int FORECAST_FIELD_NUMBER = 3;
    public static final int START_HOUR_FIELD_NUMBER = 2;
    public static final int UTC_DATE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<EcoutezStructuredResponse.WeatherState> forecast_ = Collections.emptyList();
    private boolean hasStartHour;
    private boolean hasUtcDate;
    private int startHour_ = 0;
    private String utcDate_ = "";

    public static HourlyForecast parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new HourlyForecast().mergeFrom(paramCodedInputStreamMicro);
    }

    public static HourlyForecast parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (HourlyForecast)new HourlyForecast().mergeFrom(paramArrayOfByte);
    }

    public HourlyForecast addForecast(EcoutezStructuredResponse.WeatherState paramWeatherState)
    {
      if (paramWeatherState == null)
        throw new NullPointerException();
      if (this.forecast_.isEmpty())
        this.forecast_ = new ArrayList();
      this.forecast_.add(paramWeatherState);
      return this;
    }

    public final HourlyForecast clear()
    {
      clearUtcDate();
      clearStartHour();
      clearForecast();
      this.cachedSize = -1;
      return this;
    }

    public HourlyForecast clearForecast()
    {
      this.forecast_ = Collections.emptyList();
      return this;
    }

    public HourlyForecast clearStartHour()
    {
      this.hasStartHour = false;
      this.startHour_ = 0;
      return this;
    }

    public HourlyForecast clearUtcDate()
    {
      this.hasUtcDate = false;
      this.utcDate_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.WeatherState getForecast(int paramInt)
    {
      return (EcoutezStructuredResponse.WeatherState)this.forecast_.get(paramInt);
    }

    public int getForecastCount()
    {
      return this.forecast_.size();
    }

    public List<EcoutezStructuredResponse.WeatherState> getForecastList()
    {
      return this.forecast_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUtcDate();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUtcDate());
      if (hasStartHour())
        i += CodedOutputStreamMicro.computeInt32Size(2, getStartHour());
      Iterator localIterator = getForecastList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (EcoutezStructuredResponse.WeatherState)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public int getStartHour()
    {
      return this.startHour_;
    }

    public String getUtcDate()
    {
      return this.utcDate_;
    }

    public boolean hasStartHour()
    {
      return this.hasStartHour;
    }

    public boolean hasUtcDate()
    {
      return this.hasUtcDate;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public HourlyForecast mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUtcDate(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setStartHour(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
        }
        EcoutezStructuredResponse.WeatherState localWeatherState = new EcoutezStructuredResponse.WeatherState();
        paramCodedInputStreamMicro.readMessage(localWeatherState);
        addForecast(localWeatherState);
      }
    }

    public HourlyForecast setForecast(int paramInt, EcoutezStructuredResponse.WeatherState paramWeatherState)
    {
      if (paramWeatherState == null)
        throw new NullPointerException();
      this.forecast_.set(paramInt, paramWeatherState);
      return this;
    }

    public HourlyForecast setStartHour(int paramInt)
    {
      this.hasStartHour = true;
      this.startHour_ = paramInt;
      return this;
    }

    public HourlyForecast setUtcDate(String paramString)
    {
      this.hasUtcDate = true;
      this.utcDate_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUtcDate())
        paramCodedOutputStreamMicro.writeString(1, getUtcDate());
      if (hasStartHour())
        paramCodedOutputStreamMicro.writeInt32(2, getStartHour());
      Iterator localIterator = getForecastList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (EcoutezStructuredResponse.WeatherState)localIterator.next());
    }
  }

  public static final class Hours extends MessageMicro
  {
    public static final int DAY_FIELD_NUMBER = 1;
    public static final int INTERVAL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private String day_ = "";
    private boolean hasDay;
    private List<String> interval_ = Collections.emptyList();

    public static Hours parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Hours().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Hours parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Hours)new Hours().mergeFrom(paramArrayOfByte);
    }

    public Hours addInterval(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.interval_.isEmpty())
        this.interval_ = new ArrayList();
      this.interval_.add(paramString);
      return this;
    }

    public final Hours clear()
    {
      clearDay();
      clearInterval();
      this.cachedSize = -1;
      return this;
    }

    public Hours clearDay()
    {
      this.hasDay = false;
      this.day_ = "";
      return this;
    }

    public Hours clearInterval()
    {
      this.interval_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDay()
    {
      return this.day_;
    }

    public String getInterval(int paramInt)
    {
      return (String)this.interval_.get(paramInt);
    }

    public int getIntervalCount()
    {
      return this.interval_.size();
    }

    public List<String> getIntervalList()
    {
      return this.interval_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDay();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getDay());
      int j = 0;
      Iterator localIterator = getIntervalList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getIntervalList().size();
      this.cachedSize = k;
      return k;
    }

    public boolean hasDay()
    {
      return this.hasDay;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Hours mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setDay(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        addInterval(paramCodedInputStreamMicro.readString());
      }
    }

    public Hours setDay(String paramString)
    {
      this.hasDay = true;
      this.day_ = paramString;
      return this;
    }

    public Hours setInterval(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.interval_.set(paramInt, paramString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDay())
        paramCodedOutputStreamMicro.writeString(1, getDay());
      Iterator localIterator = getIntervalList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(2, (String)localIterator.next());
    }
  }

  public static final class KnowledgeResult extends MessageMicro
  {
    public static final int DESCRIPTION_ATTRIBUTION_FIELD_NUMBER = 3;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int FACT_FIELD_NUMBER = 4;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private AttributionProtos.Attribution descriptionAttribution_ = null;
    private String description_ = "";
    private List<EcoutezStructuredResponse.Fact> fact_ = Collections.emptyList();
    private boolean hasDescription;
    private boolean hasDescriptionAttribution;
    private boolean hasTitle;
    private String title_ = "";

    public static KnowledgeResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new KnowledgeResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static KnowledgeResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (KnowledgeResult)new KnowledgeResult().mergeFrom(paramArrayOfByte);
    }

    public KnowledgeResult addFact(EcoutezStructuredResponse.Fact paramFact)
    {
      if (paramFact == null)
        throw new NullPointerException();
      if (this.fact_.isEmpty())
        this.fact_ = new ArrayList();
      this.fact_.add(paramFact);
      return this;
    }

    public final KnowledgeResult clear()
    {
      clearTitle();
      clearDescription();
      clearDescriptionAttribution();
      clearFact();
      this.cachedSize = -1;
      return this;
    }

    public KnowledgeResult clearDescription()
    {
      this.hasDescription = false;
      this.description_ = "";
      return this;
    }

    public KnowledgeResult clearDescriptionAttribution()
    {
      this.hasDescriptionAttribution = false;
      this.descriptionAttribution_ = null;
      return this;
    }

    public KnowledgeResult clearFact()
    {
      this.fact_ = Collections.emptyList();
      return this;
    }

    public KnowledgeResult clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDescription()
    {
      return this.description_;
    }

    public AttributionProtos.Attribution getDescriptionAttribution()
    {
      return this.descriptionAttribution_;
    }

    public EcoutezStructuredResponse.Fact getFact(int paramInt)
    {
      return (EcoutezStructuredResponse.Fact)this.fact_.get(paramInt);
    }

    public int getFactCount()
    {
      return this.fact_.size();
    }

    public List<EcoutezStructuredResponse.Fact> getFactList()
    {
      return this.fact_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTitle();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTitle());
      if (hasDescription())
        i += CodedOutputStreamMicro.computeStringSize(2, getDescription());
      if (hasDescriptionAttribution())
        i += CodedOutputStreamMicro.computeMessageSize(3, getDescriptionAttribution());
      Iterator localIterator = getFactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (EcoutezStructuredResponse.Fact)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public boolean hasDescription()
    {
      return this.hasDescription;
    }

    public boolean hasDescriptionAttribution()
    {
      return this.hasDescriptionAttribution;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public KnowledgeResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setDescription(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          AttributionProtos.Attribution localAttribution = new AttributionProtos.Attribution();
          paramCodedInputStreamMicro.readMessage(localAttribution);
          setDescriptionAttribution(localAttribution);
          break;
        case 34:
        }
        EcoutezStructuredResponse.Fact localFact = new EcoutezStructuredResponse.Fact();
        paramCodedInputStreamMicro.readMessage(localFact);
        addFact(localFact);
      }
    }

    public KnowledgeResult setDescription(String paramString)
    {
      this.hasDescription = true;
      this.description_ = paramString;
      return this;
    }

    public KnowledgeResult setDescriptionAttribution(AttributionProtos.Attribution paramAttribution)
    {
      if (paramAttribution == null)
        throw new NullPointerException();
      this.hasDescriptionAttribution = true;
      this.descriptionAttribution_ = paramAttribution;
      return this;
    }

    public KnowledgeResult setFact(int paramInt, EcoutezStructuredResponse.Fact paramFact)
    {
      if (paramFact == null)
        throw new NullPointerException();
      this.fact_.set(paramInt, paramFact);
      return this;
    }

    public KnowledgeResult setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(1, getTitle());
      if (hasDescription())
        paramCodedOutputStreamMicro.writeString(2, getDescription());
      if (hasDescriptionAttribution())
        paramCodedOutputStreamMicro.writeMessage(3, getDescriptionAttribution());
      Iterator localIterator = getFactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (EcoutezStructuredResponse.Fact)localIterator.next());
    }
  }

  public static final class Logo extends MessageMicro
  {
    public static final int HEIGHT_FIELD_NUMBER = 3;
    public static final int URL_FIELD_NUMBER = 1;
    public static final int WIDTH_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasHeight;
    private boolean hasUrl;
    private boolean hasWidth;
    private int height_ = 0;
    private String url_ = "";
    private int width_ = 0;

    public static Logo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Logo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Logo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Logo)new Logo().mergeFrom(paramArrayOfByte);
    }

    public final Logo clear()
    {
      clearUrl();
      clearWidth();
      clearHeight();
      this.cachedSize = -1;
      return this;
    }

    public Logo clearHeight()
    {
      this.hasHeight = false;
      this.height_ = 0;
      return this;
    }

    public Logo clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public Logo clearWidth()
    {
      this.hasWidth = false;
      this.width_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getHeight()
    {
      return this.height_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUrl();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
      if (hasWidth())
        i += CodedOutputStreamMicro.computeInt32Size(2, getWidth());
      if (hasHeight())
        i += CodedOutputStreamMicro.computeInt32Size(3, getHeight());
      this.cachedSize = i;
      return i;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public int getWidth()
    {
      return this.width_;
    }

    public boolean hasHeight()
    {
      return this.hasHeight;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public boolean hasWidth()
    {
      return this.hasWidth;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Logo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setWidth(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
        }
        setHeight(paramCodedInputStreamMicro.readInt32());
      }
    }

    public Logo setHeight(int paramInt)
    {
      this.hasHeight = true;
      this.height_ = paramInt;
      return this;
    }

    public Logo setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public Logo setWidth(int paramInt)
    {
      this.hasWidth = true;
      this.width_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(1, getUrl());
      if (hasWidth())
        paramCodedOutputStreamMicro.writeInt32(2, getWidth());
      if (hasHeight())
        paramCodedOutputStreamMicro.writeInt32(3, getHeight());
    }
  }

  public static final class Match extends MessageMicro
  {
    public static final int BASEBALL_FIELD_NUMBER = 18;
    public static final int BOX_URL_FIELD_NUMBER = 14;
    public static final int CURRENT_PERIOD_NUM_FIELD_NUMBER = 6;
    public static final int DEPRECATED_FIRST_TEAM_LOGO_URL_FIELD_NUMBER = 19;
    public static final int DEPRECATED_SECOND_TEAM_LOGO_URL_FIELD_NUMBER = 20;
    public static final int FIRST_IS_WINNER_FIELD_NUMBER = 9;
    public static final int FIRST_SCORE_FIELD_NUMBER = 8;
    public static final int FIRST_TEAM_FIELD_NUMBER = 7;
    public static final int FIRST_TEAM_LOGO_FIELD_NUMBER = 21;
    public static final int FIRST_TEAM_SHORT_NAME_FIELD_NUMBER = 24;
    public static final int FORUM_URL_FIELD_NUMBER = 27;
    public static final int IS_HIDDEN_FIELD_NUMBER = 2;
    public static final int IS_HIDDEN_SECONDARY_FIELD_NUMBER = 3;
    public static final int LIVE_STREAM_URL_FIELD_NUMBER = 26;
    public static final int LIVE_UPDATE_URL_FIELD_NUMBER = 25;
    public static final int MATCH_STATUS_CANCELLED = 4;
    public static final int MATCH_STATUS_DELAYED = 5;
    public static final int MATCH_STATUS_DONE = 0;
    public static final int MATCH_STATUS_IN_PROGRESS = 1;
    public static final int MATCH_STATUS_NOT_STARTED = 2;
    public static final int MATCH_STATUS_POSTPONED = 3;
    public static final int MATCH_STATUS_SUSPENDED = 7;
    public static final int MATCH_STATUS_TBD = 6;
    public static final int MATCH_STATUS_WITHDRAWN = 8;
    public static final int PERIOD_FIELD_NUMBER = 17;
    public static final int PREVIEW_URL_FIELD_NUMBER = 15;
    public static final int RECAP_URL_FIELD_NUMBER = 13;
    public static final int SECOND_IS_WINNER_FIELD_NUMBER = 12;
    public static final int SECOND_SCORE_FIELD_NUMBER = 11;
    public static final int SECOND_TEAM_FIELD_NUMBER = 10;
    public static final int SECOND_TEAM_LOGO_FIELD_NUMBER = 22;
    public static final int SECOND_TEAM_SHORT_NAME_FIELD_NUMBER = 23;
    public static final int START_TIMESTAMP_FIELD_NUMBER = 4;
    public static final int START_TIME_FIELD_NUMBER = 5;
    public static final int STATUS_FIELD_NUMBER = 1;
    public static final int TICKETS_URL_FIELD_NUMBER = 16;
    private EcoutezStructuredResponse.BaseballMatch baseball_ = null;
    private String boxUrl_ = "";
    private int cachedSize = -1;
    private int currentPeriodNum_ = 0;
    private String dEPRECATEDFirstTeamLogoUrl_ = "";
    private String dEPRECATEDSecondTeamLogoUrl_ = "";
    private boolean firstIsWinner_ = false;
    private String firstScore_ = "";
    private EcoutezStructuredResponse.Logo firstTeamLogo_ = null;
    private String firstTeamShortName_ = "";
    private String firstTeam_ = "";
    private String forumUrl_ = "";
    private boolean hasBaseball;
    private boolean hasBoxUrl;
    private boolean hasCurrentPeriodNum;
    private boolean hasDEPRECATEDFirstTeamLogoUrl;
    private boolean hasDEPRECATEDSecondTeamLogoUrl;
    private boolean hasFirstIsWinner;
    private boolean hasFirstScore;
    private boolean hasFirstTeam;
    private boolean hasFirstTeamLogo;
    private boolean hasFirstTeamShortName;
    private boolean hasForumUrl;
    private boolean hasIsHidden;
    private boolean hasIsHiddenSecondary;
    private boolean hasLiveStreamUrl;
    private boolean hasLiveUpdateUrl;
    private boolean hasPreviewUrl;
    private boolean hasRecapUrl;
    private boolean hasSecondIsWinner;
    private boolean hasSecondScore;
    private boolean hasSecondTeam;
    private boolean hasSecondTeamLogo;
    private boolean hasSecondTeamShortName;
    private boolean hasStartTime;
    private boolean hasStartTimestamp;
    private boolean hasStatus;
    private boolean hasTicketsUrl;
    private boolean isHiddenSecondary_ = false;
    private boolean isHidden_ = false;
    private String liveStreamUrl_ = "";
    private String liveUpdateUrl_ = "";
    private List<EcoutezStructuredResponse.Period> period_ = Collections.emptyList();
    private String previewUrl_ = "";
    private String recapUrl_ = "";
    private boolean secondIsWinner_ = false;
    private String secondScore_ = "";
    private EcoutezStructuredResponse.Logo secondTeamLogo_ = null;
    private String secondTeamShortName_ = "";
    private String secondTeam_ = "";
    private String startTime_ = "";
    private long startTimestamp_ = 0L;
    private int status_ = 0;
    private String ticketsUrl_ = "";

    public static Match parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Match().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Match parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Match)new Match().mergeFrom(paramArrayOfByte);
    }

    public Match addPeriod(EcoutezStructuredResponse.Period paramPeriod)
    {
      if (paramPeriod == null)
        throw new NullPointerException();
      if (this.period_.isEmpty())
        this.period_ = new ArrayList();
      this.period_.add(paramPeriod);
      return this;
    }

    public final Match clear()
    {
      clearStatus();
      clearIsHidden();
      clearIsHiddenSecondary();
      clearStartTimestamp();
      clearStartTime();
      clearCurrentPeriodNum();
      clearFirstTeam();
      clearFirstTeamShortName();
      clearDEPRECATEDFirstTeamLogoUrl();
      clearFirstTeamLogo();
      clearFirstScore();
      clearFirstIsWinner();
      clearSecondTeam();
      clearSecondTeamShortName();
      clearDEPRECATEDSecondTeamLogoUrl();
      clearSecondTeamLogo();
      clearSecondScore();
      clearSecondIsWinner();
      clearRecapUrl();
      clearBoxUrl();
      clearLiveUpdateUrl();
      clearLiveStreamUrl();
      clearPreviewUrl();
      clearTicketsUrl();
      clearForumUrl();
      clearPeriod();
      clearBaseball();
      this.cachedSize = -1;
      return this;
    }

    public Match clearBaseball()
    {
      this.hasBaseball = false;
      this.baseball_ = null;
      return this;
    }

    public Match clearBoxUrl()
    {
      this.hasBoxUrl = false;
      this.boxUrl_ = "";
      return this;
    }

    public Match clearCurrentPeriodNum()
    {
      this.hasCurrentPeriodNum = false;
      this.currentPeriodNum_ = 0;
      return this;
    }

    public Match clearDEPRECATEDFirstTeamLogoUrl()
    {
      this.hasDEPRECATEDFirstTeamLogoUrl = false;
      this.dEPRECATEDFirstTeamLogoUrl_ = "";
      return this;
    }

    public Match clearDEPRECATEDSecondTeamLogoUrl()
    {
      this.hasDEPRECATEDSecondTeamLogoUrl = false;
      this.dEPRECATEDSecondTeamLogoUrl_ = "";
      return this;
    }

    public Match clearFirstIsWinner()
    {
      this.hasFirstIsWinner = false;
      this.firstIsWinner_ = false;
      return this;
    }

    public Match clearFirstScore()
    {
      this.hasFirstScore = false;
      this.firstScore_ = "";
      return this;
    }

    public Match clearFirstTeam()
    {
      this.hasFirstTeam = false;
      this.firstTeam_ = "";
      return this;
    }

    public Match clearFirstTeamLogo()
    {
      this.hasFirstTeamLogo = false;
      this.firstTeamLogo_ = null;
      return this;
    }

    public Match clearFirstTeamShortName()
    {
      this.hasFirstTeamShortName = false;
      this.firstTeamShortName_ = "";
      return this;
    }

    public Match clearForumUrl()
    {
      this.hasForumUrl = false;
      this.forumUrl_ = "";
      return this;
    }

    public Match clearIsHidden()
    {
      this.hasIsHidden = false;
      this.isHidden_ = false;
      return this;
    }

    public Match clearIsHiddenSecondary()
    {
      this.hasIsHiddenSecondary = false;
      this.isHiddenSecondary_ = false;
      return this;
    }

    public Match clearLiveStreamUrl()
    {
      this.hasLiveStreamUrl = false;
      this.liveStreamUrl_ = "";
      return this;
    }

    public Match clearLiveUpdateUrl()
    {
      this.hasLiveUpdateUrl = false;
      this.liveUpdateUrl_ = "";
      return this;
    }

    public Match clearPeriod()
    {
      this.period_ = Collections.emptyList();
      return this;
    }

    public Match clearPreviewUrl()
    {
      this.hasPreviewUrl = false;
      this.previewUrl_ = "";
      return this;
    }

    public Match clearRecapUrl()
    {
      this.hasRecapUrl = false;
      this.recapUrl_ = "";
      return this;
    }

    public Match clearSecondIsWinner()
    {
      this.hasSecondIsWinner = false;
      this.secondIsWinner_ = false;
      return this;
    }

    public Match clearSecondScore()
    {
      this.hasSecondScore = false;
      this.secondScore_ = "";
      return this;
    }

    public Match clearSecondTeam()
    {
      this.hasSecondTeam = false;
      this.secondTeam_ = "";
      return this;
    }

    public Match clearSecondTeamLogo()
    {
      this.hasSecondTeamLogo = false;
      this.secondTeamLogo_ = null;
      return this;
    }

    public Match clearSecondTeamShortName()
    {
      this.hasSecondTeamShortName = false;
      this.secondTeamShortName_ = "";
      return this;
    }

    public Match clearStartTime()
    {
      this.hasStartTime = false;
      this.startTime_ = "";
      return this;
    }

    public Match clearStartTimestamp()
    {
      this.hasStartTimestamp = false;
      this.startTimestamp_ = 0L;
      return this;
    }

    public Match clearStatus()
    {
      this.hasStatus = false;
      this.status_ = 0;
      return this;
    }

    public Match clearTicketsUrl()
    {
      this.hasTicketsUrl = false;
      this.ticketsUrl_ = "";
      return this;
    }

    public EcoutezStructuredResponse.BaseballMatch getBaseball()
    {
      return this.baseball_;
    }

    public String getBoxUrl()
    {
      return this.boxUrl_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getCurrentPeriodNum()
    {
      return this.currentPeriodNum_;
    }

    public String getDEPRECATEDFirstTeamLogoUrl()
    {
      return this.dEPRECATEDFirstTeamLogoUrl_;
    }

    public String getDEPRECATEDSecondTeamLogoUrl()
    {
      return this.dEPRECATEDSecondTeamLogoUrl_;
    }

    public boolean getFirstIsWinner()
    {
      return this.firstIsWinner_;
    }

    public String getFirstScore()
    {
      return this.firstScore_;
    }

    public String getFirstTeam()
    {
      return this.firstTeam_;
    }

    public EcoutezStructuredResponse.Logo getFirstTeamLogo()
    {
      return this.firstTeamLogo_;
    }

    public String getFirstTeamShortName()
    {
      return this.firstTeamShortName_;
    }

    public String getForumUrl()
    {
      return this.forumUrl_;
    }

    public boolean getIsHidden()
    {
      return this.isHidden_;
    }

    public boolean getIsHiddenSecondary()
    {
      return this.isHiddenSecondary_;
    }

    public String getLiveStreamUrl()
    {
      return this.liveStreamUrl_;
    }

    public String getLiveUpdateUrl()
    {
      return this.liveUpdateUrl_;
    }

    public EcoutezStructuredResponse.Period getPeriod(int paramInt)
    {
      return (EcoutezStructuredResponse.Period)this.period_.get(paramInt);
    }

    public int getPeriodCount()
    {
      return this.period_.size();
    }

    public List<EcoutezStructuredResponse.Period> getPeriodList()
    {
      return this.period_;
    }

    public String getPreviewUrl()
    {
      return this.previewUrl_;
    }

    public String getRecapUrl()
    {
      return this.recapUrl_;
    }

    public boolean getSecondIsWinner()
    {
      return this.secondIsWinner_;
    }

    public String getSecondScore()
    {
      return this.secondScore_;
    }

    public String getSecondTeam()
    {
      return this.secondTeam_;
    }

    public EcoutezStructuredResponse.Logo getSecondTeamLogo()
    {
      return this.secondTeamLogo_;
    }

    public String getSecondTeamShortName()
    {
      return this.secondTeamShortName_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStatus();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getStatus());
      if (hasIsHidden())
        i += CodedOutputStreamMicro.computeBoolSize(2, getIsHidden());
      if (hasIsHiddenSecondary())
        i += CodedOutputStreamMicro.computeBoolSize(3, getIsHiddenSecondary());
      if (hasStartTimestamp())
        i += CodedOutputStreamMicro.computeInt64Size(4, getStartTimestamp());
      if (hasStartTime())
        i += CodedOutputStreamMicro.computeStringSize(5, getStartTime());
      if (hasCurrentPeriodNum())
        i += CodedOutputStreamMicro.computeInt32Size(6, getCurrentPeriodNum());
      if (hasFirstTeam())
        i += CodedOutputStreamMicro.computeStringSize(7, getFirstTeam());
      if (hasFirstScore())
        i += CodedOutputStreamMicro.computeStringSize(8, getFirstScore());
      if (hasFirstIsWinner())
        i += CodedOutputStreamMicro.computeBoolSize(9, getFirstIsWinner());
      if (hasSecondTeam())
        i += CodedOutputStreamMicro.computeStringSize(10, getSecondTeam());
      if (hasSecondScore())
        i += CodedOutputStreamMicro.computeStringSize(11, getSecondScore());
      if (hasSecondIsWinner())
        i += CodedOutputStreamMicro.computeBoolSize(12, getSecondIsWinner());
      if (hasRecapUrl())
        i += CodedOutputStreamMicro.computeStringSize(13, getRecapUrl());
      if (hasBoxUrl())
        i += CodedOutputStreamMicro.computeStringSize(14, getBoxUrl());
      if (hasPreviewUrl())
        i += CodedOutputStreamMicro.computeStringSize(15, getPreviewUrl());
      if (hasTicketsUrl())
        i += CodedOutputStreamMicro.computeStringSize(16, getTicketsUrl());
      Iterator localIterator = getPeriodList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(17, (EcoutezStructuredResponse.Period)localIterator.next());
      if (hasBaseball())
        i += CodedOutputStreamMicro.computeMessageSize(18, getBaseball());
      if (hasDEPRECATEDFirstTeamLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(19, getDEPRECATEDFirstTeamLogoUrl());
      if (hasDEPRECATEDSecondTeamLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(20, getDEPRECATEDSecondTeamLogoUrl());
      if (hasFirstTeamLogo())
        i += CodedOutputStreamMicro.computeMessageSize(21, getFirstTeamLogo());
      if (hasSecondTeamLogo())
        i += CodedOutputStreamMicro.computeMessageSize(22, getSecondTeamLogo());
      if (hasSecondTeamShortName())
        i += CodedOutputStreamMicro.computeStringSize(23, getSecondTeamShortName());
      if (hasFirstTeamShortName())
        i += CodedOutputStreamMicro.computeStringSize(24, getFirstTeamShortName());
      if (hasLiveUpdateUrl())
        i += CodedOutputStreamMicro.computeStringSize(25, getLiveUpdateUrl());
      if (hasLiveStreamUrl())
        i += CodedOutputStreamMicro.computeStringSize(26, getLiveStreamUrl());
      if (hasForumUrl())
        i += CodedOutputStreamMicro.computeStringSize(27, getForumUrl());
      this.cachedSize = i;
      return i;
    }

    public String getStartTime()
    {
      return this.startTime_;
    }

    public long getStartTimestamp()
    {
      return this.startTimestamp_;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public String getTicketsUrl()
    {
      return this.ticketsUrl_;
    }

    public boolean hasBaseball()
    {
      return this.hasBaseball;
    }

    public boolean hasBoxUrl()
    {
      return this.hasBoxUrl;
    }

    public boolean hasCurrentPeriodNum()
    {
      return this.hasCurrentPeriodNum;
    }

    public boolean hasDEPRECATEDFirstTeamLogoUrl()
    {
      return this.hasDEPRECATEDFirstTeamLogoUrl;
    }

    public boolean hasDEPRECATEDSecondTeamLogoUrl()
    {
      return this.hasDEPRECATEDSecondTeamLogoUrl;
    }

    public boolean hasFirstIsWinner()
    {
      return this.hasFirstIsWinner;
    }

    public boolean hasFirstScore()
    {
      return this.hasFirstScore;
    }

    public boolean hasFirstTeam()
    {
      return this.hasFirstTeam;
    }

    public boolean hasFirstTeamLogo()
    {
      return this.hasFirstTeamLogo;
    }

    public boolean hasFirstTeamShortName()
    {
      return this.hasFirstTeamShortName;
    }

    public boolean hasForumUrl()
    {
      return this.hasForumUrl;
    }

    public boolean hasIsHidden()
    {
      return this.hasIsHidden;
    }

    public boolean hasIsHiddenSecondary()
    {
      return this.hasIsHiddenSecondary;
    }

    public boolean hasLiveStreamUrl()
    {
      return this.hasLiveStreamUrl;
    }

    public boolean hasLiveUpdateUrl()
    {
      return this.hasLiveUpdateUrl;
    }

    public boolean hasPreviewUrl()
    {
      return this.hasPreviewUrl;
    }

    public boolean hasRecapUrl()
    {
      return this.hasRecapUrl;
    }

    public boolean hasSecondIsWinner()
    {
      return this.hasSecondIsWinner;
    }

    public boolean hasSecondScore()
    {
      return this.hasSecondScore;
    }

    public boolean hasSecondTeam()
    {
      return this.hasSecondTeam;
    }

    public boolean hasSecondTeamLogo()
    {
      return this.hasSecondTeamLogo;
    }

    public boolean hasSecondTeamShortName()
    {
      return this.hasSecondTeamShortName;
    }

    public boolean hasStartTime()
    {
      return this.hasStartTime;
    }

    public boolean hasStartTimestamp()
    {
      return this.hasStartTimestamp;
    }

    public boolean hasStatus()
    {
      return this.hasStatus;
    }

    public boolean hasTicketsUrl()
    {
      return this.hasTicketsUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Match mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setIsHidden(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
          setIsHiddenSecondary(paramCodedInputStreamMicro.readBool());
          break;
        case 32:
          setStartTimestamp(paramCodedInputStreamMicro.readInt64());
          break;
        case 42:
          setStartTime(paramCodedInputStreamMicro.readString());
          break;
        case 48:
          setCurrentPeriodNum(paramCodedInputStreamMicro.readInt32());
          break;
        case 58:
          setFirstTeam(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setFirstScore(paramCodedInputStreamMicro.readString());
          break;
        case 72:
          setFirstIsWinner(paramCodedInputStreamMicro.readBool());
          break;
        case 82:
          setSecondTeam(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setSecondScore(paramCodedInputStreamMicro.readString());
          break;
        case 96:
          setSecondIsWinner(paramCodedInputStreamMicro.readBool());
          break;
        case 106:
          setRecapUrl(paramCodedInputStreamMicro.readString());
          break;
        case 114:
          setBoxUrl(paramCodedInputStreamMicro.readString());
          break;
        case 122:
          setPreviewUrl(paramCodedInputStreamMicro.readString());
          break;
        case 130:
          setTicketsUrl(paramCodedInputStreamMicro.readString());
          break;
        case 138:
          EcoutezStructuredResponse.Period localPeriod = new EcoutezStructuredResponse.Period();
          paramCodedInputStreamMicro.readMessage(localPeriod);
          addPeriod(localPeriod);
          break;
        case 146:
          EcoutezStructuredResponse.BaseballMatch localBaseballMatch = new EcoutezStructuredResponse.BaseballMatch();
          paramCodedInputStreamMicro.readMessage(localBaseballMatch);
          setBaseball(localBaseballMatch);
          break;
        case 154:
          setDEPRECATEDFirstTeamLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 162:
          setDEPRECATEDSecondTeamLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 170:
          EcoutezStructuredResponse.Logo localLogo2 = new EcoutezStructuredResponse.Logo();
          paramCodedInputStreamMicro.readMessage(localLogo2);
          setFirstTeamLogo(localLogo2);
          break;
        case 178:
          EcoutezStructuredResponse.Logo localLogo1 = new EcoutezStructuredResponse.Logo();
          paramCodedInputStreamMicro.readMessage(localLogo1);
          setSecondTeamLogo(localLogo1);
          break;
        case 186:
          setSecondTeamShortName(paramCodedInputStreamMicro.readString());
          break;
        case 194:
          setFirstTeamShortName(paramCodedInputStreamMicro.readString());
          break;
        case 202:
          setLiveUpdateUrl(paramCodedInputStreamMicro.readString());
          break;
        case 210:
          setLiveStreamUrl(paramCodedInputStreamMicro.readString());
          break;
        case 218:
        }
        setForumUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public Match setBaseball(EcoutezStructuredResponse.BaseballMatch paramBaseballMatch)
    {
      if (paramBaseballMatch == null)
        throw new NullPointerException();
      this.hasBaseball = true;
      this.baseball_ = paramBaseballMatch;
      return this;
    }

    public Match setBoxUrl(String paramString)
    {
      this.hasBoxUrl = true;
      this.boxUrl_ = paramString;
      return this;
    }

    public Match setCurrentPeriodNum(int paramInt)
    {
      this.hasCurrentPeriodNum = true;
      this.currentPeriodNum_ = paramInt;
      return this;
    }

    public Match setDEPRECATEDFirstTeamLogoUrl(String paramString)
    {
      this.hasDEPRECATEDFirstTeamLogoUrl = true;
      this.dEPRECATEDFirstTeamLogoUrl_ = paramString;
      return this;
    }

    public Match setDEPRECATEDSecondTeamLogoUrl(String paramString)
    {
      this.hasDEPRECATEDSecondTeamLogoUrl = true;
      this.dEPRECATEDSecondTeamLogoUrl_ = paramString;
      return this;
    }

    public Match setFirstIsWinner(boolean paramBoolean)
    {
      this.hasFirstIsWinner = true;
      this.firstIsWinner_ = paramBoolean;
      return this;
    }

    public Match setFirstScore(String paramString)
    {
      this.hasFirstScore = true;
      this.firstScore_ = paramString;
      return this;
    }

    public Match setFirstTeam(String paramString)
    {
      this.hasFirstTeam = true;
      this.firstTeam_ = paramString;
      return this;
    }

    public Match setFirstTeamLogo(EcoutezStructuredResponse.Logo paramLogo)
    {
      if (paramLogo == null)
        throw new NullPointerException();
      this.hasFirstTeamLogo = true;
      this.firstTeamLogo_ = paramLogo;
      return this;
    }

    public Match setFirstTeamShortName(String paramString)
    {
      this.hasFirstTeamShortName = true;
      this.firstTeamShortName_ = paramString;
      return this;
    }

    public Match setForumUrl(String paramString)
    {
      this.hasForumUrl = true;
      this.forumUrl_ = paramString;
      return this;
    }

    public Match setIsHidden(boolean paramBoolean)
    {
      this.hasIsHidden = true;
      this.isHidden_ = paramBoolean;
      return this;
    }

    public Match setIsHiddenSecondary(boolean paramBoolean)
    {
      this.hasIsHiddenSecondary = true;
      this.isHiddenSecondary_ = paramBoolean;
      return this;
    }

    public Match setLiveStreamUrl(String paramString)
    {
      this.hasLiveStreamUrl = true;
      this.liveStreamUrl_ = paramString;
      return this;
    }

    public Match setLiveUpdateUrl(String paramString)
    {
      this.hasLiveUpdateUrl = true;
      this.liveUpdateUrl_ = paramString;
      return this;
    }

    public Match setPeriod(int paramInt, EcoutezStructuredResponse.Period paramPeriod)
    {
      if (paramPeriod == null)
        throw new NullPointerException();
      this.period_.set(paramInt, paramPeriod);
      return this;
    }

    public Match setPreviewUrl(String paramString)
    {
      this.hasPreviewUrl = true;
      this.previewUrl_ = paramString;
      return this;
    }

    public Match setRecapUrl(String paramString)
    {
      this.hasRecapUrl = true;
      this.recapUrl_ = paramString;
      return this;
    }

    public Match setSecondIsWinner(boolean paramBoolean)
    {
      this.hasSecondIsWinner = true;
      this.secondIsWinner_ = paramBoolean;
      return this;
    }

    public Match setSecondScore(String paramString)
    {
      this.hasSecondScore = true;
      this.secondScore_ = paramString;
      return this;
    }

    public Match setSecondTeam(String paramString)
    {
      this.hasSecondTeam = true;
      this.secondTeam_ = paramString;
      return this;
    }

    public Match setSecondTeamLogo(EcoutezStructuredResponse.Logo paramLogo)
    {
      if (paramLogo == null)
        throw new NullPointerException();
      this.hasSecondTeamLogo = true;
      this.secondTeamLogo_ = paramLogo;
      return this;
    }

    public Match setSecondTeamShortName(String paramString)
    {
      this.hasSecondTeamShortName = true;
      this.secondTeamShortName_ = paramString;
      return this;
    }

    public Match setStartTime(String paramString)
    {
      this.hasStartTime = true;
      this.startTime_ = paramString;
      return this;
    }

    public Match setStartTimestamp(long paramLong)
    {
      this.hasStartTimestamp = true;
      this.startTimestamp_ = paramLong;
      return this;
    }

    public Match setStatus(int paramInt)
    {
      this.hasStatus = true;
      this.status_ = paramInt;
      return this;
    }

    public Match setTicketsUrl(String paramString)
    {
      this.hasTicketsUrl = true;
      this.ticketsUrl_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStatus())
        paramCodedOutputStreamMicro.writeInt32(1, getStatus());
      if (hasIsHidden())
        paramCodedOutputStreamMicro.writeBool(2, getIsHidden());
      if (hasIsHiddenSecondary())
        paramCodedOutputStreamMicro.writeBool(3, getIsHiddenSecondary());
      if (hasStartTimestamp())
        paramCodedOutputStreamMicro.writeInt64(4, getStartTimestamp());
      if (hasStartTime())
        paramCodedOutputStreamMicro.writeString(5, getStartTime());
      if (hasCurrentPeriodNum())
        paramCodedOutputStreamMicro.writeInt32(6, getCurrentPeriodNum());
      if (hasFirstTeam())
        paramCodedOutputStreamMicro.writeString(7, getFirstTeam());
      if (hasFirstScore())
        paramCodedOutputStreamMicro.writeString(8, getFirstScore());
      if (hasFirstIsWinner())
        paramCodedOutputStreamMicro.writeBool(9, getFirstIsWinner());
      if (hasSecondTeam())
        paramCodedOutputStreamMicro.writeString(10, getSecondTeam());
      if (hasSecondScore())
        paramCodedOutputStreamMicro.writeString(11, getSecondScore());
      if (hasSecondIsWinner())
        paramCodedOutputStreamMicro.writeBool(12, getSecondIsWinner());
      if (hasRecapUrl())
        paramCodedOutputStreamMicro.writeString(13, getRecapUrl());
      if (hasBoxUrl())
        paramCodedOutputStreamMicro.writeString(14, getBoxUrl());
      if (hasPreviewUrl())
        paramCodedOutputStreamMicro.writeString(15, getPreviewUrl());
      if (hasTicketsUrl())
        paramCodedOutputStreamMicro.writeString(16, getTicketsUrl());
      Iterator localIterator = getPeriodList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(17, (EcoutezStructuredResponse.Period)localIterator.next());
      if (hasBaseball())
        paramCodedOutputStreamMicro.writeMessage(18, getBaseball());
      if (hasDEPRECATEDFirstTeamLogoUrl())
        paramCodedOutputStreamMicro.writeString(19, getDEPRECATEDFirstTeamLogoUrl());
      if (hasDEPRECATEDSecondTeamLogoUrl())
        paramCodedOutputStreamMicro.writeString(20, getDEPRECATEDSecondTeamLogoUrl());
      if (hasFirstTeamLogo())
        paramCodedOutputStreamMicro.writeMessage(21, getFirstTeamLogo());
      if (hasSecondTeamLogo())
        paramCodedOutputStreamMicro.writeMessage(22, getSecondTeamLogo());
      if (hasSecondTeamShortName())
        paramCodedOutputStreamMicro.writeString(23, getSecondTeamShortName());
      if (hasFirstTeamShortName())
        paramCodedOutputStreamMicro.writeString(24, getFirstTeamShortName());
      if (hasLiveUpdateUrl())
        paramCodedOutputStreamMicro.writeString(25, getLiveUpdateUrl());
      if (hasLiveStreamUrl())
        paramCodedOutputStreamMicro.writeString(26, getLiveStreamUrl());
      if (hasForumUrl())
        paramCodedOutputStreamMicro.writeString(27, getForumUrl());
    }
  }

  public static final class MatchList extends MessageMicro
  {
    public static final int HAS_HIDDEN_MATCHES_FIELD_NUMBER = 1;
    public static final int HAS_HIDDEN_MATCHES_SECONDARY_FIELD_NUMBER = 2;
    public static final int MATCH_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasHasHiddenMatches;
    private boolean hasHasHiddenMatchesSecondary;
    private boolean hasHiddenMatchesSecondary_ = false;
    private boolean hasHiddenMatches_ = false;
    private List<EcoutezStructuredResponse.Match> match_ = Collections.emptyList();

    public static MatchList parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MatchList().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MatchList parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MatchList)new MatchList().mergeFrom(paramArrayOfByte);
    }

    public MatchList addMatch(EcoutezStructuredResponse.Match paramMatch)
    {
      if (paramMatch == null)
        throw new NullPointerException();
      if (this.match_.isEmpty())
        this.match_ = new ArrayList();
      this.match_.add(paramMatch);
      return this;
    }

    public final MatchList clear()
    {
      clearHasHiddenMatches();
      clearHasHiddenMatchesSecondary();
      clearMatch();
      this.cachedSize = -1;
      return this;
    }

    public MatchList clearHasHiddenMatches()
    {
      this.hasHasHiddenMatches = false;
      this.hasHiddenMatches_ = false;
      return this;
    }

    public MatchList clearHasHiddenMatchesSecondary()
    {
      this.hasHasHiddenMatchesSecondary = false;
      this.hasHiddenMatchesSecondary_ = false;
      return this;
    }

    public MatchList clearMatch()
    {
      this.match_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public boolean getHasHiddenMatches()
    {
      return this.hasHiddenMatches_;
    }

    public boolean getHasHiddenMatchesSecondary()
    {
      return this.hasHiddenMatchesSecondary_;
    }

    public EcoutezStructuredResponse.Match getMatch(int paramInt)
    {
      return (EcoutezStructuredResponse.Match)this.match_.get(paramInt);
    }

    public int getMatchCount()
    {
      return this.match_.size();
    }

    public List<EcoutezStructuredResponse.Match> getMatchList()
    {
      return this.match_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasHasHiddenMatches();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBoolSize(1, getHasHiddenMatches());
      if (hasHasHiddenMatchesSecondary())
        i += CodedOutputStreamMicro.computeBoolSize(2, getHasHiddenMatchesSecondary());
      Iterator localIterator = getMatchList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (EcoutezStructuredResponse.Match)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasHasHiddenMatches()
    {
      return this.hasHasHiddenMatches;
    }

    public boolean hasHasHiddenMatchesSecondary()
    {
      return this.hasHasHiddenMatchesSecondary;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MatchList mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setHasHiddenMatches(paramCodedInputStreamMicro.readBool());
          break;
        case 16:
          setHasHiddenMatchesSecondary(paramCodedInputStreamMicro.readBool());
          break;
        case 26:
        }
        EcoutezStructuredResponse.Match localMatch = new EcoutezStructuredResponse.Match();
        paramCodedInputStreamMicro.readMessage(localMatch);
        addMatch(localMatch);
      }
    }

    public MatchList setHasHiddenMatches(boolean paramBoolean)
    {
      this.hasHasHiddenMatches = true;
      this.hasHiddenMatches_ = paramBoolean;
      return this;
    }

    public MatchList setHasHiddenMatchesSecondary(boolean paramBoolean)
    {
      this.hasHasHiddenMatchesSecondary = true;
      this.hasHiddenMatchesSecondary_ = paramBoolean;
      return this;
    }

    public MatchList setMatch(int paramInt, EcoutezStructuredResponse.Match paramMatch)
    {
      if (paramMatch == null)
        throw new NullPointerException();
      this.match_.set(paramInt, paramMatch);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasHasHiddenMatches())
        paramCodedOutputStreamMicro.writeBool(1, getHasHiddenMatches());
      if (hasHasHiddenMatchesSecondary())
        paramCodedOutputStreamMicro.writeBool(2, getHasHiddenMatchesSecondary());
      Iterator localIterator = getMatchList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (EcoutezStructuredResponse.Match)localIterator.next());
    }
  }

  public static final class Meaning extends MessageMicro
  {
    public static final int EXAMPLE_FIELD_NUMBER = 3;
    public static final int TEXT_FIELD_NUMBER = 1;
    public static final int URL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<String> example_ = Collections.emptyList();
    private boolean hasText;
    private boolean hasUrl;
    private String text_ = "";
    private String url_ = "";

    public static Meaning parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Meaning().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Meaning parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Meaning)new Meaning().mergeFrom(paramArrayOfByte);
    }

    public Meaning addExample(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.example_.isEmpty())
        this.example_ = new ArrayList();
      this.example_.add(paramString);
      return this;
    }

    public final Meaning clear()
    {
      clearText();
      clearUrl();
      clearExample();
      this.cachedSize = -1;
      return this;
    }

    public Meaning clearExample()
    {
      this.example_ = Collections.emptyList();
      return this;
    }

    public Meaning clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public Meaning clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getExample(int paramInt)
    {
      return (String)this.example_.get(paramInt);
    }

    public int getExampleCount()
    {
      return this.example_.size();
    }

    public List<String> getExampleList()
    {
      return this.example_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getUrl());
      int j = 0;
      Iterator localIterator = getExampleList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getExampleList().size();
      this.cachedSize = k;
      return k;
    }

    public String getText()
    {
      return this.text_;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Meaning mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        addExample(paramCodedInputStreamMicro.readString());
      }
    }

    public Meaning setExample(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.example_.set(paramInt, paramString);
      return this;
    }

    public Meaning setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public Meaning setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(2, getUrl());
      Iterator localIterator = getExampleList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(3, (String)localIterator.next());
    }
  }

  public static final class Period extends MessageMicro
  {
    public static final int BASEBALL_FIELD_NUMBER = 9;
    public static final int FIRST_TEAM_SCORE_FIELD_NUMBER = 5;
    public static final int MAX_NUMBER_FIELD_NUMBER = 4;
    public static final int MINUTES_FIELD_NUMBER = 7;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int PERIOD_STATUS_ABOUT_TO_START = 0;
    public static final int PERIOD_STATUS_ENDED = 2;
    public static final int PERIOD_STATUS_IN_PROGRESS = 1;
    public static final int PERIOD_TYPE_NEXT_SCORE_WINS = 3;
    public static final int PERIOD_TYPE_OVERTIME = 1;
    public static final int PERIOD_TYPE_REGULAR = 0;
    public static final int PERIOD_TYPE_SHOOTOUTS = 2;
    public static final int SECONDS_FIELD_NUMBER = 8;
    public static final int SECOND_TEAM_SCORE_FIELD_NUMBER = 6;
    public static final int STATUS_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private EcoutezStructuredResponse.BaseballPeriod baseball_ = null;
    private int cachedSize = -1;
    private String firstTeamScore_ = "";
    private boolean hasBaseball;
    private boolean hasFirstTeamScore;
    private boolean hasMaxNumber;
    private boolean hasMinutes;
    private boolean hasNumber;
    private boolean hasSecondTeamScore;
    private boolean hasSeconds;
    private boolean hasStatus;
    private boolean hasType;
    private int maxNumber_ = 0;
    private String minutes_ = "";
    private int number_ = 0;
    private String secondTeamScore_ = "";
    private String seconds_ = "";
    private int status_ = 0;
    private int type_ = 0;

    public static Period parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Period().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Period parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Period)new Period().mergeFrom(paramArrayOfByte);
    }

    public final Period clear()
    {
      clearType();
      clearStatus();
      clearNumber();
      clearMaxNumber();
      clearFirstTeamScore();
      clearSecondTeamScore();
      clearMinutes();
      clearSeconds();
      clearBaseball();
      this.cachedSize = -1;
      return this;
    }

    public Period clearBaseball()
    {
      this.hasBaseball = false;
      this.baseball_ = null;
      return this;
    }

    public Period clearFirstTeamScore()
    {
      this.hasFirstTeamScore = false;
      this.firstTeamScore_ = "";
      return this;
    }

    public Period clearMaxNumber()
    {
      this.hasMaxNumber = false;
      this.maxNumber_ = 0;
      return this;
    }

    public Period clearMinutes()
    {
      this.hasMinutes = false;
      this.minutes_ = "";
      return this;
    }

    public Period clearNumber()
    {
      this.hasNumber = false;
      this.number_ = 0;
      return this;
    }

    public Period clearSecondTeamScore()
    {
      this.hasSecondTeamScore = false;
      this.secondTeamScore_ = "";
      return this;
    }

    public Period clearSeconds()
    {
      this.hasSeconds = false;
      this.seconds_ = "";
      return this;
    }

    public Period clearStatus()
    {
      this.hasStatus = false;
      this.status_ = 0;
      return this;
    }

    public Period clearType()
    {
      this.hasType = false;
      this.type_ = 0;
      return this;
    }

    public EcoutezStructuredResponse.BaseballPeriod getBaseball()
    {
      return this.baseball_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getFirstTeamScore()
    {
      return this.firstTeamScore_;
    }

    public int getMaxNumber()
    {
      return this.maxNumber_;
    }

    public String getMinutes()
    {
      return this.minutes_;
    }

    public int getNumber()
    {
      return this.number_;
    }

    public String getSecondTeamScore()
    {
      return this.secondTeamScore_;
    }

    public String getSeconds()
    {
      return this.seconds_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasStatus())
        i += CodedOutputStreamMicro.computeInt32Size(2, getStatus());
      if (hasNumber())
        i += CodedOutputStreamMicro.computeInt32Size(3, getNumber());
      if (hasMaxNumber())
        i += CodedOutputStreamMicro.computeInt32Size(4, getMaxNumber());
      if (hasFirstTeamScore())
        i += CodedOutputStreamMicro.computeStringSize(5, getFirstTeamScore());
      if (hasSecondTeamScore())
        i += CodedOutputStreamMicro.computeStringSize(6, getSecondTeamScore());
      if (hasMinutes())
        i += CodedOutputStreamMicro.computeStringSize(7, getMinutes());
      if (hasSeconds())
        i += CodedOutputStreamMicro.computeStringSize(8, getSeconds());
      if (hasBaseball())
        i += CodedOutputStreamMicro.computeMessageSize(9, getBaseball());
      this.cachedSize = i;
      return i;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasBaseball()
    {
      return this.hasBaseball;
    }

    public boolean hasFirstTeamScore()
    {
      return this.hasFirstTeamScore;
    }

    public boolean hasMaxNumber()
    {
      return this.hasMaxNumber;
    }

    public boolean hasMinutes()
    {
      return this.hasMinutes;
    }

    public boolean hasNumber()
    {
      return this.hasNumber;
    }

    public boolean hasSecondTeamScore()
    {
      return this.hasSecondTeamScore;
    }

    public boolean hasSeconds()
    {
      return this.hasSeconds;
    }

    public boolean hasStatus()
    {
      return this.hasStatus;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Period mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setType(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setMaxNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
          setFirstTeamScore(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setSecondTeamScore(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setMinutes(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setSeconds(paramCodedInputStreamMicro.readString());
          break;
        case 74:
        }
        EcoutezStructuredResponse.BaseballPeriod localBaseballPeriod = new EcoutezStructuredResponse.BaseballPeriod();
        paramCodedInputStreamMicro.readMessage(localBaseballPeriod);
        setBaseball(localBaseballPeriod);
      }
    }

    public Period setBaseball(EcoutezStructuredResponse.BaseballPeriod paramBaseballPeriod)
    {
      if (paramBaseballPeriod == null)
        throw new NullPointerException();
      this.hasBaseball = true;
      this.baseball_ = paramBaseballPeriod;
      return this;
    }

    public Period setFirstTeamScore(String paramString)
    {
      this.hasFirstTeamScore = true;
      this.firstTeamScore_ = paramString;
      return this;
    }

    public Period setMaxNumber(int paramInt)
    {
      this.hasMaxNumber = true;
      this.maxNumber_ = paramInt;
      return this;
    }

    public Period setMinutes(String paramString)
    {
      this.hasMinutes = true;
      this.minutes_ = paramString;
      return this;
    }

    public Period setNumber(int paramInt)
    {
      this.hasNumber = true;
      this.number_ = paramInt;
      return this;
    }

    public Period setSecondTeamScore(String paramString)
    {
      this.hasSecondTeamScore = true;
      this.secondTeamScore_ = paramString;
      return this;
    }

    public Period setSeconds(String paramString)
    {
      this.hasSeconds = true;
      this.seconds_ = paramString;
      return this;
    }

    public Period setStatus(int paramInt)
    {
      this.hasStatus = true;
      this.status_ = paramInt;
      return this;
    }

    public Period setType(int paramInt)
    {
      this.hasType = true;
      this.type_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasType())
        paramCodedOutputStreamMicro.writeInt32(1, getType());
      if (hasStatus())
        paramCodedOutputStreamMicro.writeInt32(2, getStatus());
      if (hasNumber())
        paramCodedOutputStreamMicro.writeInt32(3, getNumber());
      if (hasMaxNumber())
        paramCodedOutputStreamMicro.writeInt32(4, getMaxNumber());
      if (hasFirstTeamScore())
        paramCodedOutputStreamMicro.writeString(5, getFirstTeamScore());
      if (hasSecondTeamScore())
        paramCodedOutputStreamMicro.writeString(6, getSecondTeamScore());
      if (hasMinutes())
        paramCodedOutputStreamMicro.writeString(7, getMinutes());
      if (hasSeconds())
        paramCodedOutputStreamMicro.writeString(8, getSeconds());
      if (hasBaseball())
        paramCodedOutputStreamMicro.writeMessage(9, getBaseball());
    }
  }

  public static final class PlayoffsStandings extends MessageMicro
  {
    public static final int FIRST_TEAM_FIELD_NUMBER = 1;
    public static final int FIRST_TEAM_WINS_FIELD_NUMBER = 2;
    public static final int SECOND_TEAM_FIELD_NUMBER = 3;
    public static final int SECOND_TEAM_WINS_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private int firstTeamWins_ = 0;
    private String firstTeam_ = "";
    private boolean hasFirstTeam;
    private boolean hasFirstTeamWins;
    private boolean hasSecondTeam;
    private boolean hasSecondTeamWins;
    private int secondTeamWins_ = 0;
    private String secondTeam_ = "";

    public static PlayoffsStandings parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PlayoffsStandings().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PlayoffsStandings parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PlayoffsStandings)new PlayoffsStandings().mergeFrom(paramArrayOfByte);
    }

    public final PlayoffsStandings clear()
    {
      clearFirstTeam();
      clearFirstTeamWins();
      clearSecondTeam();
      clearSecondTeamWins();
      this.cachedSize = -1;
      return this;
    }

    public PlayoffsStandings clearFirstTeam()
    {
      this.hasFirstTeam = false;
      this.firstTeam_ = "";
      return this;
    }

    public PlayoffsStandings clearFirstTeamWins()
    {
      this.hasFirstTeamWins = false;
      this.firstTeamWins_ = 0;
      return this;
    }

    public PlayoffsStandings clearSecondTeam()
    {
      this.hasSecondTeam = false;
      this.secondTeam_ = "";
      return this;
    }

    public PlayoffsStandings clearSecondTeamWins()
    {
      this.hasSecondTeamWins = false;
      this.secondTeamWins_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getFirstTeam()
    {
      return this.firstTeam_;
    }

    public int getFirstTeamWins()
    {
      return this.firstTeamWins_;
    }

    public String getSecondTeam()
    {
      return this.secondTeam_;
    }

    public int getSecondTeamWins()
    {
      return this.secondTeamWins_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFirstTeam();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFirstTeam());
      if (hasFirstTeamWins())
        i += CodedOutputStreamMicro.computeInt32Size(2, getFirstTeamWins());
      if (hasSecondTeam())
        i += CodedOutputStreamMicro.computeStringSize(3, getSecondTeam());
      if (hasSecondTeamWins())
        i += CodedOutputStreamMicro.computeInt32Size(4, getSecondTeamWins());
      this.cachedSize = i;
      return i;
    }

    public boolean hasFirstTeam()
    {
      return this.hasFirstTeam;
    }

    public boolean hasFirstTeamWins()
    {
      return this.hasFirstTeamWins;
    }

    public boolean hasSecondTeam()
    {
      return this.hasSecondTeam;
    }

    public boolean hasSecondTeamWins()
    {
      return this.hasSecondTeamWins;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PlayoffsStandings mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setFirstTeam(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setFirstTeamWins(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          setSecondTeam(paramCodedInputStreamMicro.readString());
          break;
        case 32:
        }
        setSecondTeamWins(paramCodedInputStreamMicro.readInt32());
      }
    }

    public PlayoffsStandings setFirstTeam(String paramString)
    {
      this.hasFirstTeam = true;
      this.firstTeam_ = paramString;
      return this;
    }

    public PlayoffsStandings setFirstTeamWins(int paramInt)
    {
      this.hasFirstTeamWins = true;
      this.firstTeamWins_ = paramInt;
      return this;
    }

    public PlayoffsStandings setSecondTeam(String paramString)
    {
      this.hasSecondTeam = true;
      this.secondTeam_ = paramString;
      return this;
    }

    public PlayoffsStandings setSecondTeamWins(int paramInt)
    {
      this.hasSecondTeamWins = true;
      this.secondTeamWins_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFirstTeam())
        paramCodedOutputStreamMicro.writeString(1, getFirstTeam());
      if (hasFirstTeamWins())
        paramCodedOutputStreamMicro.writeInt32(2, getFirstTeamWins());
      if (hasSecondTeam())
        paramCodedOutputStreamMicro.writeString(3, getSecondTeam());
      if (hasSecondTeamWins())
        paramCodedOutputStreamMicro.writeInt32(4, getSecondTeamWins());
    }
  }

  public static final class PosMeaning extends MessageMicro
  {
    public static final int MEANING_FIELD_NUMBER = 2;
    public static final int PART_OF_SPEECH_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasPartOfSpeech;
    private List<EcoutezStructuredResponse.Meaning> meaning_ = Collections.emptyList();
    private String partOfSpeech_ = "";

    public static PosMeaning parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PosMeaning().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PosMeaning parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PosMeaning)new PosMeaning().mergeFrom(paramArrayOfByte);
    }

    public PosMeaning addMeaning(EcoutezStructuredResponse.Meaning paramMeaning)
    {
      if (paramMeaning == null)
        throw new NullPointerException();
      if (this.meaning_.isEmpty())
        this.meaning_ = new ArrayList();
      this.meaning_.add(paramMeaning);
      return this;
    }

    public final PosMeaning clear()
    {
      clearPartOfSpeech();
      clearMeaning();
      this.cachedSize = -1;
      return this;
    }

    public PosMeaning clearMeaning()
    {
      this.meaning_ = Collections.emptyList();
      return this;
    }

    public PosMeaning clearPartOfSpeech()
    {
      this.hasPartOfSpeech = false;
      this.partOfSpeech_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.Meaning getMeaning(int paramInt)
    {
      return (EcoutezStructuredResponse.Meaning)this.meaning_.get(paramInt);
    }

    public int getMeaningCount()
    {
      return this.meaning_.size();
    }

    public List<EcoutezStructuredResponse.Meaning> getMeaningList()
    {
      return this.meaning_;
    }

    public String getPartOfSpeech()
    {
      return this.partOfSpeech_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasPartOfSpeech();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPartOfSpeech());
      Iterator localIterator = getMeaningList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (EcoutezStructuredResponse.Meaning)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasPartOfSpeech()
    {
      return this.hasPartOfSpeech;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PosMeaning mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setPartOfSpeech(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        EcoutezStructuredResponse.Meaning localMeaning = new EcoutezStructuredResponse.Meaning();
        paramCodedInputStreamMicro.readMessage(localMeaning);
        addMeaning(localMeaning);
      }
    }

    public PosMeaning setMeaning(int paramInt, EcoutezStructuredResponse.Meaning paramMeaning)
    {
      if (paramMeaning == null)
        throw new NullPointerException();
      this.meaning_.set(paramInt, paramMeaning);
      return this;
    }

    public PosMeaning setPartOfSpeech(String paramString)
    {
      this.hasPartOfSpeech = true;
      this.partOfSpeech_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasPartOfSpeech())
        paramCodedOutputStreamMicro.writeString(1, getPartOfSpeech());
      Iterator localIterator = getMeaningList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (EcoutezStructuredResponse.Meaning)localIterator.next());
    }
  }

  public static final class PublicDataResult extends MessageMicro
  {
    public static final int DISCLAIMER_TEXT_FIELD_NUMBER = 9;
    public static final int DISCLAIMER_URL_FIELD_NUMBER = 8;
    public static final int SOURCE_LABEL_FIELD_NUMBER = 6;
    public static final int SOURCE_NAME_FIELD_NUMBER = 7;
    public static final int SYMBOL_AFTER_FIELD_NUMBER = 3;
    public static final int SYMBOL_BEFORE_FIELD_NUMBER = 1;
    public static final int TIME_FIELD_NUMBER = 5;
    public static final int UNIT_FIELD_NUMBER = 4;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private String disclaimerText_ = "";
    private String disclaimerUrl_ = "";
    private boolean hasDisclaimerText;
    private boolean hasDisclaimerUrl;
    private boolean hasSourceLabel;
    private boolean hasSourceName;
    private boolean hasSymbolAfter;
    private boolean hasSymbolBefore;
    private boolean hasTime;
    private boolean hasUnit;
    private boolean hasValue;
    private String sourceLabel_ = "";
    private String sourceName_ = "";
    private String symbolAfter_ = "";
    private String symbolBefore_ = "";
    private String time_ = "";
    private String unit_ = "";
    private String value_ = "";

    public static PublicDataResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PublicDataResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PublicDataResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PublicDataResult)new PublicDataResult().mergeFrom(paramArrayOfByte);
    }

    public final PublicDataResult clear()
    {
      clearSymbolBefore();
      clearValue();
      clearSymbolAfter();
      clearUnit();
      clearTime();
      clearSourceLabel();
      clearSourceName();
      clearDisclaimerUrl();
      clearDisclaimerText();
      this.cachedSize = -1;
      return this;
    }

    public PublicDataResult clearDisclaimerText()
    {
      this.hasDisclaimerText = false;
      this.disclaimerText_ = "";
      return this;
    }

    public PublicDataResult clearDisclaimerUrl()
    {
      this.hasDisclaimerUrl = false;
      this.disclaimerUrl_ = "";
      return this;
    }

    public PublicDataResult clearSourceLabel()
    {
      this.hasSourceLabel = false;
      this.sourceLabel_ = "";
      return this;
    }

    public PublicDataResult clearSourceName()
    {
      this.hasSourceName = false;
      this.sourceName_ = "";
      return this;
    }

    public PublicDataResult clearSymbolAfter()
    {
      this.hasSymbolAfter = false;
      this.symbolAfter_ = "";
      return this;
    }

    public PublicDataResult clearSymbolBefore()
    {
      this.hasSymbolBefore = false;
      this.symbolBefore_ = "";
      return this;
    }

    public PublicDataResult clearTime()
    {
      this.hasTime = false;
      this.time_ = "";
      return this;
    }

    public PublicDataResult clearUnit()
    {
      this.hasUnit = false;
      this.unit_ = "";
      return this;
    }

    public PublicDataResult clearValue()
    {
      this.hasValue = false;
      this.value_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDisclaimerText()
    {
      return this.disclaimerText_;
    }

    public String getDisclaimerUrl()
    {
      return this.disclaimerUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSymbolBefore();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSymbolBefore());
      if (hasValue())
        i += CodedOutputStreamMicro.computeStringSize(2, getValue());
      if (hasSymbolAfter())
        i += CodedOutputStreamMicro.computeStringSize(3, getSymbolAfter());
      if (hasUnit())
        i += CodedOutputStreamMicro.computeStringSize(4, getUnit());
      if (hasTime())
        i += CodedOutputStreamMicro.computeStringSize(5, getTime());
      if (hasSourceLabel())
        i += CodedOutputStreamMicro.computeStringSize(6, getSourceLabel());
      if (hasSourceName())
        i += CodedOutputStreamMicro.computeStringSize(7, getSourceName());
      if (hasDisclaimerUrl())
        i += CodedOutputStreamMicro.computeStringSize(8, getDisclaimerUrl());
      if (hasDisclaimerText())
        i += CodedOutputStreamMicro.computeStringSize(9, getDisclaimerText());
      this.cachedSize = i;
      return i;
    }

    public String getSourceLabel()
    {
      return this.sourceLabel_;
    }

    public String getSourceName()
    {
      return this.sourceName_;
    }

    public String getSymbolAfter()
    {
      return this.symbolAfter_;
    }

    public String getSymbolBefore()
    {
      return this.symbolBefore_;
    }

    public String getTime()
    {
      return this.time_;
    }

    public String getUnit()
    {
      return this.unit_;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasDisclaimerText()
    {
      return this.hasDisclaimerText;
    }

    public boolean hasDisclaimerUrl()
    {
      return this.hasDisclaimerUrl;
    }

    public boolean hasSourceLabel()
    {
      return this.hasSourceLabel;
    }

    public boolean hasSourceName()
    {
      return this.hasSourceName;
    }

    public boolean hasSymbolAfter()
    {
      return this.hasSymbolAfter;
    }

    public boolean hasSymbolBefore()
    {
      return this.hasSymbolBefore;
    }

    public boolean hasTime()
    {
      return this.hasTime;
    }

    public boolean hasUnit()
    {
      return this.hasUnit;
    }

    public boolean hasValue()
    {
      return this.hasValue;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PublicDataResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSymbolBefore(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setValue(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setSymbolAfter(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setUnit(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setTime(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setSourceLabel(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setSourceName(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setDisclaimerUrl(paramCodedInputStreamMicro.readString());
          break;
        case 74:
        }
        setDisclaimerText(paramCodedInputStreamMicro.readString());
      }
    }

    public PublicDataResult setDisclaimerText(String paramString)
    {
      this.hasDisclaimerText = true;
      this.disclaimerText_ = paramString;
      return this;
    }

    public PublicDataResult setDisclaimerUrl(String paramString)
    {
      this.hasDisclaimerUrl = true;
      this.disclaimerUrl_ = paramString;
      return this;
    }

    public PublicDataResult setSourceLabel(String paramString)
    {
      this.hasSourceLabel = true;
      this.sourceLabel_ = paramString;
      return this;
    }

    public PublicDataResult setSourceName(String paramString)
    {
      this.hasSourceName = true;
      this.sourceName_ = paramString;
      return this;
    }

    public PublicDataResult setSymbolAfter(String paramString)
    {
      this.hasSymbolAfter = true;
      this.symbolAfter_ = paramString;
      return this;
    }

    public PublicDataResult setSymbolBefore(String paramString)
    {
      this.hasSymbolBefore = true;
      this.symbolBefore_ = paramString;
      return this;
    }

    public PublicDataResult setTime(String paramString)
    {
      this.hasTime = true;
      this.time_ = paramString;
      return this;
    }

    public PublicDataResult setUnit(String paramString)
    {
      this.hasUnit = true;
      this.unit_ = paramString;
      return this;
    }

    public PublicDataResult setValue(String paramString)
    {
      this.hasValue = true;
      this.value_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSymbolBefore())
        paramCodedOutputStreamMicro.writeString(1, getSymbolBefore());
      if (hasValue())
        paramCodedOutputStreamMicro.writeString(2, getValue());
      if (hasSymbolAfter())
        paramCodedOutputStreamMicro.writeString(3, getSymbolAfter());
      if (hasUnit())
        paramCodedOutputStreamMicro.writeString(4, getUnit());
      if (hasTime())
        paramCodedOutputStreamMicro.writeString(5, getTime());
      if (hasSourceLabel())
        paramCodedOutputStreamMicro.writeString(6, getSourceLabel());
      if (hasSourceName())
        paramCodedOutputStreamMicro.writeString(7, getSourceName());
      if (hasDisclaimerUrl())
        paramCodedOutputStreamMicro.writeString(8, getDisclaimerUrl());
      if (hasDisclaimerText())
        paramCodedOutputStreamMicro.writeString(9, getDisclaimerText());
    }
  }

  public static final class RegularSeasonStandings extends MessageMicro
  {
    public static final int ASSOCIATION_NAME_FIELD_NUMBER = 1;
    public static final int ASSOCIATION_STANDING_FIELD_NUMBER = 2;
    public static final int POINTS_FIELD_NUMBER = 3;
    public static final int RECORD_FIELD_NUMBER = 4;
    public static final int WIN_PERCENTAGE_FIELD_NUMBER = 5;
    private String associationName_ = "";
    private String associationStanding_ = "";
    private int cachedSize = -1;
    private boolean hasAssociationName;
    private boolean hasAssociationStanding;
    private boolean hasPoints;
    private boolean hasWinPercentage;
    private int points_ = 0;
    private List<Integer> record_ = Collections.emptyList();
    private String winPercentage_ = "";

    public static RegularSeasonStandings parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RegularSeasonStandings().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RegularSeasonStandings parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RegularSeasonStandings)new RegularSeasonStandings().mergeFrom(paramArrayOfByte);
    }

    public RegularSeasonStandings addRecord(int paramInt)
    {
      if (this.record_.isEmpty())
        this.record_ = new ArrayList();
      this.record_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final RegularSeasonStandings clear()
    {
      clearAssociationName();
      clearAssociationStanding();
      clearPoints();
      clearRecord();
      clearWinPercentage();
      this.cachedSize = -1;
      return this;
    }

    public RegularSeasonStandings clearAssociationName()
    {
      this.hasAssociationName = false;
      this.associationName_ = "";
      return this;
    }

    public RegularSeasonStandings clearAssociationStanding()
    {
      this.hasAssociationStanding = false;
      this.associationStanding_ = "";
      return this;
    }

    public RegularSeasonStandings clearPoints()
    {
      this.hasPoints = false;
      this.points_ = 0;
      return this;
    }

    public RegularSeasonStandings clearRecord()
    {
      this.record_ = Collections.emptyList();
      return this;
    }

    public RegularSeasonStandings clearWinPercentage()
    {
      this.hasWinPercentage = false;
      this.winPercentage_ = "";
      return this;
    }

    public String getAssociationName()
    {
      return this.associationName_;
    }

    public String getAssociationStanding()
    {
      return this.associationStanding_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getPoints()
    {
      return this.points_;
    }

    public int getRecord(int paramInt)
    {
      return ((Integer)this.record_.get(paramInt)).intValue();
    }

    public int getRecordCount()
    {
      return this.record_.size();
    }

    public List<Integer> getRecordList()
    {
      return this.record_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAssociationName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAssociationName());
      if (hasAssociationStanding())
        i += CodedOutputStreamMicro.computeStringSize(2, getAssociationStanding());
      if (hasPoints())
        i += CodedOutputStreamMicro.computeInt32Size(3, getPoints());
      int j = 0;
      Iterator localIterator = getRecordList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 1 * getRecordList().size();
      if (hasWinPercentage())
        k += CodedOutputStreamMicro.computeStringSize(5, getWinPercentage());
      this.cachedSize = k;
      return k;
    }

    public String getWinPercentage()
    {
      return this.winPercentage_;
    }

    public boolean hasAssociationName()
    {
      return this.hasAssociationName;
    }

    public boolean hasAssociationStanding()
    {
      return this.hasAssociationStanding;
    }

    public boolean hasPoints()
    {
      return this.hasPoints;
    }

    public boolean hasWinPercentage()
    {
      return this.hasWinPercentage;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RegularSeasonStandings mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAssociationName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setAssociationStanding(paramCodedInputStreamMicro.readString());
          break;
        case 24:
          setPoints(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          addRecord(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
        }
        setWinPercentage(paramCodedInputStreamMicro.readString());
      }
    }

    public RegularSeasonStandings setAssociationName(String paramString)
    {
      this.hasAssociationName = true;
      this.associationName_ = paramString;
      return this;
    }

    public RegularSeasonStandings setAssociationStanding(String paramString)
    {
      this.hasAssociationStanding = true;
      this.associationStanding_ = paramString;
      return this;
    }

    public RegularSeasonStandings setPoints(int paramInt)
    {
      this.hasPoints = true;
      this.points_ = paramInt;
      return this;
    }

    public RegularSeasonStandings setRecord(int paramInt1, int paramInt2)
    {
      this.record_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public RegularSeasonStandings setWinPercentage(String paramString)
    {
      this.hasWinPercentage = true;
      this.winPercentage_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAssociationName())
        paramCodedOutputStreamMicro.writeString(1, getAssociationName());
      if (hasAssociationStanding())
        paramCodedOutputStreamMicro.writeString(2, getAssociationStanding());
      if (hasPoints())
        paramCodedOutputStreamMicro.writeInt32(3, getPoints());
      Iterator localIterator = getRecordList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(4, ((Integer)localIterator.next()).intValue());
      if (hasWinPercentage())
        paramCodedOutputStreamMicro.writeString(5, getWinPercentage());
    }
  }

  public static final class RelatedSearchResults extends MessageMicro
  {
    public static final int RELATED_TERM_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<String> relatedTerm_ = Collections.emptyList();

    public static RelatedSearchResults parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RelatedSearchResults().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RelatedSearchResults parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RelatedSearchResults)new RelatedSearchResults().mergeFrom(paramArrayOfByte);
    }

    public RelatedSearchResults addRelatedTerm(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.relatedTerm_.isEmpty())
        this.relatedTerm_ = new ArrayList();
      this.relatedTerm_.add(paramString);
      return this;
    }

    public final RelatedSearchResults clear()
    {
      clearRelatedTerm();
      this.cachedSize = -1;
      return this;
    }

    public RelatedSearchResults clearRelatedTerm()
    {
      this.relatedTerm_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getRelatedTerm(int paramInt)
    {
      return (String)this.relatedTerm_.get(paramInt);
    }

    public int getRelatedTermCount()
    {
      return this.relatedTerm_.size();
    }

    public List<String> getRelatedTermList()
    {
      return this.relatedTerm_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getRelatedTermList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int j = 0 + i + 1 * getRelatedTermList().size();
      this.cachedSize = j;
      return j;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RelatedSearchResults mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        addRelatedTerm(paramCodedInputStreamMicro.readString());
      }
    }

    public RelatedSearchResults setRelatedTerm(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.relatedTerm_.set(paramInt, paramString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getRelatedTermList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(1, (String)localIterator.next());
    }
  }

  public static final class ReviewSite extends MessageMicro
  {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int REVIEW_COUNT_FIELD_NUMBER = 3;
    public static final int URL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasName;
    private boolean hasReviewCount;
    private boolean hasUrl;
    private String name_ = "";
    private int reviewCount_ = 0;
    private String url_ = "";

    public static ReviewSite parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ReviewSite().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ReviewSite parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ReviewSite)new ReviewSite().mergeFrom(paramArrayOfByte);
    }

    public final ReviewSite clear()
    {
      clearName();
      clearUrl();
      clearReviewCount();
      this.cachedSize = -1;
      return this;
    }

    public ReviewSite clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public ReviewSite clearReviewCount()
    {
      this.hasReviewCount = false;
      this.reviewCount_ = 0;
      return this;
    }

    public ReviewSite clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getReviewCount()
    {
      return this.reviewCount_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      if (hasUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getUrl());
      if (hasReviewCount())
        i += CodedOutputStreamMicro.computeInt32Size(3, getReviewCount());
      this.cachedSize = i;
      return i;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasReviewCount()
    {
      return this.hasReviewCount;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ReviewSite mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 24:
        }
        setReviewCount(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ReviewSite setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public ReviewSite setReviewCount(int paramInt)
    {
      this.hasReviewCount = true;
      this.reviewCount_ = paramInt;
      return this;
    }

    public ReviewSite setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(2, getUrl());
      if (hasReviewCount())
        paramCodedOutputStreamMicro.writeInt32(3, getReviewCount());
    }
  }

  public static final class SnippetResult extends MessageMicro
  {
    public static final int DOMAIN_FIELD_NUMBER = 2;
    public static final int SNIPPET_FIELD_NUMBER = 4;
    public static final int TITLE_FIELD_NUMBER = 3;
    public static final int URL_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String domain_ = "";
    private boolean hasDomain;
    private boolean hasSnippet;
    private boolean hasTitle;
    private boolean hasUrl;
    private String snippet_ = "";
    private String title_ = "";
    private String url_ = "";

    public static SnippetResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SnippetResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SnippetResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SnippetResult)new SnippetResult().mergeFrom(paramArrayOfByte);
    }

    public final SnippetResult clear()
    {
      clearUrl();
      clearDomain();
      clearTitle();
      clearSnippet();
      this.cachedSize = -1;
      return this;
    }

    public SnippetResult clearDomain()
    {
      this.hasDomain = false;
      this.domain_ = "";
      return this;
    }

    public SnippetResult clearSnippet()
    {
      this.hasSnippet = false;
      this.snippet_ = "";
      return this;
    }

    public SnippetResult clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public SnippetResult clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDomain()
    {
      return this.domain_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUrl();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
      if (hasDomain())
        i += CodedOutputStreamMicro.computeStringSize(2, getDomain());
      if (hasTitle())
        i += CodedOutputStreamMicro.computeStringSize(3, getTitle());
      if (hasSnippet())
        i += CodedOutputStreamMicro.computeStringSize(4, getSnippet());
      this.cachedSize = i;
      return i;
    }

    public String getSnippet()
    {
      return this.snippet_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasDomain()
    {
      return this.hasDomain;
    }

    public boolean hasSnippet()
    {
      return this.hasSnippet;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SnippetResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setDomain(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 34:
        }
        setSnippet(paramCodedInputStreamMicro.readString());
      }
    }

    public SnippetResult setDomain(String paramString)
    {
      this.hasDomain = true;
      this.domain_ = paramString;
      return this;
    }

    public SnippetResult setSnippet(String paramString)
    {
      this.hasSnippet = true;
      this.snippet_ = paramString;
      return this;
    }

    public SnippetResult setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public SnippetResult setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(1, getUrl());
      if (hasDomain())
        paramCodedOutputStreamMicro.writeString(2, getDomain());
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(3, getTitle());
      if (hasSnippet())
        paramCodedOutputStreamMicro.writeString(4, getSnippet());
    }
  }

  public static final class SnippetResults extends MessageMicro
  {
    public static final int RESULT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<EcoutezStructuredResponse.SnippetResult> result_ = Collections.emptyList();

    public static SnippetResults parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SnippetResults().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SnippetResults parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SnippetResults)new SnippetResults().mergeFrom(paramArrayOfByte);
    }

    public SnippetResults addResult(EcoutezStructuredResponse.SnippetResult paramSnippetResult)
    {
      if (paramSnippetResult == null)
        throw new NullPointerException();
      if (this.result_.isEmpty())
        this.result_ = new ArrayList();
      this.result_.add(paramSnippetResult);
      return this;
    }

    public final SnippetResults clear()
    {
      clearResult();
      this.cachedSize = -1;
      return this;
    }

    public SnippetResults clearResult()
    {
      this.result_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.SnippetResult getResult(int paramInt)
    {
      return (EcoutezStructuredResponse.SnippetResult)this.result_.get(paramInt);
    }

    public int getResultCount()
    {
      return this.result_.size();
    }

    public List<EcoutezStructuredResponse.SnippetResult> getResultList()
    {
      return this.result_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getResultList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (EcoutezStructuredResponse.SnippetResult)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SnippetResults mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        EcoutezStructuredResponse.SnippetResult localSnippetResult = new EcoutezStructuredResponse.SnippetResult();
        paramCodedInputStreamMicro.readMessage(localSnippetResult);
        addResult(localSnippetResult);
      }
    }

    public SnippetResults setResult(int paramInt, EcoutezStructuredResponse.SnippetResult paramSnippetResult)
    {
      if (paramSnippetResult == null)
        throw new NullPointerException();
      this.result_.set(paramInt, paramSnippetResult);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getResultList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (EcoutezStructuredResponse.SnippetResult)localIterator.next());
    }
  }

  public static final class SportsResult extends MessageMicro
  {
    public static final int ASSOCIATION_DATA_FIELD_NUMBER = 5;
    public static final int SPORT_TYPE_BASEBALL = 1;
    public static final int SPORT_TYPE_BASKETBALL = 5;
    public static final int SPORT_TYPE_CRICKET = 7;
    public static final int SPORT_TYPE_FIELD_NUMBER = 1;
    public static final int SPORT_TYPE_FOOTBALL = 3;
    public static final int SPORT_TYPE_GOLF = 10;
    public static final int SPORT_TYPE_MOTOR_RACING = 8;
    public static final int SPORT_TYPE_OLYMPIC_SPORT = 9;
    public static final int SPORT_TYPE_RUGBY = 6;
    public static final int SPORT_TYPE_SOCCER = 4;
    public static final int SPORT_TYPE_TENNIS = 2;
    public static final int SPORT_TYPE_UNKNOWN = 0;
    public static final int TEAM_DATA_FIELD_NUMBER = 3;
    public static final int TEAM_VS_TEAM_DATA_FIELD_NUMBER = 4;
    public static final int TITLE_FIELD_NUMBER = 2;
    private EcoutezStructuredResponse.AssociationData associationData_ = null;
    private int cachedSize = -1;
    private boolean hasAssociationData;
    private boolean hasSportType;
    private boolean hasTeamData;
    private boolean hasTeamVsTeamData;
    private boolean hasTitle;
    private int sportType_ = 0;
    private EcoutezStructuredResponse.TeamData teamData_ = null;
    private EcoutezStructuredResponse.TeamVsTeamData teamVsTeamData_ = null;
    private String title_ = "";

    public static SportsResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SportsResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SportsResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SportsResult)new SportsResult().mergeFrom(paramArrayOfByte);
    }

    public final SportsResult clear()
    {
      clearSportType();
      clearTitle();
      clearTeamData();
      clearTeamVsTeamData();
      clearAssociationData();
      this.cachedSize = -1;
      return this;
    }

    public SportsResult clearAssociationData()
    {
      this.hasAssociationData = false;
      this.associationData_ = null;
      return this;
    }

    public SportsResult clearSportType()
    {
      this.hasSportType = false;
      this.sportType_ = 0;
      return this;
    }

    public SportsResult clearTeamData()
    {
      this.hasTeamData = false;
      this.teamData_ = null;
      return this;
    }

    public SportsResult clearTeamVsTeamData()
    {
      this.hasTeamVsTeamData = false;
      this.teamVsTeamData_ = null;
      return this;
    }

    public SportsResult clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public EcoutezStructuredResponse.AssociationData getAssociationData()
    {
      return this.associationData_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSportType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getSportType());
      if (hasTitle())
        i += CodedOutputStreamMicro.computeStringSize(2, getTitle());
      if (hasTeamData())
        i += CodedOutputStreamMicro.computeMessageSize(3, getTeamData());
      if (hasTeamVsTeamData())
        i += CodedOutputStreamMicro.computeMessageSize(4, getTeamVsTeamData());
      if (hasAssociationData())
        i += CodedOutputStreamMicro.computeMessageSize(5, getAssociationData());
      this.cachedSize = i;
      return i;
    }

    public int getSportType()
    {
      return this.sportType_;
    }

    public EcoutezStructuredResponse.TeamData getTeamData()
    {
      return this.teamData_;
    }

    public EcoutezStructuredResponse.TeamVsTeamData getTeamVsTeamData()
    {
      return this.teamVsTeamData_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public boolean hasAssociationData()
    {
      return this.hasAssociationData;
    }

    public boolean hasSportType()
    {
      return this.hasSportType;
    }

    public boolean hasTeamData()
    {
      return this.hasTeamData;
    }

    public boolean hasTeamVsTeamData()
    {
      return this.hasTeamVsTeamData;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SportsResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSportType(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          EcoutezStructuredResponse.TeamData localTeamData = new EcoutezStructuredResponse.TeamData();
          paramCodedInputStreamMicro.readMessage(localTeamData);
          setTeamData(localTeamData);
          break;
        case 34:
          EcoutezStructuredResponse.TeamVsTeamData localTeamVsTeamData = new EcoutezStructuredResponse.TeamVsTeamData();
          paramCodedInputStreamMicro.readMessage(localTeamVsTeamData);
          setTeamVsTeamData(localTeamVsTeamData);
          break;
        case 42:
        }
        EcoutezStructuredResponse.AssociationData localAssociationData = new EcoutezStructuredResponse.AssociationData();
        paramCodedInputStreamMicro.readMessage(localAssociationData);
        setAssociationData(localAssociationData);
      }
    }

    public SportsResult setAssociationData(EcoutezStructuredResponse.AssociationData paramAssociationData)
    {
      if (paramAssociationData == null)
        throw new NullPointerException();
      this.hasAssociationData = true;
      this.associationData_ = paramAssociationData;
      return this;
    }

    public SportsResult setSportType(int paramInt)
    {
      this.hasSportType = true;
      this.sportType_ = paramInt;
      return this;
    }

    public SportsResult setTeamData(EcoutezStructuredResponse.TeamData paramTeamData)
    {
      if (paramTeamData == null)
        throw new NullPointerException();
      this.hasTeamData = true;
      this.teamData_ = paramTeamData;
      return this;
    }

    public SportsResult setTeamVsTeamData(EcoutezStructuredResponse.TeamVsTeamData paramTeamVsTeamData)
    {
      if (paramTeamVsTeamData == null)
        throw new NullPointerException();
      this.hasTeamVsTeamData = true;
      this.teamVsTeamData_ = paramTeamVsTeamData;
      return this;
    }

    public SportsResult setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSportType())
        paramCodedOutputStreamMicro.writeInt32(1, getSportType());
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(2, getTitle());
      if (hasTeamData())
        paramCodedOutputStreamMicro.writeMessage(3, getTeamData());
      if (hasTeamVsTeamData())
        paramCodedOutputStreamMicro.writeMessage(4, getTeamVsTeamData());
      if (hasAssociationData())
        paramCodedOutputStreamMicro.writeMessage(5, getAssociationData());
    }
  }

  public static final class StockResult extends MessageMicro
  {
    public static final int AVG_VOLUME_FIELD_NUMBER = 13;
    public static final int AVG_VOLUME_TEXT_FIELD_NUMBER = 14;
    public static final int DELAY_FIELD_NUMBER = 17;
    public static final int DISCLAIMER_FIELD_NUMBER = 18;
    public static final int DISCLAIMER_URL_FIELD_NUMBER = 19;
    public static final int HIGH_PRICE_FIELD_NUMBER = 7;
    public static final int HIGH_TEXT_FIELD_NUMBER = 8;
    public static final int LAST_CHANGE_TIME_FIELD_NUMBER = 4;
    public static final int LAST_PRICE_FIELD_NUMBER = 1;
    public static final int LOW_PRICE_FIELD_NUMBER = 9;
    public static final int LOW_TEXT_FIELD_NUMBER = 10;
    public static final int MARKET_CAP_FIELD_NUMBER = 15;
    public static final int MARKET_CAP_TEXT_FIELD_NUMBER = 16;
    public static final int OPEN_PRICE_FIELD_NUMBER = 5;
    public static final int OPEN_TEXT_FIELD_NUMBER = 6;
    public static final int PRICE_CHANGE_FIELD_NUMBER = 2;
    public static final int PRICE_PERCENT_CHANGE_FIELD_NUMBER = 3;
    public static final int VOLUME_FIELD_NUMBER = 11;
    public static final int VOLUME_TEXT_FIELD_NUMBER = 12;
    private String avgVolumeText_ = "";
    private String avgVolume_ = "";
    private int cachedSize = -1;
    private String delay_ = "";
    private String disclaimerUrl_ = "";
    private String disclaimer_ = "";
    private boolean hasAvgVolume;
    private boolean hasAvgVolumeText;
    private boolean hasDelay;
    private boolean hasDisclaimer;
    private boolean hasDisclaimerUrl;
    private boolean hasHighPrice;
    private boolean hasHighText;
    private boolean hasLastChangeTime;
    private boolean hasLastPrice;
    private boolean hasLowPrice;
    private boolean hasLowText;
    private boolean hasMarketCap;
    private boolean hasMarketCapText;
    private boolean hasOpenPrice;
    private boolean hasOpenText;
    private boolean hasPriceChange;
    private boolean hasPricePercentChange;
    private boolean hasVolume;
    private boolean hasVolumeText;
    private float highPrice_ = 0.0F;
    private String highText_ = "";
    private String lastChangeTime_ = "";
    private float lastPrice_ = 0.0F;
    private float lowPrice_ = 0.0F;
    private String lowText_ = "";
    private String marketCapText_ = "";
    private String marketCap_ = "";
    private float openPrice_ = 0.0F;
    private String openText_ = "";
    private float priceChange_ = 0.0F;
    private float pricePercentChange_ = 0.0F;
    private String volumeText_ = "";
    private String volume_ = "";

    public static StockResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new StockResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static StockResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (StockResult)new StockResult().mergeFrom(paramArrayOfByte);
    }

    public final StockResult clear()
    {
      clearLastPrice();
      clearPriceChange();
      clearPricePercentChange();
      clearLastChangeTime();
      clearOpenPrice();
      clearOpenText();
      clearHighPrice();
      clearHighText();
      clearLowPrice();
      clearLowText();
      clearVolume();
      clearVolumeText();
      clearAvgVolume();
      clearAvgVolumeText();
      clearMarketCap();
      clearMarketCapText();
      clearDelay();
      clearDisclaimer();
      clearDisclaimerUrl();
      this.cachedSize = -1;
      return this;
    }

    public StockResult clearAvgVolume()
    {
      this.hasAvgVolume = false;
      this.avgVolume_ = "";
      return this;
    }

    public StockResult clearAvgVolumeText()
    {
      this.hasAvgVolumeText = false;
      this.avgVolumeText_ = "";
      return this;
    }

    public StockResult clearDelay()
    {
      this.hasDelay = false;
      this.delay_ = "";
      return this;
    }

    public StockResult clearDisclaimer()
    {
      this.hasDisclaimer = false;
      this.disclaimer_ = "";
      return this;
    }

    public StockResult clearDisclaimerUrl()
    {
      this.hasDisclaimerUrl = false;
      this.disclaimerUrl_ = "";
      return this;
    }

    public StockResult clearHighPrice()
    {
      this.hasHighPrice = false;
      this.highPrice_ = 0.0F;
      return this;
    }

    public StockResult clearHighText()
    {
      this.hasHighText = false;
      this.highText_ = "";
      return this;
    }

    public StockResult clearLastChangeTime()
    {
      this.hasLastChangeTime = false;
      this.lastChangeTime_ = "";
      return this;
    }

    public StockResult clearLastPrice()
    {
      this.hasLastPrice = false;
      this.lastPrice_ = 0.0F;
      return this;
    }

    public StockResult clearLowPrice()
    {
      this.hasLowPrice = false;
      this.lowPrice_ = 0.0F;
      return this;
    }

    public StockResult clearLowText()
    {
      this.hasLowText = false;
      this.lowText_ = "";
      return this;
    }

    public StockResult clearMarketCap()
    {
      this.hasMarketCap = false;
      this.marketCap_ = "";
      return this;
    }

    public StockResult clearMarketCapText()
    {
      this.hasMarketCapText = false;
      this.marketCapText_ = "";
      return this;
    }

    public StockResult clearOpenPrice()
    {
      this.hasOpenPrice = false;
      this.openPrice_ = 0.0F;
      return this;
    }

    public StockResult clearOpenText()
    {
      this.hasOpenText = false;
      this.openText_ = "";
      return this;
    }

    public StockResult clearPriceChange()
    {
      this.hasPriceChange = false;
      this.priceChange_ = 0.0F;
      return this;
    }

    public StockResult clearPricePercentChange()
    {
      this.hasPricePercentChange = false;
      this.pricePercentChange_ = 0.0F;
      return this;
    }

    public StockResult clearVolume()
    {
      this.hasVolume = false;
      this.volume_ = "";
      return this;
    }

    public StockResult clearVolumeText()
    {
      this.hasVolumeText = false;
      this.volumeText_ = "";
      return this;
    }

    public String getAvgVolume()
    {
      return this.avgVolume_;
    }

    public String getAvgVolumeText()
    {
      return this.avgVolumeText_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDelay()
    {
      return this.delay_;
    }

    public String getDisclaimer()
    {
      return this.disclaimer_;
    }

    public String getDisclaimerUrl()
    {
      return this.disclaimerUrl_;
    }

    public float getHighPrice()
    {
      return this.highPrice_;
    }

    public String getHighText()
    {
      return this.highText_;
    }

    public String getLastChangeTime()
    {
      return this.lastChangeTime_;
    }

    public float getLastPrice()
    {
      return this.lastPrice_;
    }

    public float getLowPrice()
    {
      return this.lowPrice_;
    }

    public String getLowText()
    {
      return this.lowText_;
    }

    public String getMarketCap()
    {
      return this.marketCap_;
    }

    public String getMarketCapText()
    {
      return this.marketCapText_;
    }

    public float getOpenPrice()
    {
      return this.openPrice_;
    }

    public String getOpenText()
    {
      return this.openText_;
    }

    public float getPriceChange()
    {
      return this.priceChange_;
    }

    public float getPricePercentChange()
    {
      return this.pricePercentChange_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLastPrice();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getLastPrice());
      if (hasPriceChange())
        i += CodedOutputStreamMicro.computeFloatSize(2, getPriceChange());
      if (hasPricePercentChange())
        i += CodedOutputStreamMicro.computeFloatSize(3, getPricePercentChange());
      if (hasLastChangeTime())
        i += CodedOutputStreamMicro.computeStringSize(4, getLastChangeTime());
      if (hasOpenPrice())
        i += CodedOutputStreamMicro.computeFloatSize(5, getOpenPrice());
      if (hasOpenText())
        i += CodedOutputStreamMicro.computeStringSize(6, getOpenText());
      if (hasHighPrice())
        i += CodedOutputStreamMicro.computeFloatSize(7, getHighPrice());
      if (hasHighText())
        i += CodedOutputStreamMicro.computeStringSize(8, getHighText());
      if (hasLowPrice())
        i += CodedOutputStreamMicro.computeFloatSize(9, getLowPrice());
      if (hasLowText())
        i += CodedOutputStreamMicro.computeStringSize(10, getLowText());
      if (hasVolume())
        i += CodedOutputStreamMicro.computeStringSize(11, getVolume());
      if (hasVolumeText())
        i += CodedOutputStreamMicro.computeStringSize(12, getVolumeText());
      if (hasAvgVolume())
        i += CodedOutputStreamMicro.computeStringSize(13, getAvgVolume());
      if (hasAvgVolumeText())
        i += CodedOutputStreamMicro.computeStringSize(14, getAvgVolumeText());
      if (hasMarketCap())
        i += CodedOutputStreamMicro.computeStringSize(15, getMarketCap());
      if (hasMarketCapText())
        i += CodedOutputStreamMicro.computeStringSize(16, getMarketCapText());
      if (hasDelay())
        i += CodedOutputStreamMicro.computeStringSize(17, getDelay());
      if (hasDisclaimer())
        i += CodedOutputStreamMicro.computeStringSize(18, getDisclaimer());
      if (hasDisclaimerUrl())
        i += CodedOutputStreamMicro.computeStringSize(19, getDisclaimerUrl());
      this.cachedSize = i;
      return i;
    }

    public String getVolume()
    {
      return this.volume_;
    }

    public String getVolumeText()
    {
      return this.volumeText_;
    }

    public boolean hasAvgVolume()
    {
      return this.hasAvgVolume;
    }

    public boolean hasAvgVolumeText()
    {
      return this.hasAvgVolumeText;
    }

    public boolean hasDelay()
    {
      return this.hasDelay;
    }

    public boolean hasDisclaimer()
    {
      return this.hasDisclaimer;
    }

    public boolean hasDisclaimerUrl()
    {
      return this.hasDisclaimerUrl;
    }

    public boolean hasHighPrice()
    {
      return this.hasHighPrice;
    }

    public boolean hasHighText()
    {
      return this.hasHighText;
    }

    public boolean hasLastChangeTime()
    {
      return this.hasLastChangeTime;
    }

    public boolean hasLastPrice()
    {
      return this.hasLastPrice;
    }

    public boolean hasLowPrice()
    {
      return this.hasLowPrice;
    }

    public boolean hasLowText()
    {
      return this.hasLowText;
    }

    public boolean hasMarketCap()
    {
      return this.hasMarketCap;
    }

    public boolean hasMarketCapText()
    {
      return this.hasMarketCapText;
    }

    public boolean hasOpenPrice()
    {
      return this.hasOpenPrice;
    }

    public boolean hasOpenText()
    {
      return this.hasOpenText;
    }

    public boolean hasPriceChange()
    {
      return this.hasPriceChange;
    }

    public boolean hasPricePercentChange()
    {
      return this.hasPricePercentChange;
    }

    public boolean hasVolume()
    {
      return this.hasVolume;
    }

    public boolean hasVolumeText()
    {
      return this.hasVolumeText;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public StockResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLastPrice(paramCodedInputStreamMicro.readFloat());
          break;
        case 21:
          setPriceChange(paramCodedInputStreamMicro.readFloat());
          break;
        case 29:
          setPricePercentChange(paramCodedInputStreamMicro.readFloat());
          break;
        case 34:
          setLastChangeTime(paramCodedInputStreamMicro.readString());
          break;
        case 45:
          setOpenPrice(paramCodedInputStreamMicro.readFloat());
          break;
        case 50:
          setOpenText(paramCodedInputStreamMicro.readString());
          break;
        case 61:
          setHighPrice(paramCodedInputStreamMicro.readFloat());
          break;
        case 66:
          setHighText(paramCodedInputStreamMicro.readString());
          break;
        case 77:
          setLowPrice(paramCodedInputStreamMicro.readFloat());
          break;
        case 82:
          setLowText(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setVolume(paramCodedInputStreamMicro.readString());
          break;
        case 98:
          setVolumeText(paramCodedInputStreamMicro.readString());
          break;
        case 106:
          setAvgVolume(paramCodedInputStreamMicro.readString());
          break;
        case 114:
          setAvgVolumeText(paramCodedInputStreamMicro.readString());
          break;
        case 122:
          setMarketCap(paramCodedInputStreamMicro.readString());
          break;
        case 130:
          setMarketCapText(paramCodedInputStreamMicro.readString());
          break;
        case 138:
          setDelay(paramCodedInputStreamMicro.readString());
          break;
        case 146:
          setDisclaimer(paramCodedInputStreamMicro.readString());
          break;
        case 154:
        }
        setDisclaimerUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public StockResult setAvgVolume(String paramString)
    {
      this.hasAvgVolume = true;
      this.avgVolume_ = paramString;
      return this;
    }

    public StockResult setAvgVolumeText(String paramString)
    {
      this.hasAvgVolumeText = true;
      this.avgVolumeText_ = paramString;
      return this;
    }

    public StockResult setDelay(String paramString)
    {
      this.hasDelay = true;
      this.delay_ = paramString;
      return this;
    }

    public StockResult setDisclaimer(String paramString)
    {
      this.hasDisclaimer = true;
      this.disclaimer_ = paramString;
      return this;
    }

    public StockResult setDisclaimerUrl(String paramString)
    {
      this.hasDisclaimerUrl = true;
      this.disclaimerUrl_ = paramString;
      return this;
    }

    public StockResult setHighPrice(float paramFloat)
    {
      this.hasHighPrice = true;
      this.highPrice_ = paramFloat;
      return this;
    }

    public StockResult setHighText(String paramString)
    {
      this.hasHighText = true;
      this.highText_ = paramString;
      return this;
    }

    public StockResult setLastChangeTime(String paramString)
    {
      this.hasLastChangeTime = true;
      this.lastChangeTime_ = paramString;
      return this;
    }

    public StockResult setLastPrice(float paramFloat)
    {
      this.hasLastPrice = true;
      this.lastPrice_ = paramFloat;
      return this;
    }

    public StockResult setLowPrice(float paramFloat)
    {
      this.hasLowPrice = true;
      this.lowPrice_ = paramFloat;
      return this;
    }

    public StockResult setLowText(String paramString)
    {
      this.hasLowText = true;
      this.lowText_ = paramString;
      return this;
    }

    public StockResult setMarketCap(String paramString)
    {
      this.hasMarketCap = true;
      this.marketCap_ = paramString;
      return this;
    }

    public StockResult setMarketCapText(String paramString)
    {
      this.hasMarketCapText = true;
      this.marketCapText_ = paramString;
      return this;
    }

    public StockResult setOpenPrice(float paramFloat)
    {
      this.hasOpenPrice = true;
      this.openPrice_ = paramFloat;
      return this;
    }

    public StockResult setOpenText(String paramString)
    {
      this.hasOpenText = true;
      this.openText_ = paramString;
      return this;
    }

    public StockResult setPriceChange(float paramFloat)
    {
      this.hasPriceChange = true;
      this.priceChange_ = paramFloat;
      return this;
    }

    public StockResult setPricePercentChange(float paramFloat)
    {
      this.hasPricePercentChange = true;
      this.pricePercentChange_ = paramFloat;
      return this;
    }

    public StockResult setVolume(String paramString)
    {
      this.hasVolume = true;
      this.volume_ = paramString;
      return this;
    }

    public StockResult setVolumeText(String paramString)
    {
      this.hasVolumeText = true;
      this.volumeText_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLastPrice())
        paramCodedOutputStreamMicro.writeFloat(1, getLastPrice());
      if (hasPriceChange())
        paramCodedOutputStreamMicro.writeFloat(2, getPriceChange());
      if (hasPricePercentChange())
        paramCodedOutputStreamMicro.writeFloat(3, getPricePercentChange());
      if (hasLastChangeTime())
        paramCodedOutputStreamMicro.writeString(4, getLastChangeTime());
      if (hasOpenPrice())
        paramCodedOutputStreamMicro.writeFloat(5, getOpenPrice());
      if (hasOpenText())
        paramCodedOutputStreamMicro.writeString(6, getOpenText());
      if (hasHighPrice())
        paramCodedOutputStreamMicro.writeFloat(7, getHighPrice());
      if (hasHighText())
        paramCodedOutputStreamMicro.writeString(8, getHighText());
      if (hasLowPrice())
        paramCodedOutputStreamMicro.writeFloat(9, getLowPrice());
      if (hasLowText())
        paramCodedOutputStreamMicro.writeString(10, getLowText());
      if (hasVolume())
        paramCodedOutputStreamMicro.writeString(11, getVolume());
      if (hasVolumeText())
        paramCodedOutputStreamMicro.writeString(12, getVolumeText());
      if (hasAvgVolume())
        paramCodedOutputStreamMicro.writeString(13, getAvgVolume());
      if (hasAvgVolumeText())
        paramCodedOutputStreamMicro.writeString(14, getAvgVolumeText());
      if (hasMarketCap())
        paramCodedOutputStreamMicro.writeString(15, getMarketCap());
      if (hasMarketCapText())
        paramCodedOutputStreamMicro.writeString(16, getMarketCapText());
      if (hasDelay())
        paramCodedOutputStreamMicro.writeString(17, getDelay());
      if (hasDisclaimer())
        paramCodedOutputStreamMicro.writeString(18, getDisclaimer());
      if (hasDisclaimerUrl())
        paramCodedOutputStreamMicro.writeString(19, getDisclaimerUrl());
    }
  }

  public static final class Synonym extends MessageMicro
  {
    public static final int PART_OF_SPEECH_FIELD_NUMBER = 1;
    public static final int SYNONYM_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasPartOfSpeech;
    private String partOfSpeech_ = "";
    private List<String> synonym_ = Collections.emptyList();

    public static Synonym parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Synonym().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Synonym parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Synonym)new Synonym().mergeFrom(paramArrayOfByte);
    }

    public Synonym addSynonym(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.synonym_.isEmpty())
        this.synonym_ = new ArrayList();
      this.synonym_.add(paramString);
      return this;
    }

    public final Synonym clear()
    {
      clearPartOfSpeech();
      clearSynonym();
      this.cachedSize = -1;
      return this;
    }

    public Synonym clearPartOfSpeech()
    {
      this.hasPartOfSpeech = false;
      this.partOfSpeech_ = "";
      return this;
    }

    public Synonym clearSynonym()
    {
      this.synonym_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getPartOfSpeech()
    {
      return this.partOfSpeech_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasPartOfSpeech();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPartOfSpeech());
      int j = 0;
      Iterator localIterator = getSynonymList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getSynonymList().size();
      this.cachedSize = k;
      return k;
    }

    public String getSynonym(int paramInt)
    {
      return (String)this.synonym_.get(paramInt);
    }

    public int getSynonymCount()
    {
      return this.synonym_.size();
    }

    public List<String> getSynonymList()
    {
      return this.synonym_;
    }

    public boolean hasPartOfSpeech()
    {
      return this.hasPartOfSpeech;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Synonym mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setPartOfSpeech(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        addSynonym(paramCodedInputStreamMicro.readString());
      }
    }

    public Synonym setPartOfSpeech(String paramString)
    {
      this.hasPartOfSpeech = true;
      this.partOfSpeech_ = paramString;
      return this;
    }

    public Synonym setSynonym(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.synonym_.set(paramInt, paramString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasPartOfSpeech())
        paramCodedOutputStreamMicro.writeString(1, getPartOfSpeech());
      Iterator localIterator = getSynonymList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(2, (String)localIterator.next());
    }
  }

  public static final class TeamData extends MessageMicro
  {
    public static final int DEPRECATED_LOGO_URL_FIELD_NUMBER = 8;
    public static final int IN_PROGRESS_MATCH_FIELD_NUMBER = 7;
    public static final int LAST_MATCH_FIELD_NUMBER = 5;
    public static final int LOGO_FIELD_NUMBER = 9;
    public static final int MATCH_LIST_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int NEXT_MATCH_FIELD_NUMBER = 6;
    public static final int PLAYOFFS_STANDINGS_FIELD_NUMBER = 3;
    public static final int REGULAR_SEASON_STANDINGS_FIELD_NUMBER = 2;
    public static final int SHORT_NAME_FIELD_NUMBER = 10;
    private int cachedSize = -1;
    private String dEPRECATEDLogoUrl_ = "";
    private boolean hasDEPRECATEDLogoUrl;
    private boolean hasInProgressMatch;
    private boolean hasLastMatch;
    private boolean hasLogo;
    private boolean hasMatchList;
    private boolean hasName;
    private boolean hasNextMatch;
    private boolean hasPlayoffsStandings;
    private boolean hasRegularSeasonStandings;
    private boolean hasShortName;
    private EcoutezStructuredResponse.Match inProgressMatch_ = null;
    private EcoutezStructuredResponse.Match lastMatch_ = null;
    private EcoutezStructuredResponse.Logo logo_ = null;
    private EcoutezStructuredResponse.MatchList matchList_ = null;
    private String name_ = "";
    private EcoutezStructuredResponse.Match nextMatch_ = null;
    private EcoutezStructuredResponse.PlayoffsStandings playoffsStandings_ = null;
    private EcoutezStructuredResponse.RegularSeasonStandings regularSeasonStandings_ = null;
    private String shortName_ = "";

    public static TeamData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TeamData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TeamData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TeamData)new TeamData().mergeFrom(paramArrayOfByte);
    }

    public final TeamData clear()
    {
      clearName();
      clearShortName();
      clearDEPRECATEDLogoUrl();
      clearLogo();
      clearRegularSeasonStandings();
      clearPlayoffsStandings();
      clearMatchList();
      clearLastMatch();
      clearNextMatch();
      clearInProgressMatch();
      this.cachedSize = -1;
      return this;
    }

    public TeamData clearDEPRECATEDLogoUrl()
    {
      this.hasDEPRECATEDLogoUrl = false;
      this.dEPRECATEDLogoUrl_ = "";
      return this;
    }

    public TeamData clearInProgressMatch()
    {
      this.hasInProgressMatch = false;
      this.inProgressMatch_ = null;
      return this;
    }

    public TeamData clearLastMatch()
    {
      this.hasLastMatch = false;
      this.lastMatch_ = null;
      return this;
    }

    public TeamData clearLogo()
    {
      this.hasLogo = false;
      this.logo_ = null;
      return this;
    }

    public TeamData clearMatchList()
    {
      this.hasMatchList = false;
      this.matchList_ = null;
      return this;
    }

    public TeamData clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public TeamData clearNextMatch()
    {
      this.hasNextMatch = false;
      this.nextMatch_ = null;
      return this;
    }

    public TeamData clearPlayoffsStandings()
    {
      this.hasPlayoffsStandings = false;
      this.playoffsStandings_ = null;
      return this;
    }

    public TeamData clearRegularSeasonStandings()
    {
      this.hasRegularSeasonStandings = false;
      this.regularSeasonStandings_ = null;
      return this;
    }

    public TeamData clearShortName()
    {
      this.hasShortName = false;
      this.shortName_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDEPRECATEDLogoUrl()
    {
      return this.dEPRECATEDLogoUrl_;
    }

    public EcoutezStructuredResponse.Match getInProgressMatch()
    {
      return this.inProgressMatch_;
    }

    public EcoutezStructuredResponse.Match getLastMatch()
    {
      return this.lastMatch_;
    }

    public EcoutezStructuredResponse.Logo getLogo()
    {
      return this.logo_;
    }

    public EcoutezStructuredResponse.MatchList getMatchList()
    {
      return this.matchList_;
    }

    public String getName()
    {
      return this.name_;
    }

    public EcoutezStructuredResponse.Match getNextMatch()
    {
      return this.nextMatch_;
    }

    public EcoutezStructuredResponse.PlayoffsStandings getPlayoffsStandings()
    {
      return this.playoffsStandings_;
    }

    public EcoutezStructuredResponse.RegularSeasonStandings getRegularSeasonStandings()
    {
      return this.regularSeasonStandings_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      if (hasRegularSeasonStandings())
        i += CodedOutputStreamMicro.computeMessageSize(2, getRegularSeasonStandings());
      if (hasPlayoffsStandings())
        i += CodedOutputStreamMicro.computeMessageSize(3, getPlayoffsStandings());
      if (hasMatchList())
        i += CodedOutputStreamMicro.computeMessageSize(4, getMatchList());
      if (hasLastMatch())
        i += CodedOutputStreamMicro.computeMessageSize(5, getLastMatch());
      if (hasNextMatch())
        i += CodedOutputStreamMicro.computeMessageSize(6, getNextMatch());
      if (hasInProgressMatch())
        i += CodedOutputStreamMicro.computeMessageSize(7, getInProgressMatch());
      if (hasDEPRECATEDLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(8, getDEPRECATEDLogoUrl());
      if (hasLogo())
        i += CodedOutputStreamMicro.computeMessageSize(9, getLogo());
      if (hasShortName())
        i += CodedOutputStreamMicro.computeStringSize(10, getShortName());
      this.cachedSize = i;
      return i;
    }

    public String getShortName()
    {
      return this.shortName_;
    }

    public boolean hasDEPRECATEDLogoUrl()
    {
      return this.hasDEPRECATEDLogoUrl;
    }

    public boolean hasInProgressMatch()
    {
      return this.hasInProgressMatch;
    }

    public boolean hasLastMatch()
    {
      return this.hasLastMatch;
    }

    public boolean hasLogo()
    {
      return this.hasLogo;
    }

    public boolean hasMatchList()
    {
      return this.hasMatchList;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasNextMatch()
    {
      return this.hasNextMatch;
    }

    public boolean hasPlayoffsStandings()
    {
      return this.hasPlayoffsStandings;
    }

    public boolean hasRegularSeasonStandings()
    {
      return this.hasRegularSeasonStandings;
    }

    public boolean hasShortName()
    {
      return this.hasShortName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TeamData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          EcoutezStructuredResponse.RegularSeasonStandings localRegularSeasonStandings = new EcoutezStructuredResponse.RegularSeasonStandings();
          paramCodedInputStreamMicro.readMessage(localRegularSeasonStandings);
          setRegularSeasonStandings(localRegularSeasonStandings);
          break;
        case 26:
          EcoutezStructuredResponse.PlayoffsStandings localPlayoffsStandings = new EcoutezStructuredResponse.PlayoffsStandings();
          paramCodedInputStreamMicro.readMessage(localPlayoffsStandings);
          setPlayoffsStandings(localPlayoffsStandings);
          break;
        case 34:
          EcoutezStructuredResponse.MatchList localMatchList = new EcoutezStructuredResponse.MatchList();
          paramCodedInputStreamMicro.readMessage(localMatchList);
          setMatchList(localMatchList);
          break;
        case 42:
          EcoutezStructuredResponse.Match localMatch3 = new EcoutezStructuredResponse.Match();
          paramCodedInputStreamMicro.readMessage(localMatch3);
          setLastMatch(localMatch3);
          break;
        case 50:
          EcoutezStructuredResponse.Match localMatch2 = new EcoutezStructuredResponse.Match();
          paramCodedInputStreamMicro.readMessage(localMatch2);
          setNextMatch(localMatch2);
          break;
        case 58:
          EcoutezStructuredResponse.Match localMatch1 = new EcoutezStructuredResponse.Match();
          paramCodedInputStreamMicro.readMessage(localMatch1);
          setInProgressMatch(localMatch1);
          break;
        case 66:
          setDEPRECATEDLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          EcoutezStructuredResponse.Logo localLogo = new EcoutezStructuredResponse.Logo();
          paramCodedInputStreamMicro.readMessage(localLogo);
          setLogo(localLogo);
          break;
        case 82:
        }
        setShortName(paramCodedInputStreamMicro.readString());
      }
    }

    public TeamData setDEPRECATEDLogoUrl(String paramString)
    {
      this.hasDEPRECATEDLogoUrl = true;
      this.dEPRECATEDLogoUrl_ = paramString;
      return this;
    }

    public TeamData setInProgressMatch(EcoutezStructuredResponse.Match paramMatch)
    {
      if (paramMatch == null)
        throw new NullPointerException();
      this.hasInProgressMatch = true;
      this.inProgressMatch_ = paramMatch;
      return this;
    }

    public TeamData setLastMatch(EcoutezStructuredResponse.Match paramMatch)
    {
      if (paramMatch == null)
        throw new NullPointerException();
      this.hasLastMatch = true;
      this.lastMatch_ = paramMatch;
      return this;
    }

    public TeamData setLogo(EcoutezStructuredResponse.Logo paramLogo)
    {
      if (paramLogo == null)
        throw new NullPointerException();
      this.hasLogo = true;
      this.logo_ = paramLogo;
      return this;
    }

    public TeamData setMatchList(EcoutezStructuredResponse.MatchList paramMatchList)
    {
      if (paramMatchList == null)
        throw new NullPointerException();
      this.hasMatchList = true;
      this.matchList_ = paramMatchList;
      return this;
    }

    public TeamData setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public TeamData setNextMatch(EcoutezStructuredResponse.Match paramMatch)
    {
      if (paramMatch == null)
        throw new NullPointerException();
      this.hasNextMatch = true;
      this.nextMatch_ = paramMatch;
      return this;
    }

    public TeamData setPlayoffsStandings(EcoutezStructuredResponse.PlayoffsStandings paramPlayoffsStandings)
    {
      if (paramPlayoffsStandings == null)
        throw new NullPointerException();
      this.hasPlayoffsStandings = true;
      this.playoffsStandings_ = paramPlayoffsStandings;
      return this;
    }

    public TeamData setRegularSeasonStandings(EcoutezStructuredResponse.RegularSeasonStandings paramRegularSeasonStandings)
    {
      if (paramRegularSeasonStandings == null)
        throw new NullPointerException();
      this.hasRegularSeasonStandings = true;
      this.regularSeasonStandings_ = paramRegularSeasonStandings;
      return this;
    }

    public TeamData setShortName(String paramString)
    {
      this.hasShortName = true;
      this.shortName_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasRegularSeasonStandings())
        paramCodedOutputStreamMicro.writeMessage(2, getRegularSeasonStandings());
      if (hasPlayoffsStandings())
        paramCodedOutputStreamMicro.writeMessage(3, getPlayoffsStandings());
      if (hasMatchList())
        paramCodedOutputStreamMicro.writeMessage(4, getMatchList());
      if (hasLastMatch())
        paramCodedOutputStreamMicro.writeMessage(5, getLastMatch());
      if (hasNextMatch())
        paramCodedOutputStreamMicro.writeMessage(6, getNextMatch());
      if (hasInProgressMatch())
        paramCodedOutputStreamMicro.writeMessage(7, getInProgressMatch());
      if (hasDEPRECATEDLogoUrl())
        paramCodedOutputStreamMicro.writeString(8, getDEPRECATEDLogoUrl());
      if (hasLogo())
        paramCodedOutputStreamMicro.writeMessage(9, getLogo());
      if (hasShortName())
        paramCodedOutputStreamMicro.writeString(10, getShortName());
    }
  }

  public static final class TeamVsTeamData extends MessageMicro
  {
    public static final int DEPRECATED_FIRST_TEAM_LOGO_URL_FIELD_NUMBER = 4;
    public static final int DEPRECATED_SECOND_TEAM_LOGO_URL_FIELD_NUMBER = 5;
    public static final int FIRST_TEAM_FIELD_NUMBER = 1;
    public static final int FIRST_TEAM_LOGO_FIELD_NUMBER = 6;
    public static final int FIRST_TEAM_SHORT_NAME_FIELD_NUMBER = 8;
    public static final int MATCH_LIST_FIELD_NUMBER = 3;
    public static final int SECOND_TEAM_FIELD_NUMBER = 2;
    public static final int SECOND_TEAM_LOGO_FIELD_NUMBER = 7;
    public static final int SECOND_TEAM_SHORT_NAME_FIELD_NUMBER = 9;
    private int cachedSize = -1;
    private String dEPRECATEDFirstTeamLogoUrl_ = "";
    private String dEPRECATEDSecondTeamLogoUrl_ = "";
    private EcoutezStructuredResponse.Logo firstTeamLogo_ = null;
    private String firstTeamShortName_ = "";
    private String firstTeam_ = "";
    private boolean hasDEPRECATEDFirstTeamLogoUrl;
    private boolean hasDEPRECATEDSecondTeamLogoUrl;
    private boolean hasFirstTeam;
    private boolean hasFirstTeamLogo;
    private boolean hasFirstTeamShortName;
    private boolean hasMatchList;
    private boolean hasSecondTeam;
    private boolean hasSecondTeamLogo;
    private boolean hasSecondTeamShortName;
    private EcoutezStructuredResponse.MatchList matchList_ = null;
    private EcoutezStructuredResponse.Logo secondTeamLogo_ = null;
    private String secondTeamShortName_ = "";
    private String secondTeam_ = "";

    public static TeamVsTeamData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TeamVsTeamData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TeamVsTeamData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TeamVsTeamData)new TeamVsTeamData().mergeFrom(paramArrayOfByte);
    }

    public final TeamVsTeamData clear()
    {
      clearFirstTeam();
      clearFirstTeamShortName();
      clearDEPRECATEDFirstTeamLogoUrl();
      clearFirstTeamLogo();
      clearSecondTeam();
      clearSecondTeamShortName();
      clearDEPRECATEDSecondTeamLogoUrl();
      clearSecondTeamLogo();
      clearMatchList();
      this.cachedSize = -1;
      return this;
    }

    public TeamVsTeamData clearDEPRECATEDFirstTeamLogoUrl()
    {
      this.hasDEPRECATEDFirstTeamLogoUrl = false;
      this.dEPRECATEDFirstTeamLogoUrl_ = "";
      return this;
    }

    public TeamVsTeamData clearDEPRECATEDSecondTeamLogoUrl()
    {
      this.hasDEPRECATEDSecondTeamLogoUrl = false;
      this.dEPRECATEDSecondTeamLogoUrl_ = "";
      return this;
    }

    public TeamVsTeamData clearFirstTeam()
    {
      this.hasFirstTeam = false;
      this.firstTeam_ = "";
      return this;
    }

    public TeamVsTeamData clearFirstTeamLogo()
    {
      this.hasFirstTeamLogo = false;
      this.firstTeamLogo_ = null;
      return this;
    }

    public TeamVsTeamData clearFirstTeamShortName()
    {
      this.hasFirstTeamShortName = false;
      this.firstTeamShortName_ = "";
      return this;
    }

    public TeamVsTeamData clearMatchList()
    {
      this.hasMatchList = false;
      this.matchList_ = null;
      return this;
    }

    public TeamVsTeamData clearSecondTeam()
    {
      this.hasSecondTeam = false;
      this.secondTeam_ = "";
      return this;
    }

    public TeamVsTeamData clearSecondTeamLogo()
    {
      this.hasSecondTeamLogo = false;
      this.secondTeamLogo_ = null;
      return this;
    }

    public TeamVsTeamData clearSecondTeamShortName()
    {
      this.hasSecondTeamShortName = false;
      this.secondTeamShortName_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDEPRECATEDFirstTeamLogoUrl()
    {
      return this.dEPRECATEDFirstTeamLogoUrl_;
    }

    public String getDEPRECATEDSecondTeamLogoUrl()
    {
      return this.dEPRECATEDSecondTeamLogoUrl_;
    }

    public String getFirstTeam()
    {
      return this.firstTeam_;
    }

    public EcoutezStructuredResponse.Logo getFirstTeamLogo()
    {
      return this.firstTeamLogo_;
    }

    public String getFirstTeamShortName()
    {
      return this.firstTeamShortName_;
    }

    public EcoutezStructuredResponse.MatchList getMatchList()
    {
      return this.matchList_;
    }

    public String getSecondTeam()
    {
      return this.secondTeam_;
    }

    public EcoutezStructuredResponse.Logo getSecondTeamLogo()
    {
      return this.secondTeamLogo_;
    }

    public String getSecondTeamShortName()
    {
      return this.secondTeamShortName_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFirstTeam();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFirstTeam());
      if (hasSecondTeam())
        i += CodedOutputStreamMicro.computeStringSize(2, getSecondTeam());
      if (hasMatchList())
        i += CodedOutputStreamMicro.computeMessageSize(3, getMatchList());
      if (hasDEPRECATEDFirstTeamLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getDEPRECATEDFirstTeamLogoUrl());
      if (hasDEPRECATEDSecondTeamLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(5, getDEPRECATEDSecondTeamLogoUrl());
      if (hasFirstTeamLogo())
        i += CodedOutputStreamMicro.computeMessageSize(6, getFirstTeamLogo());
      if (hasSecondTeamLogo())
        i += CodedOutputStreamMicro.computeMessageSize(7, getSecondTeamLogo());
      if (hasFirstTeamShortName())
        i += CodedOutputStreamMicro.computeStringSize(8, getFirstTeamShortName());
      if (hasSecondTeamShortName())
        i += CodedOutputStreamMicro.computeStringSize(9, getSecondTeamShortName());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDEPRECATEDFirstTeamLogoUrl()
    {
      return this.hasDEPRECATEDFirstTeamLogoUrl;
    }

    public boolean hasDEPRECATEDSecondTeamLogoUrl()
    {
      return this.hasDEPRECATEDSecondTeamLogoUrl;
    }

    public boolean hasFirstTeam()
    {
      return this.hasFirstTeam;
    }

    public boolean hasFirstTeamLogo()
    {
      return this.hasFirstTeamLogo;
    }

    public boolean hasFirstTeamShortName()
    {
      return this.hasFirstTeamShortName;
    }

    public boolean hasMatchList()
    {
      return this.hasMatchList;
    }

    public boolean hasSecondTeam()
    {
      return this.hasSecondTeam;
    }

    public boolean hasSecondTeamLogo()
    {
      return this.hasSecondTeamLogo;
    }

    public boolean hasSecondTeamShortName()
    {
      return this.hasSecondTeamShortName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TeamVsTeamData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setFirstTeam(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setSecondTeam(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          EcoutezStructuredResponse.MatchList localMatchList = new EcoutezStructuredResponse.MatchList();
          paramCodedInputStreamMicro.readMessage(localMatchList);
          setMatchList(localMatchList);
          break;
        case 34:
          setDEPRECATEDFirstTeamLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setDEPRECATEDSecondTeamLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          EcoutezStructuredResponse.Logo localLogo2 = new EcoutezStructuredResponse.Logo();
          paramCodedInputStreamMicro.readMessage(localLogo2);
          setFirstTeamLogo(localLogo2);
          break;
        case 58:
          EcoutezStructuredResponse.Logo localLogo1 = new EcoutezStructuredResponse.Logo();
          paramCodedInputStreamMicro.readMessage(localLogo1);
          setSecondTeamLogo(localLogo1);
          break;
        case 66:
          setFirstTeamShortName(paramCodedInputStreamMicro.readString());
          break;
        case 74:
        }
        setSecondTeamShortName(paramCodedInputStreamMicro.readString());
      }
    }

    public TeamVsTeamData setDEPRECATEDFirstTeamLogoUrl(String paramString)
    {
      this.hasDEPRECATEDFirstTeamLogoUrl = true;
      this.dEPRECATEDFirstTeamLogoUrl_ = paramString;
      return this;
    }

    public TeamVsTeamData setDEPRECATEDSecondTeamLogoUrl(String paramString)
    {
      this.hasDEPRECATEDSecondTeamLogoUrl = true;
      this.dEPRECATEDSecondTeamLogoUrl_ = paramString;
      return this;
    }

    public TeamVsTeamData setFirstTeam(String paramString)
    {
      this.hasFirstTeam = true;
      this.firstTeam_ = paramString;
      return this;
    }

    public TeamVsTeamData setFirstTeamLogo(EcoutezStructuredResponse.Logo paramLogo)
    {
      if (paramLogo == null)
        throw new NullPointerException();
      this.hasFirstTeamLogo = true;
      this.firstTeamLogo_ = paramLogo;
      return this;
    }

    public TeamVsTeamData setFirstTeamShortName(String paramString)
    {
      this.hasFirstTeamShortName = true;
      this.firstTeamShortName_ = paramString;
      return this;
    }

    public TeamVsTeamData setMatchList(EcoutezStructuredResponse.MatchList paramMatchList)
    {
      if (paramMatchList == null)
        throw new NullPointerException();
      this.hasMatchList = true;
      this.matchList_ = paramMatchList;
      return this;
    }

    public TeamVsTeamData setSecondTeam(String paramString)
    {
      this.hasSecondTeam = true;
      this.secondTeam_ = paramString;
      return this;
    }

    public TeamVsTeamData setSecondTeamLogo(EcoutezStructuredResponse.Logo paramLogo)
    {
      if (paramLogo == null)
        throw new NullPointerException();
      this.hasSecondTeamLogo = true;
      this.secondTeamLogo_ = paramLogo;
      return this;
    }

    public TeamVsTeamData setSecondTeamShortName(String paramString)
    {
      this.hasSecondTeamShortName = true;
      this.secondTeamShortName_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFirstTeam())
        paramCodedOutputStreamMicro.writeString(1, getFirstTeam());
      if (hasSecondTeam())
        paramCodedOutputStreamMicro.writeString(2, getSecondTeam());
      if (hasMatchList())
        paramCodedOutputStreamMicro.writeMessage(3, getMatchList());
      if (hasDEPRECATEDFirstTeamLogoUrl())
        paramCodedOutputStreamMicro.writeString(4, getDEPRECATEDFirstTeamLogoUrl());
      if (hasDEPRECATEDSecondTeamLogoUrl())
        paramCodedOutputStreamMicro.writeString(5, getDEPRECATEDSecondTeamLogoUrl());
      if (hasFirstTeamLogo())
        paramCodedOutputStreamMicro.writeMessage(6, getFirstTeamLogo());
      if (hasSecondTeamLogo())
        paramCodedOutputStreamMicro.writeMessage(7, getSecondTeamLogo());
      if (hasFirstTeamShortName())
        paramCodedOutputStreamMicro.writeString(8, getFirstTeamShortName());
      if (hasSecondTeamShortName())
        paramCodedOutputStreamMicro.writeString(9, getSecondTeamShortName());
    }
  }

  public static final class WeatherCondition extends MessageMicro
  {
    public static final int CONDITION_TYPE_CLEAR = 10;
    public static final int CONDITION_TYPE_CLOUDY = 47;
    public static final int CONDITION_TYPE_FOG = 85;
    public static final int CONDITION_TYPE_HEAVY_RAIN = 87;
    public static final int CONDITION_TYPE_HEAVY_SNOW = 88;
    public static final int CONDITION_TYPE_LIGHT_RAIN = 162;
    public static final int CONDITION_TYPE_LIGHT_SNOW = 148;
    public static final int CONDITION_TYPE_MIST = 258;
    public static final int CONDITION_TYPE_PARTLY_CLOUDY = 262;
    public static final int CONDITION_TYPE_RAIN = 94;
    public static final int CONDITION_TYPE_SLEET = 145;
    public static final int CONDITION_TYPE_SNOW = 117;
    public static final int CONDITION_TYPE_SUNNY = 138;
    public static final int CONDITION_TYPE_THUNDERSTORM = 139;
    public static final int CONDITION_TYPE_UNKNOWN = 0;
    public static final int CONDITION_TYPE_WINDY = 291;
    public static final int IMAGE_HEIGHT_FIELD_NUMBER = 5;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    public static final int IMAGE_WIDTH_FIELD_NUMBER = 4;
    public static final int TEXT_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasImageHeight;
    private boolean hasImageUrl;
    private boolean hasImageWidth;
    private boolean hasText;
    private boolean hasType;
    private int imageHeight_ = 0;
    private String imageUrl_ = "";
    private int imageWidth_ = 0;
    private String text_ = "";
    private int type_ = 0;

    public static WeatherCondition parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new WeatherCondition().mergeFrom(paramCodedInputStreamMicro);
    }

    public static WeatherCondition parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (WeatherCondition)new WeatherCondition().mergeFrom(paramArrayOfByte);
    }

    public final WeatherCondition clear()
    {
      clearType();
      clearText();
      clearImageUrl();
      clearImageWidth();
      clearImageHeight();
      this.cachedSize = -1;
      return this;
    }

    public WeatherCondition clearImageHeight()
    {
      this.hasImageHeight = false;
      this.imageHeight_ = 0;
      return this;
    }

    public WeatherCondition clearImageUrl()
    {
      this.hasImageUrl = false;
      this.imageUrl_ = "";
      return this;
    }

    public WeatherCondition clearImageWidth()
    {
      this.hasImageWidth = false;
      this.imageWidth_ = 0;
      return this;
    }

    public WeatherCondition clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public WeatherCondition clearType()
    {
      this.hasType = false;
      this.type_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getImageHeight()
    {
      return this.imageHeight_;
    }

    public String getImageUrl()
    {
      return this.imageUrl_;
    }

    public int getImageWidth()
    {
      return this.imageWidth_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasText())
        i += CodedOutputStreamMicro.computeStringSize(2, getText());
      if (hasImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(3, getImageUrl());
      if (hasImageWidth())
        i += CodedOutputStreamMicro.computeInt32Size(4, getImageWidth());
      if (hasImageHeight())
        i += CodedOutputStreamMicro.computeInt32Size(5, getImageHeight());
      this.cachedSize = i;
      return i;
    }

    public String getText()
    {
      return this.text_;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasImageHeight()
    {
      return this.hasImageHeight;
    }

    public boolean hasImageUrl()
    {
      return this.hasImageUrl;
    }

    public boolean hasImageWidth()
    {
      return this.hasImageWidth;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public WeatherCondition mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setType(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 32:
          setImageWidth(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
        }
        setImageHeight(paramCodedInputStreamMicro.readInt32());
      }
    }

    public WeatherCondition setImageHeight(int paramInt)
    {
      this.hasImageHeight = true;
      this.imageHeight_ = paramInt;
      return this;
    }

    public WeatherCondition setImageUrl(String paramString)
    {
      this.hasImageUrl = true;
      this.imageUrl_ = paramString;
      return this;
    }

    public WeatherCondition setImageWidth(int paramInt)
    {
      this.hasImageWidth = true;
      this.imageWidth_ = paramInt;
      return this;
    }

    public WeatherCondition setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public WeatherCondition setType(int paramInt)
    {
      this.hasType = true;
      this.type_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasType())
        paramCodedOutputStreamMicro.writeInt32(1, getType());
      if (hasText())
        paramCodedOutputStreamMicro.writeString(2, getText());
      if (hasImageUrl())
        paramCodedOutputStreamMicro.writeString(3, getImageUrl());
      if (hasImageWidth())
        paramCodedOutputStreamMicro.writeInt32(4, getImageWidth());
      if (hasImageHeight())
        paramCodedOutputStreamMicro.writeInt32(5, getImageHeight());
    }
  }

  public static final class WeatherLocation extends MessageMicro
  {
    public static final int CITY_FIELD_NUMBER = 2;
    public static final int FORMATTED_ADDRESS_FIELD_NUMBER = 1;
    public static final int TIME_ZONE_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private String city_ = "";
    private String formattedAddress_ = "";
    private boolean hasCity;
    private boolean hasFormattedAddress;
    private boolean hasTimeZone;
    private String timeZone_ = "";

    public static WeatherLocation parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new WeatherLocation().mergeFrom(paramCodedInputStreamMicro);
    }

    public static WeatherLocation parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (WeatherLocation)new WeatherLocation().mergeFrom(paramArrayOfByte);
    }

    public final WeatherLocation clear()
    {
      clearFormattedAddress();
      clearCity();
      clearTimeZone();
      this.cachedSize = -1;
      return this;
    }

    public WeatherLocation clearCity()
    {
      this.hasCity = false;
      this.city_ = "";
      return this;
    }

    public WeatherLocation clearFormattedAddress()
    {
      this.hasFormattedAddress = false;
      this.formattedAddress_ = "";
      return this;
    }

    public WeatherLocation clearTimeZone()
    {
      this.hasTimeZone = false;
      this.timeZone_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getCity()
    {
      return this.city_;
    }

    public String getFormattedAddress()
    {
      return this.formattedAddress_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFormattedAddress();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFormattedAddress());
      if (hasCity())
        i += CodedOutputStreamMicro.computeStringSize(2, getCity());
      if (hasTimeZone())
        i += CodedOutputStreamMicro.computeStringSize(3, getTimeZone());
      this.cachedSize = i;
      return i;
    }

    public String getTimeZone()
    {
      return this.timeZone_;
    }

    public boolean hasCity()
    {
      return this.hasCity;
    }

    public boolean hasFormattedAddress()
    {
      return this.hasFormattedAddress;
    }

    public boolean hasTimeZone()
    {
      return this.hasTimeZone;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public WeatherLocation mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setFormattedAddress(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setCity(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        setTimeZone(paramCodedInputStreamMicro.readString());
      }
    }

    public WeatherLocation setCity(String paramString)
    {
      this.hasCity = true;
      this.city_ = paramString;
      return this;
    }

    public WeatherLocation setFormattedAddress(String paramString)
    {
      this.hasFormattedAddress = true;
      this.formattedAddress_ = paramString;
      return this;
    }

    public WeatherLocation setTimeZone(String paramString)
    {
      this.hasTimeZone = true;
      this.timeZone_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFormattedAddress())
        paramCodedOutputStreamMicro.writeString(1, getFormattedAddress());
      if (hasCity())
        paramCodedOutputStreamMicro.writeString(2, getCity());
      if (hasTimeZone())
        paramCodedOutputStreamMicro.writeString(3, getTimeZone());
    }
  }

  public static final class WeatherResult extends MessageMicro
  {
    public static final int CURRENT_FIELD_NUMBER = 2;
    public static final int DAILY_FORECAST_FIELD_NUMBER = 4;
    public static final int FORECAST_START_DATE_FIELD_NUMBER = 3;
    public static final int HOURLY_FORECAST_FIELD_NUMBER = 5;
    public static final int IN_METRIC_UNITS_FIELD_NUMBER = 6;
    public static final int LOCATION_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private EcoutezStructuredResponse.WeatherState current_ = null;
    private List<EcoutezStructuredResponse.DailyForecast> dailyForecast_ = Collections.emptyList();
    private String forecastStartDate_ = "";
    private boolean hasCurrent;
    private boolean hasForecastStartDate;
    private boolean hasHourlyForecast;
    private boolean hasInMetricUnits;
    private boolean hasLocation;
    private EcoutezStructuredResponse.HourlyForecast hourlyForecast_ = null;
    private boolean inMetricUnits_ = false;
    private EcoutezStructuredResponse.WeatherLocation location_ = null;

    public static WeatherResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new WeatherResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static WeatherResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (WeatherResult)new WeatherResult().mergeFrom(paramArrayOfByte);
    }

    public WeatherResult addDailyForecast(EcoutezStructuredResponse.DailyForecast paramDailyForecast)
    {
      if (paramDailyForecast == null)
        throw new NullPointerException();
      if (this.dailyForecast_.isEmpty())
        this.dailyForecast_ = new ArrayList();
      this.dailyForecast_.add(paramDailyForecast);
      return this;
    }

    public final WeatherResult clear()
    {
      clearLocation();
      clearCurrent();
      clearForecastStartDate();
      clearDailyForecast();
      clearHourlyForecast();
      clearInMetricUnits();
      this.cachedSize = -1;
      return this;
    }

    public WeatherResult clearCurrent()
    {
      this.hasCurrent = false;
      this.current_ = null;
      return this;
    }

    public WeatherResult clearDailyForecast()
    {
      this.dailyForecast_ = Collections.emptyList();
      return this;
    }

    public WeatherResult clearForecastStartDate()
    {
      this.hasForecastStartDate = false;
      this.forecastStartDate_ = "";
      return this;
    }

    public WeatherResult clearHourlyForecast()
    {
      this.hasHourlyForecast = false;
      this.hourlyForecast_ = null;
      return this;
    }

    public WeatherResult clearInMetricUnits()
    {
      this.hasInMetricUnits = false;
      this.inMetricUnits_ = false;
      return this;
    }

    public WeatherResult clearLocation()
    {
      this.hasLocation = false;
      this.location_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.WeatherState getCurrent()
    {
      return this.current_;
    }

    public EcoutezStructuredResponse.DailyForecast getDailyForecast(int paramInt)
    {
      return (EcoutezStructuredResponse.DailyForecast)this.dailyForecast_.get(paramInt);
    }

    public int getDailyForecastCount()
    {
      return this.dailyForecast_.size();
    }

    public List<EcoutezStructuredResponse.DailyForecast> getDailyForecastList()
    {
      return this.dailyForecast_;
    }

    public String getForecastStartDate()
    {
      return this.forecastStartDate_;
    }

    public EcoutezStructuredResponse.HourlyForecast getHourlyForecast()
    {
      return this.hourlyForecast_;
    }

    public boolean getInMetricUnits()
    {
      return this.inMetricUnits_;
    }

    public EcoutezStructuredResponse.WeatherLocation getLocation()
    {
      return this.location_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLocation());
      if (hasCurrent())
        i += CodedOutputStreamMicro.computeMessageSize(2, getCurrent());
      if (hasForecastStartDate())
        i += CodedOutputStreamMicro.computeStringSize(3, getForecastStartDate());
      Iterator localIterator = getDailyForecastList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (EcoutezStructuredResponse.DailyForecast)localIterator.next());
      if (hasHourlyForecast())
        i += CodedOutputStreamMicro.computeMessageSize(5, getHourlyForecast());
      if (hasInMetricUnits())
        i += CodedOutputStreamMicro.computeBoolSize(6, getInMetricUnits());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCurrent()
    {
      return this.hasCurrent;
    }

    public boolean hasForecastStartDate()
    {
      return this.hasForecastStartDate;
    }

    public boolean hasHourlyForecast()
    {
      return this.hasHourlyForecast;
    }

    public boolean hasInMetricUnits()
    {
      return this.hasInMetricUnits;
    }

    public boolean hasLocation()
    {
      return this.hasLocation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public WeatherResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.WeatherLocation localWeatherLocation = new EcoutezStructuredResponse.WeatherLocation();
          paramCodedInputStreamMicro.readMessage(localWeatherLocation);
          setLocation(localWeatherLocation);
          break;
        case 18:
          EcoutezStructuredResponse.WeatherState localWeatherState = new EcoutezStructuredResponse.WeatherState();
          paramCodedInputStreamMicro.readMessage(localWeatherState);
          setCurrent(localWeatherState);
          break;
        case 26:
          setForecastStartDate(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          EcoutezStructuredResponse.DailyForecast localDailyForecast = new EcoutezStructuredResponse.DailyForecast();
          paramCodedInputStreamMicro.readMessage(localDailyForecast);
          addDailyForecast(localDailyForecast);
          break;
        case 42:
          EcoutezStructuredResponse.HourlyForecast localHourlyForecast = new EcoutezStructuredResponse.HourlyForecast();
          paramCodedInputStreamMicro.readMessage(localHourlyForecast);
          setHourlyForecast(localHourlyForecast);
          break;
        case 48:
        }
        setInMetricUnits(paramCodedInputStreamMicro.readBool());
      }
    }

    public WeatherResult setCurrent(EcoutezStructuredResponse.WeatherState paramWeatherState)
    {
      if (paramWeatherState == null)
        throw new NullPointerException();
      this.hasCurrent = true;
      this.current_ = paramWeatherState;
      return this;
    }

    public WeatherResult setDailyForecast(int paramInt, EcoutezStructuredResponse.DailyForecast paramDailyForecast)
    {
      if (paramDailyForecast == null)
        throw new NullPointerException();
      this.dailyForecast_.set(paramInt, paramDailyForecast);
      return this;
    }

    public WeatherResult setForecastStartDate(String paramString)
    {
      this.hasForecastStartDate = true;
      this.forecastStartDate_ = paramString;
      return this;
    }

    public WeatherResult setHourlyForecast(EcoutezStructuredResponse.HourlyForecast paramHourlyForecast)
    {
      if (paramHourlyForecast == null)
        throw new NullPointerException();
      this.hasHourlyForecast = true;
      this.hourlyForecast_ = paramHourlyForecast;
      return this;
    }

    public WeatherResult setInMetricUnits(boolean paramBoolean)
    {
      this.hasInMetricUnits = true;
      this.inMetricUnits_ = paramBoolean;
      return this;
    }

    public WeatherResult setLocation(EcoutezStructuredResponse.WeatherLocation paramWeatherLocation)
    {
      if (paramWeatherLocation == null)
        throw new NullPointerException();
      this.hasLocation = true;
      this.location_ = paramWeatherLocation;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocation())
        paramCodedOutputStreamMicro.writeMessage(1, getLocation());
      if (hasCurrent())
        paramCodedOutputStreamMicro.writeMessage(2, getCurrent());
      if (hasForecastStartDate())
        paramCodedOutputStreamMicro.writeString(3, getForecastStartDate());
      Iterator localIterator = getDailyForecastList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (EcoutezStructuredResponse.DailyForecast)localIterator.next());
      if (hasHourlyForecast())
        paramCodedOutputStreamMicro.writeMessage(5, getHourlyForecast());
      if (hasInMetricUnits())
        paramCodedOutputStreamMicro.writeBool(6, getInMetricUnits());
    }
  }

  public static final class WeatherState extends MessageMicro
  {
    public static final int CHANCE_OF_PRECIPITATION_FIELD_NUMBER = 6;
    public static final int CONDITION_FIELD_NUMBER = 1;
    public static final int HUMIDITY_FIELD_NUMBER = 5;
    public static final int TEMP_FIELD_NUMBER = 2;
    public static final int WIND_DIRECTION_FIELD_NUMBER = 3;
    public static final int WIND_SPEED_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private int chanceOfPrecipitation_ = 0;
    private EcoutezStructuredResponse.WeatherCondition condition_ = null;
    private boolean hasChanceOfPrecipitation;
    private boolean hasCondition;
    private boolean hasHumidity;
    private boolean hasTemp;
    private boolean hasWindDirection;
    private boolean hasWindSpeed;
    private int humidity_ = 0;
    private int temp_ = 0;
    private int windDirection_ = 0;
    private int windSpeed_ = 0;

    public static WeatherState parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new WeatherState().mergeFrom(paramCodedInputStreamMicro);
    }

    public static WeatherState parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (WeatherState)new WeatherState().mergeFrom(paramArrayOfByte);
    }

    public final WeatherState clear()
    {
      clearCondition();
      clearTemp();
      clearWindDirection();
      clearWindSpeed();
      clearHumidity();
      clearChanceOfPrecipitation();
      this.cachedSize = -1;
      return this;
    }

    public WeatherState clearChanceOfPrecipitation()
    {
      this.hasChanceOfPrecipitation = false;
      this.chanceOfPrecipitation_ = 0;
      return this;
    }

    public WeatherState clearCondition()
    {
      this.hasCondition = false;
      this.condition_ = null;
      return this;
    }

    public WeatherState clearHumidity()
    {
      this.hasHumidity = false;
      this.humidity_ = 0;
      return this;
    }

    public WeatherState clearTemp()
    {
      this.hasTemp = false;
      this.temp_ = 0;
      return this;
    }

    public WeatherState clearWindDirection()
    {
      this.hasWindDirection = false;
      this.windDirection_ = 0;
      return this;
    }

    public WeatherState clearWindSpeed()
    {
      this.hasWindSpeed = false;
      this.windSpeed_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getChanceOfPrecipitation()
    {
      return this.chanceOfPrecipitation_;
    }

    public EcoutezStructuredResponse.WeatherCondition getCondition()
    {
      return this.condition_;
    }

    public int getHumidity()
    {
      return this.humidity_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCondition();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getCondition());
      if (hasTemp())
        i += CodedOutputStreamMicro.computeInt32Size(2, getTemp());
      if (hasWindDirection())
        i += CodedOutputStreamMicro.computeInt32Size(3, getWindDirection());
      if (hasWindSpeed())
        i += CodedOutputStreamMicro.computeInt32Size(4, getWindSpeed());
      if (hasHumidity())
        i += CodedOutputStreamMicro.computeInt32Size(5, getHumidity());
      if (hasChanceOfPrecipitation())
        i += CodedOutputStreamMicro.computeInt32Size(6, getChanceOfPrecipitation());
      this.cachedSize = i;
      return i;
    }

    public int getTemp()
    {
      return this.temp_;
    }

    public int getWindDirection()
    {
      return this.windDirection_;
    }

    public int getWindSpeed()
    {
      return this.windSpeed_;
    }

    public boolean hasChanceOfPrecipitation()
    {
      return this.hasChanceOfPrecipitation;
    }

    public boolean hasCondition()
    {
      return this.hasCondition;
    }

    public boolean hasHumidity()
    {
      return this.hasHumidity;
    }

    public boolean hasTemp()
    {
      return this.hasTemp;
    }

    public boolean hasWindDirection()
    {
      return this.hasWindDirection;
    }

    public boolean hasWindSpeed()
    {
      return this.hasWindSpeed;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public WeatherState mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.WeatherCondition localWeatherCondition = new EcoutezStructuredResponse.WeatherCondition();
          paramCodedInputStreamMicro.readMessage(localWeatherCondition);
          setCondition(localWeatherCondition);
          break;
        case 16:
          setTemp(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setWindDirection(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setWindSpeed(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
          setHumidity(paramCodedInputStreamMicro.readInt32());
          break;
        case 48:
        }
        setChanceOfPrecipitation(paramCodedInputStreamMicro.readInt32());
      }
    }

    public WeatherState setChanceOfPrecipitation(int paramInt)
    {
      this.hasChanceOfPrecipitation = true;
      this.chanceOfPrecipitation_ = paramInt;
      return this;
    }

    public WeatherState setCondition(EcoutezStructuredResponse.WeatherCondition paramWeatherCondition)
    {
      if (paramWeatherCondition == null)
        throw new NullPointerException();
      this.hasCondition = true;
      this.condition_ = paramWeatherCondition;
      return this;
    }

    public WeatherState setHumidity(int paramInt)
    {
      this.hasHumidity = true;
      this.humidity_ = paramInt;
      return this;
    }

    public WeatherState setTemp(int paramInt)
    {
      this.hasTemp = true;
      this.temp_ = paramInt;
      return this;
    }

    public WeatherState setWindDirection(int paramInt)
    {
      this.hasWindDirection = true;
      this.windDirection_ = paramInt;
      return this;
    }

    public WeatherState setWindSpeed(int paramInt)
    {
      this.hasWindSpeed = true;
      this.windSpeed_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCondition())
        paramCodedOutputStreamMicro.writeMessage(1, getCondition());
      if (hasTemp())
        paramCodedOutputStreamMicro.writeInt32(2, getTemp());
      if (hasWindDirection())
        paramCodedOutputStreamMicro.writeInt32(3, getWindDirection());
      if (hasWindSpeed())
        paramCodedOutputStreamMicro.writeInt32(4, getWindSpeed());
      if (hasHumidity())
        paramCodedOutputStreamMicro.writeInt32(5, getHumidity());
      if (hasChanceOfPrecipitation())
        paramCodedOutputStreamMicro.writeInt32(6, getChanceOfPrecipitation());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.EcoutezStructuredResponse
 * JD-Core Version:    0.6.2
 */