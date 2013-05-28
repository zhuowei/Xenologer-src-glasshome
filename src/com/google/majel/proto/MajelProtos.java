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

public final class MajelProtos
{
  public static final class MajelRequest extends MessageMicro
  {
    public static final int AUTH_INFO_FIELD_NUMBER = 2;
    public static final int CLIENT_INFO_FIELD_NUMBER = 3;
    public static final int CONTEXT_FIELD_NUMBER = 5;
    public static final int LAT_LNG_FIELD_NUMBER = 4;
    public static final int QUERY_FIELD_NUMBER = 1;
    private AuthInfoProtos.AuthInfo authInfo_ = null;
    private int cachedSize = -1;
    private ClientInfoProtos.ClientInfo clientInfo_ = null;
    private ContextProtos.Context context_ = null;
    private boolean hasAuthInfo;
    private boolean hasClientInfo;
    private boolean hasContext;
    private boolean hasLatLng;
    private boolean hasQuery;
    private LatLngProtos.LatLng latLng_ = null;
    private String query_ = "";

    public static MajelRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MajelRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MajelRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MajelRequest)new MajelRequest().mergeFrom(paramArrayOfByte);
    }

    public final MajelRequest clear()
    {
      clearQuery();
      clearAuthInfo();
      clearClientInfo();
      clearLatLng();
      clearContext();
      this.cachedSize = -1;
      return this;
    }

    public MajelRequest clearAuthInfo()
    {
      this.hasAuthInfo = false;
      this.authInfo_ = null;
      return this;
    }

    public MajelRequest clearClientInfo()
    {
      this.hasClientInfo = false;
      this.clientInfo_ = null;
      return this;
    }

    public MajelRequest clearContext()
    {
      this.hasContext = false;
      this.context_ = null;
      return this;
    }

    public MajelRequest clearLatLng()
    {
      this.hasLatLng = false;
      this.latLng_ = null;
      return this;
    }

    public MajelRequest clearQuery()
    {
      this.hasQuery = false;
      this.query_ = "";
      return this;
    }

    public AuthInfoProtos.AuthInfo getAuthInfo()
    {
      return this.authInfo_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ClientInfoProtos.ClientInfo getClientInfo()
    {
      return this.clientInfo_;
    }

    public ContextProtos.Context getContext()
    {
      return this.context_;
    }

    public LatLngProtos.LatLng getLatLng()
    {
      return this.latLng_;
    }

    public String getQuery()
    {
      return this.query_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasQuery();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getQuery());
      if (hasAuthInfo())
        i += CodedOutputStreamMicro.computeMessageSize(2, getAuthInfo());
      if (hasClientInfo())
        i += CodedOutputStreamMicro.computeMessageSize(3, getClientInfo());
      if (hasLatLng())
        i += CodedOutputStreamMicro.computeMessageSize(4, getLatLng());
      if (hasContext())
        i += CodedOutputStreamMicro.computeMessageSize(5, getContext());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAuthInfo()
    {
      return this.hasAuthInfo;
    }

    public boolean hasClientInfo()
    {
      return this.hasClientInfo;
    }

    public boolean hasContext()
    {
      return this.hasContext;
    }

    public boolean hasLatLng()
    {
      return this.hasLatLng;
    }

    public boolean hasQuery()
    {
      return this.hasQuery;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MajelRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setQuery(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          AuthInfoProtos.AuthInfo localAuthInfo = new AuthInfoProtos.AuthInfo();
          paramCodedInputStreamMicro.readMessage(localAuthInfo);
          setAuthInfo(localAuthInfo);
          break;
        case 26:
          ClientInfoProtos.ClientInfo localClientInfo = new ClientInfoProtos.ClientInfo();
          paramCodedInputStreamMicro.readMessage(localClientInfo);
          setClientInfo(localClientInfo);
          break;
        case 34:
          LatLngProtos.LatLng localLatLng = new LatLngProtos.LatLng();
          paramCodedInputStreamMicro.readMessage(localLatLng);
          setLatLng(localLatLng);
          break;
        case 42:
        }
        ContextProtos.Context localContext = new ContextProtos.Context();
        paramCodedInputStreamMicro.readMessage(localContext);
        setContext(localContext);
      }
    }

    public MajelRequest setAuthInfo(AuthInfoProtos.AuthInfo paramAuthInfo)
    {
      if (paramAuthInfo == null)
        throw new NullPointerException();
      this.hasAuthInfo = true;
      this.authInfo_ = paramAuthInfo;
      return this;
    }

    public MajelRequest setClientInfo(ClientInfoProtos.ClientInfo paramClientInfo)
    {
      if (paramClientInfo == null)
        throw new NullPointerException();
      this.hasClientInfo = true;
      this.clientInfo_ = paramClientInfo;
      return this;
    }

    public MajelRequest setContext(ContextProtos.Context paramContext)
    {
      if (paramContext == null)
        throw new NullPointerException();
      this.hasContext = true;
      this.context_ = paramContext;
      return this;
    }

    public MajelRequest setLatLng(LatLngProtos.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasLatLng = true;
      this.latLng_ = paramLatLng;
      return this;
    }

    public MajelRequest setQuery(String paramString)
    {
      this.hasQuery = true;
      this.query_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasQuery())
        paramCodedOutputStreamMicro.writeString(1, getQuery());
      if (hasAuthInfo())
        paramCodedOutputStreamMicro.writeMessage(2, getAuthInfo());
      if (hasClientInfo())
        paramCodedOutputStreamMicro.writeMessage(3, getClientInfo());
      if (hasLatLng())
        paramCodedOutputStreamMicro.writeMessage(4, getLatLng());
      if (hasContext())
        paramCodedOutputStreamMicro.writeMessage(5, getContext());
    }
  }

  public static final class MajelResponse extends MessageMicro
  {
    public static final int DEBUG_FIELD_NUMBER = 2;
    public static final int PEANUT_FIELD_NUMBER = 1;
    public static final int QUERY_ID_FIELD_NUMBER = 3;
    public static final int SET_COOKIE_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private String debug_ = "";
    private boolean hasDebug;
    private boolean hasQueryId;
    private List<PeanutProtos.Peanut> peanut_ = Collections.emptyList();
    private String queryId_ = "";
    private List<CookieProtos.MajelCookie> setCookie_ = Collections.emptyList();

    public static MajelResponse parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MajelResponse().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MajelResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MajelResponse)new MajelResponse().mergeFrom(paramArrayOfByte);
    }

    public MajelResponse addPeanut(PeanutProtos.Peanut paramPeanut)
    {
      if (paramPeanut == null)
        throw new NullPointerException();
      if (this.peanut_.isEmpty())
        this.peanut_ = new ArrayList();
      this.peanut_.add(paramPeanut);
      return this;
    }

    public MajelResponse addSetCookie(CookieProtos.MajelCookie paramMajelCookie)
    {
      if (paramMajelCookie == null)
        throw new NullPointerException();
      if (this.setCookie_.isEmpty())
        this.setCookie_ = new ArrayList();
      this.setCookie_.add(paramMajelCookie);
      return this;
    }

    public final MajelResponse clear()
    {
      clearPeanut();
      clearDebug();
      clearQueryId();
      clearSetCookie();
      this.cachedSize = -1;
      return this;
    }

    public MajelResponse clearDebug()
    {
      this.hasDebug = false;
      this.debug_ = "";
      return this;
    }

    public MajelResponse clearPeanut()
    {
      this.peanut_ = Collections.emptyList();
      return this;
    }

    public MajelResponse clearQueryId()
    {
      this.hasQueryId = false;
      this.queryId_ = "";
      return this;
    }

    public MajelResponse clearSetCookie()
    {
      this.setCookie_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDebug()
    {
      return this.debug_;
    }

    public PeanutProtos.Peanut getPeanut(int paramInt)
    {
      return (PeanutProtos.Peanut)this.peanut_.get(paramInt);
    }

    public int getPeanutCount()
    {
      return this.peanut_.size();
    }

    public List<PeanutProtos.Peanut> getPeanutList()
    {
      return this.peanut_;
    }

    public String getQueryId()
    {
      return this.queryId_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getPeanutList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (PeanutProtos.Peanut)localIterator1.next());
      if (hasDebug())
        i += CodedOutputStreamMicro.computeStringSize(2, getDebug());
      if (hasQueryId())
        i += CodedOutputStreamMicro.computeStringSize(3, getQueryId());
      Iterator localIterator2 = getSetCookieList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (CookieProtos.MajelCookie)localIterator2.next());
      this.cachedSize = i;
      return i;
    }

    public CookieProtos.MajelCookie getSetCookie(int paramInt)
    {
      return (CookieProtos.MajelCookie)this.setCookie_.get(paramInt);
    }

    public int getSetCookieCount()
    {
      return this.setCookie_.size();
    }

    public List<CookieProtos.MajelCookie> getSetCookieList()
    {
      return this.setCookie_;
    }

    public boolean hasDebug()
    {
      return this.hasDebug;
    }

    public boolean hasQueryId()
    {
      return this.hasQueryId;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MajelResponse mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          PeanutProtos.Peanut localPeanut = new PeanutProtos.Peanut();
          paramCodedInputStreamMicro.readMessage(localPeanut);
          addPeanut(localPeanut);
          break;
        case 18:
          setDebug(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setQueryId(paramCodedInputStreamMicro.readString());
          break;
        case 34:
        }
        CookieProtos.MajelCookie localMajelCookie = new CookieProtos.MajelCookie();
        paramCodedInputStreamMicro.readMessage(localMajelCookie);
        addSetCookie(localMajelCookie);
      }
    }

    public MajelResponse setDebug(String paramString)
    {
      this.hasDebug = true;
      this.debug_ = paramString;
      return this;
    }

    public MajelResponse setPeanut(int paramInt, PeanutProtos.Peanut paramPeanut)
    {
      if (paramPeanut == null)
        throw new NullPointerException();
      this.peanut_.set(paramInt, paramPeanut);
      return this;
    }

    public MajelResponse setQueryId(String paramString)
    {
      this.hasQueryId = true;
      this.queryId_ = paramString;
      return this;
    }

    public MajelResponse setSetCookie(int paramInt, CookieProtos.MajelCookie paramMajelCookie)
    {
      if (paramMajelCookie == null)
        throw new NullPointerException();
      this.setCookie_.set(paramInt, paramMajelCookie);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getPeanutList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (PeanutProtos.Peanut)localIterator1.next());
      if (hasDebug())
        paramCodedOutputStreamMicro.writeString(2, getDebug());
      if (hasQueryId())
        paramCodedOutputStreamMicro.writeString(3, getQueryId());
      Iterator localIterator2 = getSetCookieList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (CookieProtos.MajelCookie)localIterator2.next());
    }
  }

  public static final class MakeQueryPublicRequest extends MessageMicro
  {
    public static final int AUTH_INFO_FIELD_NUMBER = 2;
    public static final int QUERY_ID_FIELD_NUMBER = 1;
    private AuthInfoProtos.AuthInfo authInfo_ = null;
    private int cachedSize = -1;
    private boolean hasAuthInfo;
    private boolean hasQueryId;
    private String queryId_ = "";

    public static MakeQueryPublicRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MakeQueryPublicRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MakeQueryPublicRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MakeQueryPublicRequest)new MakeQueryPublicRequest().mergeFrom(paramArrayOfByte);
    }

    public final MakeQueryPublicRequest clear()
    {
      clearQueryId();
      clearAuthInfo();
      this.cachedSize = -1;
      return this;
    }

    public MakeQueryPublicRequest clearAuthInfo()
    {
      this.hasAuthInfo = false;
      this.authInfo_ = null;
      return this;
    }

    public MakeQueryPublicRequest clearQueryId()
    {
      this.hasQueryId = false;
      this.queryId_ = "";
      return this;
    }

    public AuthInfoProtos.AuthInfo getAuthInfo()
    {
      return this.authInfo_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getQueryId()
    {
      return this.queryId_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasQueryId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getQueryId());
      if (hasAuthInfo())
        i += CodedOutputStreamMicro.computeMessageSize(2, getAuthInfo());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAuthInfo()
    {
      return this.hasAuthInfo;
    }

    public boolean hasQueryId()
    {
      return this.hasQueryId;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MakeQueryPublicRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setQueryId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        AuthInfoProtos.AuthInfo localAuthInfo = new AuthInfoProtos.AuthInfo();
        paramCodedInputStreamMicro.readMessage(localAuthInfo);
        setAuthInfo(localAuthInfo);
      }
    }

    public MakeQueryPublicRequest setAuthInfo(AuthInfoProtos.AuthInfo paramAuthInfo)
    {
      if (paramAuthInfo == null)
        throw new NullPointerException();
      this.hasAuthInfo = true;
      this.authInfo_ = paramAuthInfo;
      return this;
    }

    public MakeQueryPublicRequest setQueryId(String paramString)
    {
      this.hasQueryId = true;
      this.queryId_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasQueryId())
        paramCodedOutputStreamMicro.writeString(1, getQueryId());
      if (hasAuthInfo())
        paramCodedOutputStreamMicro.writeMessage(2, getAuthInfo());
    }
  }

  public static final class MakeQueryPublicResponse extends MessageMicro
  {
    private int cachedSize = -1;

    public static MakeQueryPublicResponse parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MakeQueryPublicResponse().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MakeQueryPublicResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MakeQueryPublicResponse)new MakeQueryPublicResponse().mergeFrom(paramArrayOfByte);
    }

    public final MakeQueryPublicResponse clear()
    {
      this.cachedSize = -1;
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
      this.cachedSize = 0;
      return 0;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MakeQueryPublicResponse mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      int i;
      do
      {
        i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
        case 0:
        }
      }
      while (parseUnknownField(paramCodedInputStreamMicro, i));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.MajelProtos
 * JD-Core Version:    0.6.2
 */