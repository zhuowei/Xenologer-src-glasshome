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

public final class AttributionProtos
{
  public static final class Attribution extends MessageMicro
  {
    public static final int DISPLAY_TEXT_FIELD_NUMBER = 5;
    public static final int PAGE_DOMAIN_FIELD_NUMBER = 4;
    public static final int PAGE_TITLE_FIELD_NUMBER = 2;
    public static final int PAGE_URL_FIELD_NUMBER = 1;
    public static final int SNIPPET_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private String displayText_ = "";
    private boolean hasDisplayText;
    private boolean hasPageDomain;
    private boolean hasPageTitle;
    private boolean hasPageUrl;
    private String pageDomain_ = "";
    private String pageTitle_ = "";
    private String pageUrl_ = "";
    private List<String> snippet_ = Collections.emptyList();

    public static Attribution parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Attribution().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Attribution parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Attribution)new Attribution().mergeFrom(paramArrayOfByte);
    }

    public Attribution addSnippet(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.snippet_.isEmpty())
        this.snippet_ = new ArrayList();
      this.snippet_.add(paramString);
      return this;
    }

    public final Attribution clear()
    {
      clearPageUrl();
      clearPageDomain();
      clearPageTitle();
      clearSnippet();
      clearDisplayText();
      this.cachedSize = -1;
      return this;
    }

    public Attribution clearDisplayText()
    {
      this.hasDisplayText = false;
      this.displayText_ = "";
      return this;
    }

    public Attribution clearPageDomain()
    {
      this.hasPageDomain = false;
      this.pageDomain_ = "";
      return this;
    }

    public Attribution clearPageTitle()
    {
      this.hasPageTitle = false;
      this.pageTitle_ = "";
      return this;
    }

    public Attribution clearPageUrl()
    {
      this.hasPageUrl = false;
      this.pageUrl_ = "";
      return this;
    }

    public Attribution clearSnippet()
    {
      this.snippet_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDisplayText()
    {
      return this.displayText_;
    }

    public String getPageDomain()
    {
      return this.pageDomain_;
    }

    public String getPageTitle()
    {
      return this.pageTitle_;
    }

    public String getPageUrl()
    {
      return this.pageUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasPageUrl();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPageUrl());
      if (hasPageTitle())
        i += CodedOutputStreamMicro.computeStringSize(2, getPageTitle());
      int j = 0;
      Iterator localIterator = getSnippetList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getSnippetList().size();
      if (hasPageDomain())
        k += CodedOutputStreamMicro.computeStringSize(4, getPageDomain());
      if (hasDisplayText())
        k += CodedOutputStreamMicro.computeStringSize(5, getDisplayText());
      this.cachedSize = k;
      return k;
    }

    public String getSnippet(int paramInt)
    {
      return (String)this.snippet_.get(paramInt);
    }

    public int getSnippetCount()
    {
      return this.snippet_.size();
    }

    public List<String> getSnippetList()
    {
      return this.snippet_;
    }

    public boolean hasDisplayText()
    {
      return this.hasDisplayText;
    }

    public boolean hasPageDomain()
    {
      return this.hasPageDomain;
    }

    public boolean hasPageTitle()
    {
      return this.hasPageTitle;
    }

    public boolean hasPageUrl()
    {
      return this.hasPageUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Attribution mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setPageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setPageTitle(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          addSnippet(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setPageDomain(paramCodedInputStreamMicro.readString());
          break;
        case 42:
        }
        setDisplayText(paramCodedInputStreamMicro.readString());
      }
    }

    public Attribution setDisplayText(String paramString)
    {
      this.hasDisplayText = true;
      this.displayText_ = paramString;
      return this;
    }

    public Attribution setPageDomain(String paramString)
    {
      this.hasPageDomain = true;
      this.pageDomain_ = paramString;
      return this;
    }

    public Attribution setPageTitle(String paramString)
    {
      this.hasPageTitle = true;
      this.pageTitle_ = paramString;
      return this;
    }

    public Attribution setPageUrl(String paramString)
    {
      this.hasPageUrl = true;
      this.pageUrl_ = paramString;
      return this;
    }

    public Attribution setSnippet(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.snippet_.set(paramInt, paramString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasPageUrl())
        paramCodedOutputStreamMicro.writeString(1, getPageUrl());
      if (hasPageTitle())
        paramCodedOutputStreamMicro.writeString(2, getPageTitle());
      Iterator localIterator = getSnippetList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(3, (String)localIterator.next());
      if (hasPageDomain())
        paramCodedOutputStreamMicro.writeString(4, getPageDomain());
      if (hasDisplayText())
        paramCodedOutputStreamMicro.writeString(5, getDisplayText());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.AttributionProtos
 * JD-Core Version:    0.6.2
 */