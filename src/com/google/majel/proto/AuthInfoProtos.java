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

public final class AuthInfoProtos
{
  public static final class AuthInfo extends MessageMicro
  {
    public static final int ADDITIONAL_GAIA_ID_FIELD_NUMBER = 5;
    public static final int COOKIE_FIELD_NUMBER = 4;
    public static final int EMAIL_FIELD_NUMBER = 1;
    public static final int GAIA_ID_FIELD_NUMBER = 2;
    public static final int ZWIEBACK_UID_FIELD_NUMBER = 3;
    private List<Long> additionalGaiaId_ = Collections.emptyList();
    private int cachedSize = -1;
    private List<CookieProtos.MajelCookie> cookie_ = Collections.emptyList();
    private String email_ = "";
    private long gaiaId_ = 0L;
    private boolean hasEmail;
    private boolean hasGaiaId;
    private boolean hasZwiebackUid;
    private long zwiebackUid_ = 0L;

    public static AuthInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AuthInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AuthInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AuthInfo)new AuthInfo().mergeFrom(paramArrayOfByte);
    }

    public AuthInfo addAdditionalGaiaId(long paramLong)
    {
      if (this.additionalGaiaId_.isEmpty())
        this.additionalGaiaId_ = new ArrayList();
      this.additionalGaiaId_.add(Long.valueOf(paramLong));
      return this;
    }

    public AuthInfo addCookie(CookieProtos.MajelCookie paramMajelCookie)
    {
      if (paramMajelCookie == null)
        throw new NullPointerException();
      if (this.cookie_.isEmpty())
        this.cookie_ = new ArrayList();
      this.cookie_.add(paramMajelCookie);
      return this;
    }

    public final AuthInfo clear()
    {
      clearEmail();
      clearGaiaId();
      clearAdditionalGaiaId();
      clearZwiebackUid();
      clearCookie();
      this.cachedSize = -1;
      return this;
    }

    public AuthInfo clearAdditionalGaiaId()
    {
      this.additionalGaiaId_ = Collections.emptyList();
      return this;
    }

    public AuthInfo clearCookie()
    {
      this.cookie_ = Collections.emptyList();
      return this;
    }

    public AuthInfo clearEmail()
    {
      this.hasEmail = false;
      this.email_ = "";
      return this;
    }

    public AuthInfo clearGaiaId()
    {
      this.hasGaiaId = false;
      this.gaiaId_ = 0L;
      return this;
    }

    public AuthInfo clearZwiebackUid()
    {
      this.hasZwiebackUid = false;
      this.zwiebackUid_ = 0L;
      return this;
    }

    public long getAdditionalGaiaId(int paramInt)
    {
      return ((Long)this.additionalGaiaId_.get(paramInt)).longValue();
    }

    public int getAdditionalGaiaIdCount()
    {
      return this.additionalGaiaId_.size();
    }

    public List<Long> getAdditionalGaiaIdList()
    {
      return this.additionalGaiaId_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public CookieProtos.MajelCookie getCookie(int paramInt)
    {
      return (CookieProtos.MajelCookie)this.cookie_.get(paramInt);
    }

    public int getCookieCount()
    {
      return this.cookie_.size();
    }

    public List<CookieProtos.MajelCookie> getCookieList()
    {
      return this.cookie_;
    }

    public String getEmail()
    {
      return this.email_;
    }

    public long getGaiaId()
    {
      return this.gaiaId_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasEmail();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getEmail());
      if (hasGaiaId())
        i += CodedOutputStreamMicro.computeInt64Size(2, getGaiaId());
      if (hasZwiebackUid())
        i += CodedOutputStreamMicro.computeInt64Size(3, getZwiebackUid());
      Iterator localIterator1 = getCookieList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (CookieProtos.MajelCookie)localIterator1.next());
      int j = 0;
      Iterator localIterator2 = getAdditionalGaiaIdList().iterator();
      while (localIterator2.hasNext())
        j += CodedOutputStreamMicro.computeInt64SizeNoTag(((Long)localIterator2.next()).longValue());
      int k = i + j + 1 * getAdditionalGaiaIdList().size();
      this.cachedSize = k;
      return k;
    }

    public long getZwiebackUid()
    {
      return this.zwiebackUid_;
    }

    public boolean hasEmail()
    {
      return this.hasEmail;
    }

    public boolean hasGaiaId()
    {
      return this.hasGaiaId;
    }

    public boolean hasZwiebackUid()
    {
      return this.hasZwiebackUid;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AuthInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setEmail(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setGaiaId(paramCodedInputStreamMicro.readInt64());
          break;
        case 24:
          setZwiebackUid(paramCodedInputStreamMicro.readInt64());
          break;
        case 34:
          CookieProtos.MajelCookie localMajelCookie = new CookieProtos.MajelCookie();
          paramCodedInputStreamMicro.readMessage(localMajelCookie);
          addCookie(localMajelCookie);
          break;
        case 40:
        }
        addAdditionalGaiaId(paramCodedInputStreamMicro.readInt64());
      }
    }

    public AuthInfo setAdditionalGaiaId(int paramInt, long paramLong)
    {
      this.additionalGaiaId_.set(paramInt, Long.valueOf(paramLong));
      return this;
    }

    public AuthInfo setCookie(int paramInt, CookieProtos.MajelCookie paramMajelCookie)
    {
      if (paramMajelCookie == null)
        throw new NullPointerException();
      this.cookie_.set(paramInt, paramMajelCookie);
      return this;
    }

    public AuthInfo setEmail(String paramString)
    {
      this.hasEmail = true;
      this.email_ = paramString;
      return this;
    }

    public AuthInfo setGaiaId(long paramLong)
    {
      this.hasGaiaId = true;
      this.gaiaId_ = paramLong;
      return this;
    }

    public AuthInfo setZwiebackUid(long paramLong)
    {
      this.hasZwiebackUid = true;
      this.zwiebackUid_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasEmail())
        paramCodedOutputStreamMicro.writeString(1, getEmail());
      if (hasGaiaId())
        paramCodedOutputStreamMicro.writeInt64(2, getGaiaId());
      if (hasZwiebackUid())
        paramCodedOutputStreamMicro.writeInt64(3, getZwiebackUid());
      Iterator localIterator1 = getCookieList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (CookieProtos.MajelCookie)localIterator1.next());
      Iterator localIterator2 = getAdditionalGaiaIdList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeInt64(5, ((Long)localIterator2.next()).longValue());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.AuthInfoProtos
 * JD-Core Version:    0.6.2
 */