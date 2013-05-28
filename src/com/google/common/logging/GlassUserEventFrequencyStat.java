package com.google.common.logging;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.GeneratedMessage.BuilderParent;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class GlassUserEventFrequencyStat extends GeneratedMessage
  implements GlassUserEventFrequencyStatOrBuilder
{
  public static final int DURATION_MS_FIELD_NUMBER = 2;
  public static final int FREQUENCY_HZ_FIELD_NUMBER = 1;
  public static Parser<GlassUserEventFrequencyStat> PARSER = new AbstractParser()
  {
    public GlassUserEventFrequencyStat parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GlassUserEventFrequencyStat(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final GlassUserEventFrequencyStat defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private long durationMs_;
  private long frequencyHz_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new GlassUserEventFrequencyStat(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GlassUserEventFrequencyStat(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 53	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 55	com/google/common/logging/GlassUserEventFrequencyStat:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 57	com/google/common/logging/GlassUserEventFrequencyStat:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 47	com/google/common/logging/GlassUserEventFrequencyStat:initFields	()V
    //   18: invokestatic 63	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +150 -> 177
    //   30: aload_1
    //   31: invokevirtual 69	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+152->190, 8:+52->90, 16:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 73	com/google/common/logging/GlassUserEventFrequencyStat:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 75	com/google/common/logging/GlassUserEventFrequencyStat:bitField0_	I
    //   96: ior
    //   97: putfield 75	com/google/common/logging/GlassUserEventFrequencyStat:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 79	com/google/protobuf/CodedInputStream:readInt64	()J
    //   105: putfield 81	com/google/common/logging/GlassUserEventFrequencyStat:frequencyHz_	J
    //   108: goto -83 -> 25
    //   111: astore 7
    //   113: aload 7
    //   115: aload_0
    //   116: invokevirtual 85	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   119: athrow
    //   120: astore 6
    //   122: aload_0
    //   123: aload_3
    //   124: invokevirtual 91	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   127: putfield 93	com/google/common/logging/GlassUserEventFrequencyStat:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 96	com/google/common/logging/GlassUserEventFrequencyStat:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: aload_0
    //   138: iconst_2
    //   139: aload_0
    //   140: getfield 75	com/google/common/logging/GlassUserEventFrequencyStat:bitField0_	I
    //   143: ior
    //   144: putfield 75	com/google/common/logging/GlassUserEventFrequencyStat:bitField0_	I
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual 79	com/google/protobuf/CodedInputStream:readInt64	()J
    //   152: putfield 98	com/google/common/logging/GlassUserEventFrequencyStat:durationMs_	J
    //   155: goto -130 -> 25
    //   158: astore 5
    //   160: new 50	com/google/protobuf/InvalidProtocolBufferException
    //   163: dup
    //   164: aload 5
    //   166: invokevirtual 102	java/io/IOException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 105	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: invokevirtual 85	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   176: athrow
    //   177: aload_0
    //   178: aload_3
    //   179: invokevirtual 91	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   182: putfield 93	com/google/common/logging/GlassUserEventFrequencyStat:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   185: aload_0
    //   186: invokevirtual 96	com/google/common/logging/GlassUserEventFrequencyStat:makeExtensionsImmutable	()V
    //   189: return
    //   190: iconst_1
    //   191: istore 4
    //   193: goto -168 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	111	com/google/protobuf/InvalidProtocolBufferException
    //   72	84	111	com/google/protobuf/InvalidProtocolBufferException
    //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
    //   137	155	111	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	120	finally
    //   72	84	120	finally
    //   90	108	120	finally
    //   113	120	120	finally
    //   137	155	120	finally
    //   160	177	120	finally
    //   30	36	158	java/io/IOException
    //   72	84	158	java/io/IOException
    //   90	108	158	java/io/IOException
    //   137	155	158	java/io/IOException
  }

  private GlassUserEventFrequencyStat(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GlassUserEventFrequencyStat(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GlassUserEventFrequencyStat getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor;
  }

  private void initFields()
  {
    this.frequencyHz_ = 0L;
    this.durationMs_ = 0L;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GlassUserEventFrequencyStat paramGlassUserEventFrequencyStat)
  {
    return newBuilder().mergeFrom(paramGlassUserEventFrequencyStat);
  }

  public static GlassUserEventFrequencyStat parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GlassUserEventFrequencyStat parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventFrequencyStat parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramByteString);
  }

  public static GlassUserEventFrequencyStat parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GlassUserEventFrequencyStat parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GlassUserEventFrequencyStat parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventFrequencyStat parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramInputStream);
  }

  public static GlassUserEventFrequencyStat parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventFrequencyStat parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GlassUserEventFrequencyStat parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventFrequencyStat)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public GlassUserEventFrequencyStat getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public long getDurationMs()
  {
    return this.durationMs_;
  }

  public long getFrequencyHz()
  {
    return this.frequencyHz_;
  }

  public Parser<GlassUserEventFrequencyStat> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeInt64Size(1, this.frequencyHz_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeInt64Size(2, this.durationMs_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasDurationMs()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasFrequencyHz()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventFrequencyStat.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.common.logging.MutableGlassExtensions$GlassUserEventFrequencyStat");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    if (!hasFrequencyHz())
    {
      this.memoizedIsInitialized = 0;
      return false;
    }
    if (!hasDurationMs())
    {
      this.memoizedIsInitialized = 0;
      return false;
    }
    this.memoizedIsInitialized = 1;
    return true;
  }

  public Builder newBuilderForType()
  {
    return newBuilder();
  }

  protected Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
  {
    return new Builder(paramBuilderParent, null);
  }

  public Builder toBuilder()
  {
    return newBuilder(this);
  }

  protected Object writeReplace()
    throws ObjectStreamException
  {
    return super.writeReplace();
  }

  public void writeTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    getSerializedSize();
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeInt64(1, this.frequencyHz_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeInt64(2, this.durationMs_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GlassUserEventFrequencyStatOrBuilder
  {
    private int bitField0_;
    private long durationMs_;
    private long frequencyHz_;

    private Builder()
    {
      maybeForceBuilderInitialization();
    }

    private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      super();
      maybeForceBuilderInitialization();
    }

    private static Builder create()
    {
      return new Builder();
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (GlassUserEventFrequencyStat.alwaysUseFieldBuilders);
    }

    public GlassUserEventFrequencyStat build()
    {
      GlassUserEventFrequencyStat localGlassUserEventFrequencyStat = buildPartial();
      if (!localGlassUserEventFrequencyStat.isInitialized())
        throw newUninitializedMessageException(localGlassUserEventFrequencyStat);
      return localGlassUserEventFrequencyStat;
    }

    public GlassUserEventFrequencyStat buildPartial()
    {
      GlassUserEventFrequencyStat localGlassUserEventFrequencyStat = new GlassUserEventFrequencyStat(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      GlassUserEventFrequencyStat.access$502(localGlassUserEventFrequencyStat, this.frequencyHz_);
      if ((i & 0x2) == 2)
        k |= 2;
      GlassUserEventFrequencyStat.access$602(localGlassUserEventFrequencyStat, this.durationMs_);
      GlassUserEventFrequencyStat.access$702(localGlassUserEventFrequencyStat, k);
      onBuilt();
      return localGlassUserEventFrequencyStat;
    }

    public Builder clear()
    {
      super.clear();
      this.frequencyHz_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.durationMs_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearDurationMs()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.durationMs_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearFrequencyHz()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.frequencyHz_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public GlassUserEventFrequencyStat getDefaultInstanceForType()
    {
      return GlassUserEventFrequencyStat.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor;
    }

    public long getDurationMs()
    {
      return this.durationMs_;
    }

    public long getFrequencyHz()
    {
      return this.frequencyHz_;
    }

    public boolean hasDurationMs()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasFrequencyHz()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventFrequencyStat.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      if (!hasFrequencyHz());
      while (!hasDurationMs())
        return false;
      return true;
    }

    public Builder mergeFrom(GlassUserEventFrequencyStat paramGlassUserEventFrequencyStat)
    {
      if (paramGlassUserEventFrequencyStat == GlassUserEventFrequencyStat.getDefaultInstance())
        return this;
      if (paramGlassUserEventFrequencyStat.hasFrequencyHz())
        setFrequencyHz(paramGlassUserEventFrequencyStat.getFrequencyHz());
      if (paramGlassUserEventFrequencyStat.hasDurationMs())
        setDurationMs(paramGlassUserEventFrequencyStat.getDurationMs());
      mergeUnknownFields(paramGlassUserEventFrequencyStat.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GlassUserEventFrequencyStat localGlassUserEventFrequencyStat1 = null;
      try
      {
        GlassUserEventFrequencyStat localGlassUserEventFrequencyStat2 = (GlassUserEventFrequencyStat)GlassUserEventFrequencyStat.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGlassUserEventFrequencyStat1 = (GlassUserEventFrequencyStat)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGlassUserEventFrequencyStat1 != null)
          mergeFrom(localGlassUserEventFrequencyStat1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GlassUserEventFrequencyStat))
        return mergeFrom((GlassUserEventFrequencyStat)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setDurationMs(long paramLong)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.durationMs_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setFrequencyHz(long paramLong)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.frequencyHz_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventFrequencyStat
 * JD-Core Version:    0.6.2
 */