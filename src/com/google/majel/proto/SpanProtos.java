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

public final class SpanProtos
{
  public static final class AlternateSpan extends MessageMicro
  {
    public static final int ALTERNATE_TEXT_FIELD_NUMBER = 1;
    private List<SpanProtos.AlternateText> alternateText_ = Collections.emptyList();
    private int cachedSize = -1;

    public static AlternateSpan parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AlternateSpan().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AlternateSpan parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AlternateSpan)new AlternateSpan().mergeFrom(paramArrayOfByte);
    }

    public AlternateSpan addAlternateText(SpanProtos.AlternateText paramAlternateText)
    {
      if (paramAlternateText == null)
        throw new NullPointerException();
      if (this.alternateText_.isEmpty())
        this.alternateText_ = new ArrayList();
      this.alternateText_.add(paramAlternateText);
      return this;
    }

    public final AlternateSpan clear()
    {
      clearAlternateText();
      this.cachedSize = -1;
      return this;
    }

    public AlternateSpan clearAlternateText()
    {
      this.alternateText_ = Collections.emptyList();
      return this;
    }

    public SpanProtos.AlternateText getAlternateText(int paramInt)
    {
      return (SpanProtos.AlternateText)this.alternateText_.get(paramInt);
    }

    public int getAlternateTextCount()
    {
      return this.alternateText_.size();
    }

    public List<SpanProtos.AlternateText> getAlternateTextList()
    {
      return this.alternateText_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getAlternateTextList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (SpanProtos.AlternateText)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AlternateSpan mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        SpanProtos.AlternateText localAlternateText = new SpanProtos.AlternateText();
        paramCodedInputStreamMicro.readMessage(localAlternateText);
        addAlternateText(localAlternateText);
      }
    }

    public AlternateSpan setAlternateText(int paramInt, SpanProtos.AlternateText paramAlternateText)
    {
      if (paramAlternateText == null)
        throw new NullPointerException();
      this.alternateText_.set(paramInt, paramAlternateText);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getAlternateTextList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (SpanProtos.AlternateText)localIterator.next());
    }
  }

  public static final class AlternateText extends MessageMicro
  {
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private boolean hasConfidence;
    private boolean hasText;
    private String text_ = "";

    public static AlternateText parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AlternateText().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AlternateText parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AlternateText)new AlternateText().mergeFrom(paramArrayOfByte);
    }

    public final AlternateText clear()
    {
      clearText();
      clearConfidence();
      this.cachedSize = -1;
      return this;
    }

    public AlternateText clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public AlternateText clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public float getConfidence()
    {
      return this.confidence_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(2, getConfidence());
      this.cachedSize = i;
      return i;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AlternateText mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 21:
        }
        setConfidence(paramCodedInputStreamMicro.readFloat());
      }
    }

    public AlternateText setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public AlternateText setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(2, getConfidence());
    }
  }

  public static final class Span extends MessageMicro
  {
    public static final int ALTERNATE_SPAN_EXTENSION_FIELD_NUMBER = 26944131;
    public static final int LENGTH_FIELD_NUMBER = 2;
    public static final int START_FIELD_NUMBER = 1;
    private SpanProtos.AlternateSpan alternateSpanExtension_ = null;
    private int cachedSize = -1;
    private boolean hasAlternateSpanExtension;
    private boolean hasLength;
    private boolean hasStart;
    private int length_ = 0;
    private int start_ = 0;

    public static Span parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Span().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Span parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Span)new Span().mergeFrom(paramArrayOfByte);
    }

    public final Span clear()
    {
      clearStart();
      clearLength();
      clearAlternateSpanExtension();
      this.cachedSize = -1;
      return this;
    }

    public Span clearAlternateSpanExtension()
    {
      this.hasAlternateSpanExtension = false;
      this.alternateSpanExtension_ = null;
      return this;
    }

    public Span clearLength()
    {
      this.hasLength = false;
      this.length_ = 0;
      return this;
    }

    public Span clearStart()
    {
      this.hasStart = false;
      this.start_ = 0;
      return this;
    }

    public SpanProtos.AlternateSpan getAlternateSpanExtension()
    {
      return this.alternateSpanExtension_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getLength()
    {
      return this.length_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStart();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getStart());
      if (hasLength())
        i += CodedOutputStreamMicro.computeInt32Size(2, getLength());
      if (hasAlternateSpanExtension())
        i += CodedOutputStreamMicro.computeMessageSize(26944131, getAlternateSpanExtension());
      this.cachedSize = i;
      return i;
    }

    public int getStart()
    {
      return this.start_;
    }

    public boolean hasAlternateSpanExtension()
    {
      return this.hasAlternateSpanExtension;
    }

    public boolean hasLength()
    {
      return this.hasLength;
    }

    public boolean hasStart()
    {
      return this.hasStart;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Span mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStart(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 215553050:
        }
        SpanProtos.AlternateSpan localAlternateSpan = new SpanProtos.AlternateSpan();
        paramCodedInputStreamMicro.readMessage(localAlternateSpan);
        setAlternateSpanExtension(localAlternateSpan);
      }
    }

    public Span setAlternateSpanExtension(SpanProtos.AlternateSpan paramAlternateSpan)
    {
      if (paramAlternateSpan == null)
        throw new NullPointerException();
      this.hasAlternateSpanExtension = true;
      this.alternateSpanExtension_ = paramAlternateSpan;
      return this;
    }

    public Span setLength(int paramInt)
    {
      this.hasLength = true;
      this.length_ = paramInt;
      return this;
    }

    public Span setStart(int paramInt)
    {
      this.hasStart = true;
      this.start_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStart())
        paramCodedOutputStreamMicro.writeInt32(1, getStart());
      if (hasLength())
        paramCodedOutputStreamMicro.writeInt32(2, getLength());
      if (hasAlternateSpanExtension())
        paramCodedOutputStreamMicro.writeMessage(26944131, getAlternateSpanExtension());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.SpanProtos
 * JD-Core Version:    0.6.2
 */