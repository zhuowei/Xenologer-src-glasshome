package com.google.majel.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ClientInfoProtos
{
  public static final class BrowserParams extends MessageMicro
  {
    public static final int GOOGLE_DOMAIN_FIELD_NUMBER = 4;
    public static final int HEIGHT_PIXELS_FIELD_NUMBER = 2;
    public static final int SEARCH_LANGUAGE_FIELD_NUMBER = 5;
    public static final int USER_AGENT_FIELD_NUMBER = 3;
    public static final int USE_METRIC_UNITS_FIELD_NUMBER = 6;
    public static final int USE_PRECISE_GEOLOCATION_FIELD_NUMBER = 7;
    public static final int WIDTH_PIXELS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String googleDomain_ = "";
    private boolean hasGoogleDomain;
    private boolean hasHeightPixels;
    private boolean hasSearchLanguage;
    private boolean hasUseMetricUnits;
    private boolean hasUsePreciseGeolocation;
    private boolean hasUserAgent;
    private boolean hasWidthPixels;
    private int heightPixels_ = 0;
    private String searchLanguage_ = "";
    private boolean useMetricUnits_ = false;
    private boolean usePreciseGeolocation_ = true;
    private String userAgent_ = "";
    private int widthPixels_ = 0;

    public static BrowserParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new BrowserParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static BrowserParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (BrowserParams)new BrowserParams().mergeFrom(paramArrayOfByte);
    }

    public final BrowserParams clear()
    {
      clearWidthPixels();
      clearHeightPixels();
      clearUserAgent();
      clearGoogleDomain();
      clearSearchLanguage();
      clearUseMetricUnits();
      clearUsePreciseGeolocation();
      this.cachedSize = -1;
      return this;
    }

    public BrowserParams clearGoogleDomain()
    {
      this.hasGoogleDomain = false;
      this.googleDomain_ = "";
      return this;
    }

    public BrowserParams clearHeightPixels()
    {
      this.hasHeightPixels = false;
      this.heightPixels_ = 0;
      return this;
    }

    public BrowserParams clearSearchLanguage()
    {
      this.hasSearchLanguage = false;
      this.searchLanguage_ = "";
      return this;
    }

    public BrowserParams clearUseMetricUnits()
    {
      this.hasUseMetricUnits = false;
      this.useMetricUnits_ = false;
      return this;
    }

    public BrowserParams clearUsePreciseGeolocation()
    {
      this.hasUsePreciseGeolocation = false;
      this.usePreciseGeolocation_ = true;
      return this;
    }

    public BrowserParams clearUserAgent()
    {
      this.hasUserAgent = false;
      this.userAgent_ = "";
      return this;
    }

    public BrowserParams clearWidthPixels()
    {
      this.hasWidthPixels = false;
      this.widthPixels_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getGoogleDomain()
    {
      return this.googleDomain_;
    }

    public int getHeightPixels()
    {
      return this.heightPixels_;
    }

    public String getSearchLanguage()
    {
      return this.searchLanguage_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasWidthPixels();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getWidthPixels());
      if (hasHeightPixels())
        i += CodedOutputStreamMicro.computeInt32Size(2, getHeightPixels());
      if (hasUserAgent())
        i += CodedOutputStreamMicro.computeStringSize(3, getUserAgent());
      if (hasGoogleDomain())
        i += CodedOutputStreamMicro.computeStringSize(4, getGoogleDomain());
      if (hasSearchLanguage())
        i += CodedOutputStreamMicro.computeStringSize(5, getSearchLanguage());
      if (hasUseMetricUnits())
        i += CodedOutputStreamMicro.computeBoolSize(6, getUseMetricUnits());
      if (hasUsePreciseGeolocation())
        i += CodedOutputStreamMicro.computeBoolSize(7, getUsePreciseGeolocation());
      this.cachedSize = i;
      return i;
    }

    public boolean getUseMetricUnits()
    {
      return this.useMetricUnits_;
    }

    public boolean getUsePreciseGeolocation()
    {
      return this.usePreciseGeolocation_;
    }

    public String getUserAgent()
    {
      return this.userAgent_;
    }

    public int getWidthPixels()
    {
      return this.widthPixels_;
    }

    public boolean hasGoogleDomain()
    {
      return this.hasGoogleDomain;
    }

    public boolean hasHeightPixels()
    {
      return this.hasHeightPixels;
    }

    public boolean hasSearchLanguage()
    {
      return this.hasSearchLanguage;
    }

    public boolean hasUseMetricUnits()
    {
      return this.hasUseMetricUnits;
    }

    public boolean hasUsePreciseGeolocation()
    {
      return this.hasUsePreciseGeolocation;
    }

    public boolean hasUserAgent()
    {
      return this.hasUserAgent;
    }

    public boolean hasWidthPixels()
    {
      return this.hasWidthPixels;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public BrowserParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setWidthPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setHeightPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          setUserAgent(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setGoogleDomain(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setSearchLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 48:
          setUseMetricUnits(paramCodedInputStreamMicro.readBool());
          break;
        case 56:
        }
        setUsePreciseGeolocation(paramCodedInputStreamMicro.readBool());
      }
    }

    public BrowserParams setGoogleDomain(String paramString)
    {
      this.hasGoogleDomain = true;
      this.googleDomain_ = paramString;
      return this;
    }

    public BrowserParams setHeightPixels(int paramInt)
    {
      this.hasHeightPixels = true;
      this.heightPixels_ = paramInt;
      return this;
    }

    public BrowserParams setSearchLanguage(String paramString)
    {
      this.hasSearchLanguage = true;
      this.searchLanguage_ = paramString;
      return this;
    }

    public BrowserParams setUseMetricUnits(boolean paramBoolean)
    {
      this.hasUseMetricUnits = true;
      this.useMetricUnits_ = paramBoolean;
      return this;
    }

    public BrowserParams setUsePreciseGeolocation(boolean paramBoolean)
    {
      this.hasUsePreciseGeolocation = true;
      this.usePreciseGeolocation_ = paramBoolean;
      return this;
    }

    public BrowserParams setUserAgent(String paramString)
    {
      this.hasUserAgent = true;
      this.userAgent_ = paramString;
      return this;
    }

    public BrowserParams setWidthPixels(int paramInt)
    {
      this.hasWidthPixels = true;
      this.widthPixels_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasWidthPixels())
        paramCodedOutputStreamMicro.writeInt32(1, getWidthPixels());
      if (hasHeightPixels())
        paramCodedOutputStreamMicro.writeInt32(2, getHeightPixels());
      if (hasUserAgent())
        paramCodedOutputStreamMicro.writeString(3, getUserAgent());
      if (hasGoogleDomain())
        paramCodedOutputStreamMicro.writeString(4, getGoogleDomain());
      if (hasSearchLanguage())
        paramCodedOutputStreamMicro.writeString(5, getSearchLanguage());
      if (hasUseMetricUnits())
        paramCodedOutputStreamMicro.writeBool(6, getUseMetricUnits());
      if (hasUsePreciseGeolocation())
        paramCodedOutputStreamMicro.writeBool(7, getUsePreciseGeolocation());
    }
  }

  public static final class ClientInfo extends MessageMicro
  {
    public static final int BROWSER_PARAMS_FIELD_NUMBER = 11;
    public static final int CAPABILITIES_FIELD_NUMBER = 4;
    public static final int CLIENT_ANDROID_AT_HOME = 13;
    public static final int CLIENT_ANDROID_PHONE = 5;
    public static final int CLIENT_ANDROID_TABLET = 2;
    public static final int CLIENT_CLI = 3;
    public static final int CLIENT_ECOUTEZ = 11;
    public static final int CLIENT_FIELD_NUMBER = 1;
    public static final int CLIENT_GCHAT = 1;
    public static final int CLIENT_GLASS = 15;
    public static final int CLIENT_GOGGLES = 7;
    public static final int CLIENT_GOOGLE_TV = 6;
    public static final int CLIENT_GRECO2 = 9;
    public static final int CLIENT_HANGOUTS = 10;
    public static final int CLIENT_LOADTEST = 12;
    public static final int CLIENT_MAJEL_UNIVERSAL = 8;
    public static final int CLIENT_NAME_FIELD_NUMBER = 2;
    public static final int CLIENT_PROBER = 14;
    public static final int CLIENT_UNKNOWN = 0;
    public static final int CLIENT_VERSION_FIELD_NUMBER = 3;
    public static final int CLIENT_VERSION_NUMBER_FIELD_NUMBER = 14;
    public static final int CLIENT_WEB = 4;
    public static final int COUNTRY_CODE_FIELD_NUMBER = 6;
    public static final int DEPRECATED_USER_AGENT_FIELD_NUMBER = 7;
    public static final int GSERVICES_COUNTRY_CODE_FIELD_NUMBER = 16;
    public static final int IP_ADDRESS_FIELD_NUMBER = 10;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 5;
    public static final int PREVIEW_PARAMS_FIELD_NUMBER = 9;
    public static final int SAFESEARCH_LEVEL_FIELD_NUMBER = 8;
    public static final int SAFESEARCH_LEVEL_MODERATE = 1;
    public static final int SAFESEARCH_LEVEL_NONE = 0;
    public static final int SAFESEARCH_LEVEL_STRICT = 2;
    public static final int SCREEN_PARAMS_FIELD_NUMBER = 15;
    public static final int SYSTEM_TIME_MS_FIELD_NUMBER = 12;
    public static final int TIME_ZONE_FIELD_NUMBER = 13;
    private ClientInfoProtos.BrowserParams browserParams_ = null;
    private int cachedSize = -1;
    private List<Integer> capabilities_ = Collections.emptyList();
    private String clientName_ = "";
    private int clientVersionNumber_ = 0;
    private String clientVersion_ = "";
    private int client_ = 0;
    private String countryCode_ = "";
    private String deprecatedUserAgent_ = "";
    private String gservicesCountryCode_ = "";
    private boolean hasBrowserParams;
    private boolean hasClient;
    private boolean hasClientName;
    private boolean hasClientVersion;
    private boolean hasClientVersionNumber;
    private boolean hasCountryCode;
    private boolean hasDeprecatedUserAgent;
    private boolean hasGservicesCountryCode;
    private boolean hasIpAddress;
    private boolean hasLanguageCode;
    private boolean hasPreviewParams;
    private boolean hasSafesearchLevel;
    private boolean hasScreenParams;
    private boolean hasSystemTimeMs;
    private boolean hasTimeZone;
    private String ipAddress_ = "";
    private String languageCode_ = "";
    private ClientInfoProtos.PreviewParams previewParams_ = null;
    private int safesearchLevel_ = 1;
    private ClientInfoProtos.ScreenParams screenParams_ = null;
    private long systemTimeMs_ = 0L;
    private String timeZone_ = "";

    public static ClientInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientInfo)new ClientInfo().mergeFrom(paramArrayOfByte);
    }

    public ClientInfo addCapabilities(int paramInt)
    {
      if (this.capabilities_.isEmpty())
        this.capabilities_ = new ArrayList();
      this.capabilities_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final ClientInfo clear()
    {
      clearClient();
      clearClientName();
      clearClientVersion();
      clearClientVersionNumber();
      clearCapabilities();
      clearLanguageCode();
      clearCountryCode();
      clearGservicesCountryCode();
      clearSystemTimeMs();
      clearTimeZone();
      clearDeprecatedUserAgent();
      clearIpAddress();
      clearSafesearchLevel();
      clearPreviewParams();
      clearBrowserParams();
      clearScreenParams();
      this.cachedSize = -1;
      return this;
    }

    public ClientInfo clearBrowserParams()
    {
      this.hasBrowserParams = false;
      this.browserParams_ = null;
      return this;
    }

    public ClientInfo clearCapabilities()
    {
      this.capabilities_ = Collections.emptyList();
      return this;
    }

    public ClientInfo clearClient()
    {
      this.hasClient = false;
      this.client_ = 0;
      return this;
    }

    public ClientInfo clearClientName()
    {
      this.hasClientName = false;
      this.clientName_ = "";
      return this;
    }

    public ClientInfo clearClientVersion()
    {
      this.hasClientVersion = false;
      this.clientVersion_ = "";
      return this;
    }

    public ClientInfo clearClientVersionNumber()
    {
      this.hasClientVersionNumber = false;
      this.clientVersionNumber_ = 0;
      return this;
    }

    public ClientInfo clearCountryCode()
    {
      this.hasCountryCode = false;
      this.countryCode_ = "";
      return this;
    }

    public ClientInfo clearDeprecatedUserAgent()
    {
      this.hasDeprecatedUserAgent = false;
      this.deprecatedUserAgent_ = "";
      return this;
    }

    public ClientInfo clearGservicesCountryCode()
    {
      this.hasGservicesCountryCode = false;
      this.gservicesCountryCode_ = "";
      return this;
    }

    public ClientInfo clearIpAddress()
    {
      this.hasIpAddress = false;
      this.ipAddress_ = "";
      return this;
    }

    public ClientInfo clearLanguageCode()
    {
      this.hasLanguageCode = false;
      this.languageCode_ = "";
      return this;
    }

    public ClientInfo clearPreviewParams()
    {
      this.hasPreviewParams = false;
      this.previewParams_ = null;
      return this;
    }

    public ClientInfo clearSafesearchLevel()
    {
      this.hasSafesearchLevel = false;
      this.safesearchLevel_ = 1;
      return this;
    }

    public ClientInfo clearScreenParams()
    {
      this.hasScreenParams = false;
      this.screenParams_ = null;
      return this;
    }

    public ClientInfo clearSystemTimeMs()
    {
      this.hasSystemTimeMs = false;
      this.systemTimeMs_ = 0L;
      return this;
    }

    public ClientInfo clearTimeZone()
    {
      this.hasTimeZone = false;
      this.timeZone_ = "";
      return this;
    }

    public ClientInfoProtos.BrowserParams getBrowserParams()
    {
      return this.browserParams_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getCapabilities(int paramInt)
    {
      return ((Integer)this.capabilities_.get(paramInt)).intValue();
    }

    public int getCapabilitiesCount()
    {
      return this.capabilities_.size();
    }

    public List<Integer> getCapabilitiesList()
    {
      return this.capabilities_;
    }

    public int getClient()
    {
      return this.client_;
    }

    public String getClientName()
    {
      return this.clientName_;
    }

    public String getClientVersion()
    {
      return this.clientVersion_;
    }

    public int getClientVersionNumber()
    {
      return this.clientVersionNumber_;
    }

    public String getCountryCode()
    {
      return this.countryCode_;
    }

    public String getDeprecatedUserAgent()
    {
      return this.deprecatedUserAgent_;
    }

    public String getGservicesCountryCode()
    {
      return this.gservicesCountryCode_;
    }

    public String getIpAddress()
    {
      return this.ipAddress_;
    }

    public String getLanguageCode()
    {
      return this.languageCode_;
    }

    public ClientInfoProtos.PreviewParams getPreviewParams()
    {
      return this.previewParams_;
    }

    public int getSafesearchLevel()
    {
      return this.safesearchLevel_;
    }

    public ClientInfoProtos.ScreenParams getScreenParams()
    {
      return this.screenParams_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasClient();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getClient());
      if (hasClientName())
        i += CodedOutputStreamMicro.computeStringSize(2, getClientName());
      if (hasClientVersion())
        i += CodedOutputStreamMicro.computeStringSize(3, getClientVersion());
      int j = 0;
      Iterator localIterator = getCapabilitiesList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 1 * getCapabilitiesList().size();
      if (hasLanguageCode())
        k += CodedOutputStreamMicro.computeStringSize(5, getLanguageCode());
      if (hasCountryCode())
        k += CodedOutputStreamMicro.computeStringSize(6, getCountryCode());
      if (hasDeprecatedUserAgent())
        k += CodedOutputStreamMicro.computeStringSize(7, getDeprecatedUserAgent());
      if (hasSafesearchLevel())
        k += CodedOutputStreamMicro.computeInt32Size(8, getSafesearchLevel());
      if (hasPreviewParams())
        k += CodedOutputStreamMicro.computeMessageSize(9, getPreviewParams());
      if (hasIpAddress())
        k += CodedOutputStreamMicro.computeStringSize(10, getIpAddress());
      if (hasBrowserParams())
        k += CodedOutputStreamMicro.computeMessageSize(11, getBrowserParams());
      if (hasSystemTimeMs())
        k += CodedOutputStreamMicro.computeInt64Size(12, getSystemTimeMs());
      if (hasTimeZone())
        k += CodedOutputStreamMicro.computeStringSize(13, getTimeZone());
      if (hasClientVersionNumber())
        k += CodedOutputStreamMicro.computeInt32Size(14, getClientVersionNumber());
      if (hasScreenParams())
        k += CodedOutputStreamMicro.computeMessageSize(15, getScreenParams());
      if (hasGservicesCountryCode())
        k += CodedOutputStreamMicro.computeStringSize(16, getGservicesCountryCode());
      this.cachedSize = k;
      return k;
    }

    public long getSystemTimeMs()
    {
      return this.systemTimeMs_;
    }

    public String getTimeZone()
    {
      return this.timeZone_;
    }

    public boolean hasBrowserParams()
    {
      return this.hasBrowserParams;
    }

    public boolean hasClient()
    {
      return this.hasClient;
    }

    public boolean hasClientName()
    {
      return this.hasClientName;
    }

    public boolean hasClientVersion()
    {
      return this.hasClientVersion;
    }

    public boolean hasClientVersionNumber()
    {
      return this.hasClientVersionNumber;
    }

    public boolean hasCountryCode()
    {
      return this.hasCountryCode;
    }

    public boolean hasDeprecatedUserAgent()
    {
      return this.hasDeprecatedUserAgent;
    }

    public boolean hasGservicesCountryCode()
    {
      return this.hasGservicesCountryCode;
    }

    public boolean hasIpAddress()
    {
      return this.hasIpAddress;
    }

    public boolean hasLanguageCode()
    {
      return this.hasLanguageCode;
    }

    public boolean hasPreviewParams()
    {
      return this.hasPreviewParams;
    }

    public boolean hasSafesearchLevel()
    {
      return this.hasSafesearchLevel;
    }

    public boolean hasScreenParams()
    {
      return this.hasScreenParams;
    }

    public boolean hasSystemTimeMs()
    {
      return this.hasSystemTimeMs;
    }

    public boolean hasTimeZone()
    {
      return this.hasTimeZone;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setClient(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setClientName(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setClientVersion(paramCodedInputStreamMicro.readString());
          break;
        case 32:
          addCapabilities(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
          setLanguageCode(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setCountryCode(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setDeprecatedUserAgent(paramCodedInputStreamMicro.readString());
          break;
        case 64:
          setSafesearchLevel(paramCodedInputStreamMicro.readInt32());
          break;
        case 74:
          ClientInfoProtos.PreviewParams localPreviewParams = new ClientInfoProtos.PreviewParams();
          paramCodedInputStreamMicro.readMessage(localPreviewParams);
          setPreviewParams(localPreviewParams);
          break;
        case 82:
          setIpAddress(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          ClientInfoProtos.BrowserParams localBrowserParams = new ClientInfoProtos.BrowserParams();
          paramCodedInputStreamMicro.readMessage(localBrowserParams);
          setBrowserParams(localBrowserParams);
          break;
        case 96:
          setSystemTimeMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 106:
          setTimeZone(paramCodedInputStreamMicro.readString());
          break;
        case 112:
          setClientVersionNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 122:
          ClientInfoProtos.ScreenParams localScreenParams = new ClientInfoProtos.ScreenParams();
          paramCodedInputStreamMicro.readMessage(localScreenParams);
          setScreenParams(localScreenParams);
          break;
        case 130:
        }
        setGservicesCountryCode(paramCodedInputStreamMicro.readString());
      }
    }

    public ClientInfo setBrowserParams(ClientInfoProtos.BrowserParams paramBrowserParams)
    {
      if (paramBrowserParams == null)
        throw new NullPointerException();
      this.hasBrowserParams = true;
      this.browserParams_ = paramBrowserParams;
      return this;
    }

    public ClientInfo setCapabilities(int paramInt1, int paramInt2)
    {
      this.capabilities_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public ClientInfo setClient(int paramInt)
    {
      this.hasClient = true;
      this.client_ = paramInt;
      return this;
    }

    public ClientInfo setClientName(String paramString)
    {
      this.hasClientName = true;
      this.clientName_ = paramString;
      return this;
    }

    public ClientInfo setClientVersion(String paramString)
    {
      this.hasClientVersion = true;
      this.clientVersion_ = paramString;
      return this;
    }

    public ClientInfo setClientVersionNumber(int paramInt)
    {
      this.hasClientVersionNumber = true;
      this.clientVersionNumber_ = paramInt;
      return this;
    }

    public ClientInfo setCountryCode(String paramString)
    {
      this.hasCountryCode = true;
      this.countryCode_ = paramString;
      return this;
    }

    public ClientInfo setDeprecatedUserAgent(String paramString)
    {
      this.hasDeprecatedUserAgent = true;
      this.deprecatedUserAgent_ = paramString;
      return this;
    }

    public ClientInfo setGservicesCountryCode(String paramString)
    {
      this.hasGservicesCountryCode = true;
      this.gservicesCountryCode_ = paramString;
      return this;
    }

    public ClientInfo setIpAddress(String paramString)
    {
      this.hasIpAddress = true;
      this.ipAddress_ = paramString;
      return this;
    }

    public ClientInfo setLanguageCode(String paramString)
    {
      this.hasLanguageCode = true;
      this.languageCode_ = paramString;
      return this;
    }

    public ClientInfo setPreviewParams(ClientInfoProtos.PreviewParams paramPreviewParams)
    {
      if (paramPreviewParams == null)
        throw new NullPointerException();
      this.hasPreviewParams = true;
      this.previewParams_ = paramPreviewParams;
      return this;
    }

    public ClientInfo setSafesearchLevel(int paramInt)
    {
      this.hasSafesearchLevel = true;
      this.safesearchLevel_ = paramInt;
      return this;
    }

    public ClientInfo setScreenParams(ClientInfoProtos.ScreenParams paramScreenParams)
    {
      if (paramScreenParams == null)
        throw new NullPointerException();
      this.hasScreenParams = true;
      this.screenParams_ = paramScreenParams;
      return this;
    }

    public ClientInfo setSystemTimeMs(long paramLong)
    {
      this.hasSystemTimeMs = true;
      this.systemTimeMs_ = paramLong;
      return this;
    }

    public ClientInfo setTimeZone(String paramString)
    {
      this.hasTimeZone = true;
      this.timeZone_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasClient())
        paramCodedOutputStreamMicro.writeInt32(1, getClient());
      if (hasClientName())
        paramCodedOutputStreamMicro.writeString(2, getClientName());
      if (hasClientVersion())
        paramCodedOutputStreamMicro.writeString(3, getClientVersion());
      Iterator localIterator = getCapabilitiesList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(4, ((Integer)localIterator.next()).intValue());
      if (hasLanguageCode())
        paramCodedOutputStreamMicro.writeString(5, getLanguageCode());
      if (hasCountryCode())
        paramCodedOutputStreamMicro.writeString(6, getCountryCode());
      if (hasDeprecatedUserAgent())
        paramCodedOutputStreamMicro.writeString(7, getDeprecatedUserAgent());
      if (hasSafesearchLevel())
        paramCodedOutputStreamMicro.writeInt32(8, getSafesearchLevel());
      if (hasPreviewParams())
        paramCodedOutputStreamMicro.writeMessage(9, getPreviewParams());
      if (hasIpAddress())
        paramCodedOutputStreamMicro.writeString(10, getIpAddress());
      if (hasBrowserParams())
        paramCodedOutputStreamMicro.writeMessage(11, getBrowserParams());
      if (hasSystemTimeMs())
        paramCodedOutputStreamMicro.writeInt64(12, getSystemTimeMs());
      if (hasTimeZone())
        paramCodedOutputStreamMicro.writeString(13, getTimeZone());
      if (hasClientVersionNumber())
        paramCodedOutputStreamMicro.writeInt32(14, getClientVersionNumber());
      if (hasScreenParams())
        paramCodedOutputStreamMicro.writeMessage(15, getScreenParams());
      if (hasGservicesCountryCode())
        paramCodedOutputStreamMicro.writeString(16, getGservicesCountryCode());
    }
  }

  public static final class PreviewParams extends MessageMicro
  {
    public static final int MAP_HEIGHT_PIXELS_FIELD_NUMBER = 5;
    public static final int MAP_WIDTH_PIXELS_FIELD_NUMBER = 4;
    public static final int PREVIEW_TYPE_DESKTOP = 1;
    public static final int PREVIEW_TYPE_MOBILE = 0;
    public static final int PREVIEW_TYPE_TABLET = 2;
    public static final int URL_HEIGHT_PIXELS_FIELD_NUMBER = 2;
    public static final int URL_PREVIEW_TYPE_FIELD_NUMBER = 3;
    public static final int URL_WIDTH_PIXELS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasMapHeightPixels;
    private boolean hasMapWidthPixels;
    private boolean hasUrlHeightPixels;
    private boolean hasUrlPreviewType;
    private boolean hasUrlWidthPixels;
    private int mapHeightPixels_ = 320;
    private int mapWidthPixels_ = 640;
    private int urlHeightPixels_ = 400;
    private int urlPreviewType_ = 0;
    private int urlWidthPixels_ = 400;

    public static PreviewParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PreviewParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PreviewParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PreviewParams)new PreviewParams().mergeFrom(paramArrayOfByte);
    }

    public final PreviewParams clear()
    {
      clearUrlWidthPixels();
      clearUrlHeightPixels();
      clearUrlPreviewType();
      clearMapWidthPixels();
      clearMapHeightPixels();
      this.cachedSize = -1;
      return this;
    }

    public PreviewParams clearMapHeightPixels()
    {
      this.hasMapHeightPixels = false;
      this.mapHeightPixels_ = 320;
      return this;
    }

    public PreviewParams clearMapWidthPixels()
    {
      this.hasMapWidthPixels = false;
      this.mapWidthPixels_ = 640;
      return this;
    }

    public PreviewParams clearUrlHeightPixels()
    {
      this.hasUrlHeightPixels = false;
      this.urlHeightPixels_ = 400;
      return this;
    }

    public PreviewParams clearUrlPreviewType()
    {
      this.hasUrlPreviewType = false;
      this.urlPreviewType_ = 0;
      return this;
    }

    public PreviewParams clearUrlWidthPixels()
    {
      this.hasUrlWidthPixels = false;
      this.urlWidthPixels_ = 400;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getMapHeightPixels()
    {
      return this.mapHeightPixels_;
    }

    public int getMapWidthPixels()
    {
      return this.mapWidthPixels_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUrlWidthPixels();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getUrlWidthPixels());
      if (hasUrlHeightPixels())
        i += CodedOutputStreamMicro.computeInt32Size(2, getUrlHeightPixels());
      if (hasUrlPreviewType())
        i += CodedOutputStreamMicro.computeInt32Size(3, getUrlPreviewType());
      if (hasMapWidthPixels())
        i += CodedOutputStreamMicro.computeInt32Size(4, getMapWidthPixels());
      if (hasMapHeightPixels())
        i += CodedOutputStreamMicro.computeInt32Size(5, getMapHeightPixels());
      this.cachedSize = i;
      return i;
    }

    public int getUrlHeightPixels()
    {
      return this.urlHeightPixels_;
    }

    public int getUrlPreviewType()
    {
      return this.urlPreviewType_;
    }

    public int getUrlWidthPixels()
    {
      return this.urlWidthPixels_;
    }

    public boolean hasMapHeightPixels()
    {
      return this.hasMapHeightPixels;
    }

    public boolean hasMapWidthPixels()
    {
      return this.hasMapWidthPixels;
    }

    public boolean hasUrlHeightPixels()
    {
      return this.hasUrlHeightPixels;
    }

    public boolean hasUrlPreviewType()
    {
      return this.hasUrlPreviewType;
    }

    public boolean hasUrlWidthPixels()
    {
      return this.hasUrlWidthPixels;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PreviewParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUrlWidthPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setUrlHeightPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setUrlPreviewType(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setMapWidthPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
        }
        setMapHeightPixels(paramCodedInputStreamMicro.readInt32());
      }
    }

    public PreviewParams setMapHeightPixels(int paramInt)
    {
      this.hasMapHeightPixels = true;
      this.mapHeightPixels_ = paramInt;
      return this;
    }

    public PreviewParams setMapWidthPixels(int paramInt)
    {
      this.hasMapWidthPixels = true;
      this.mapWidthPixels_ = paramInt;
      return this;
    }

    public PreviewParams setUrlHeightPixels(int paramInt)
    {
      this.hasUrlHeightPixels = true;
      this.urlHeightPixels_ = paramInt;
      return this;
    }

    public PreviewParams setUrlPreviewType(int paramInt)
    {
      this.hasUrlPreviewType = true;
      this.urlPreviewType_ = paramInt;
      return this;
    }

    public PreviewParams setUrlWidthPixels(int paramInt)
    {
      this.hasUrlWidthPixels = true;
      this.urlWidthPixels_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUrlWidthPixels())
        paramCodedOutputStreamMicro.writeInt32(1, getUrlWidthPixels());
      if (hasUrlHeightPixels())
        paramCodedOutputStreamMicro.writeInt32(2, getUrlHeightPixels());
      if (hasUrlPreviewType())
        paramCodedOutputStreamMicro.writeInt32(3, getUrlPreviewType());
      if (hasMapWidthPixels())
        paramCodedOutputStreamMicro.writeInt32(4, getMapWidthPixels());
      if (hasMapHeightPixels())
        paramCodedOutputStreamMicro.writeInt32(5, getMapHeightPixels());
    }
  }

  public static final class ScreenParams extends MessageMicro
  {
    public static final int DENSITY_DPI_FIELD_NUMBER = 3;
    public static final int DPI_BUCKET_FIELD_NUMBER = 4;
    public static final int DPI_BUCKET_HDPI = 3;
    public static final int DPI_BUCKET_LDPI = 1;
    public static final int DPI_BUCKET_MDPI = 2;
    public static final int DPI_BUCKET_TVDPI = 5;
    public static final int DPI_BUCKET_UNKNOWN = 0;
    public static final int DPI_BUCKET_XHDPI = 4;
    public static final int DPI_BUCKET_XXHDPI = 6;
    public static final int HEIGHT_PIXELS_FIELD_NUMBER = 2;
    public static final int WIDTH_PIXELS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int densityDpi_ = 0;
    private int dpiBucket_ = 0;
    private boolean hasDensityDpi;
    private boolean hasDpiBucket;
    private boolean hasHeightPixels;
    private boolean hasWidthPixels;
    private int heightPixels_ = 0;
    private int widthPixels_ = 0;

    public static ScreenParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ScreenParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ScreenParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ScreenParams)new ScreenParams().mergeFrom(paramArrayOfByte);
    }

    public final ScreenParams clear()
    {
      clearWidthPixels();
      clearHeightPixels();
      clearDensityDpi();
      clearDpiBucket();
      this.cachedSize = -1;
      return this;
    }

    public ScreenParams clearDensityDpi()
    {
      this.hasDensityDpi = false;
      this.densityDpi_ = 0;
      return this;
    }

    public ScreenParams clearDpiBucket()
    {
      this.hasDpiBucket = false;
      this.dpiBucket_ = 0;
      return this;
    }

    public ScreenParams clearHeightPixels()
    {
      this.hasHeightPixels = false;
      this.heightPixels_ = 0;
      return this;
    }

    public ScreenParams clearWidthPixels()
    {
      this.hasWidthPixels = false;
      this.widthPixels_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDensityDpi()
    {
      return this.densityDpi_;
    }

    public int getDpiBucket()
    {
      return this.dpiBucket_;
    }

    public int getHeightPixels()
    {
      return this.heightPixels_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasWidthPixels();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getWidthPixels());
      if (hasHeightPixels())
        i += CodedOutputStreamMicro.computeInt32Size(2, getHeightPixels());
      if (hasDensityDpi())
        i += CodedOutputStreamMicro.computeInt32Size(3, getDensityDpi());
      if (hasDpiBucket())
        i += CodedOutputStreamMicro.computeInt32Size(4, getDpiBucket());
      this.cachedSize = i;
      return i;
    }

    public int getWidthPixels()
    {
      return this.widthPixels_;
    }

    public boolean hasDensityDpi()
    {
      return this.hasDensityDpi;
    }

    public boolean hasDpiBucket()
    {
      return this.hasDpiBucket;
    }

    public boolean hasHeightPixels()
    {
      return this.hasHeightPixels;
    }

    public boolean hasWidthPixels()
    {
      return this.hasWidthPixels;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ScreenParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setWidthPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setHeightPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setDensityDpi(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
        }
        setDpiBucket(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ScreenParams setDensityDpi(int paramInt)
    {
      this.hasDensityDpi = true;
      this.densityDpi_ = paramInt;
      return this;
    }

    public ScreenParams setDpiBucket(int paramInt)
    {
      this.hasDpiBucket = true;
      this.dpiBucket_ = paramInt;
      return this;
    }

    public ScreenParams setHeightPixels(int paramInt)
    {
      this.hasHeightPixels = true;
      this.heightPixels_ = paramInt;
      return this;
    }

    public ScreenParams setWidthPixels(int paramInt)
    {
      this.hasWidthPixels = true;
      this.widthPixels_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasWidthPixels())
        paramCodedOutputStreamMicro.writeInt32(1, getWidthPixels());
      if (hasHeightPixels())
        paramCodedOutputStreamMicro.writeInt32(2, getHeightPixels());
      if (hasDensityDpi())
        paramCodedOutputStreamMicro.writeInt32(3, getDensityDpi());
      if (hasDpiBucket())
        paramCodedOutputStreamMicro.writeInt32(4, getDpiBucket());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.ClientInfoProtos
 * JD-Core Version:    0.6.2
 */