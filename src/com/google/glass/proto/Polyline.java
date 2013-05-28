package com.google.glass.proto;

import com.google.protobuf.AbstractMessageLite.Builder;
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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Polyline extends GeneratedMessage
  implements PolylineOrBuilder
{
  public static final int COLOR_ARGB_FIELD_NUMBER = 3;
  public static Parser<Polyline> PARSER = new AbstractParser()
  {
    public Polyline parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Polyline(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int VERTEX_FIELD_NUMBER = 1;
  public static final int WIDTH_FIELD_NUMBER = 2;
  private static final Polyline defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private int colorArgb_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;
  private List<LatLng> vertex_;
  private float width_;

  static
  {
    defaultInstance = new Polyline(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Polyline(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 61	com/google/glass/proto/Polyline:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 63	com/google/glass/proto/Polyline:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 53	com/google/glass/proto/Polyline:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 69	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +222 -> 252
    //   33: aload_1
    //   34: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+43->84, 0:+243->284, 10:+62->103, 21:+150->191, 29:+190->231
    //   85: aload_1
    //   86: aload 4
    //   88: aload_2
    //   89: iload 9
    //   91: invokevirtual 79	com/google/glass/proto/Polyline:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   94: ifne -66 -> 28
    //   97: iconst_1
    //   98: istore 5
    //   100: goto -72 -> 28
    //   103: iload_3
    //   104: iconst_1
    //   105: iand
    //   106: iconst_1
    //   107: if_icmpeq +18 -> 125
    //   110: aload_0
    //   111: new 81	java/util/ArrayList
    //   114: dup
    //   115: invokespecial 82	java/util/ArrayList:<init>	()V
    //   118: putfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   121: iload_3
    //   122: iconst_1
    //   123: ior
    //   124: istore_3
    //   125: aload_0
    //   126: getfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   129: aload_1
    //   130: getstatic 87	com/google/glass/proto/LatLng:PARSER	Lcom/google/protobuf/Parser;
    //   133: aload_2
    //   134: invokevirtual 91	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   137: invokeinterface 97 2 0
    //   142: pop
    //   143: goto -115 -> 28
    //   146: astore 8
    //   148: aload 8
    //   150: aload_0
    //   151: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   154: athrow
    //   155: astore 7
    //   157: iload_3
    //   158: iconst_1
    //   159: iand
    //   160: iconst_1
    //   161: if_icmpne +14 -> 175
    //   164: aload_0
    //   165: aload_0
    //   166: getfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   169: invokestatic 107	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   172: putfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   175: aload_0
    //   176: aload 4
    //   178: invokevirtual 113	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   181: putfield 115	com/google/glass/proto/Polyline:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   184: aload_0
    //   185: invokevirtual 118	com/google/glass/proto/Polyline:makeExtensionsImmutable	()V
    //   188: aload 7
    //   190: athrow
    //   191: aload_0
    //   192: iconst_1
    //   193: aload_0
    //   194: getfield 120	com/google/glass/proto/Polyline:bitField0_	I
    //   197: ior
    //   198: putfield 120	com/google/glass/proto/Polyline:bitField0_	I
    //   201: aload_0
    //   202: aload_1
    //   203: invokevirtual 124	com/google/protobuf/CodedInputStream:readFloat	()F
    //   206: putfield 126	com/google/glass/proto/Polyline:width_	F
    //   209: goto -181 -> 28
    //   212: astore 6
    //   214: new 56	com/google/protobuf/InvalidProtocolBufferException
    //   217: dup
    //   218: aload 6
    //   220: invokevirtual 130	java/io/IOException:getMessage	()Ljava/lang/String;
    //   223: invokespecial 133	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   226: aload_0
    //   227: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   230: athrow
    //   231: aload_0
    //   232: iconst_2
    //   233: aload_0
    //   234: getfield 120	com/google/glass/proto/Polyline:bitField0_	I
    //   237: ior
    //   238: putfield 120	com/google/glass/proto/Polyline:bitField0_	I
    //   241: aload_0
    //   242: aload_1
    //   243: invokevirtual 136	com/google/protobuf/CodedInputStream:readFixed32	()I
    //   246: putfield 138	com/google/glass/proto/Polyline:colorArgb_	I
    //   249: goto -221 -> 28
    //   252: iload_3
    //   253: iconst_1
    //   254: iand
    //   255: iconst_1
    //   256: if_icmpne +14 -> 270
    //   259: aload_0
    //   260: aload_0
    //   261: getfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   264: invokestatic 107	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   267: putfield 84	com/google/glass/proto/Polyline:vertex_	Ljava/util/List;
    //   270: aload_0
    //   271: aload 4
    //   273: invokevirtual 113	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   276: putfield 115	com/google/glass/proto/Polyline:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   279: aload_0
    //   280: invokevirtual 118	com/google/glass/proto/Polyline:makeExtensionsImmutable	()V
    //   283: return
    //   284: iconst_1
    //   285: istore 5
    //   287: goto -259 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	146	com/google/protobuf/InvalidProtocolBufferException
    //   84	97	146	com/google/protobuf/InvalidProtocolBufferException
    //   110	121	146	com/google/protobuf/InvalidProtocolBufferException
    //   125	143	146	com/google/protobuf/InvalidProtocolBufferException
    //   191	209	146	com/google/protobuf/InvalidProtocolBufferException
    //   231	249	146	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	155	finally
    //   84	97	155	finally
    //   110	121	155	finally
    //   125	143	155	finally
    //   148	155	155	finally
    //   191	209	155	finally
    //   214	231	155	finally
    //   231	249	155	finally
    //   33	39	212	java/io/IOException
    //   84	97	212	java/io/IOException
    //   110	121	212	java/io/IOException
    //   125	143	212	java/io/IOException
    //   191	209	212	java/io/IOException
    //   231	249	212	java/io/IOException
  }

  private Polyline(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Polyline(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Polyline getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return MapRenderingService.internal_static_glass_proto_Polyline_descriptor;
  }

  private void initFields()
  {
    this.vertex_ = Collections.emptyList();
    this.width_ = 0.0F;
    this.colorArgb_ = 0;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(Polyline paramPolyline)
  {
    return newBuilder().mergeFrom(paramPolyline);
  }

  public static Polyline parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Polyline)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Polyline parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Polyline)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Polyline parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Polyline)PARSER.parseFrom(paramByteString);
  }

  public static Polyline parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Polyline)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Polyline parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Polyline)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Polyline parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Polyline)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Polyline parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Polyline)PARSER.parseFrom(paramInputStream);
  }

  public static Polyline parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Polyline)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Polyline parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Polyline)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Polyline parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Polyline)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public int getColorArgb()
  {
    return this.colorArgb_;
  }

  public Polyline getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<Polyline> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.vertex_.size(); k++)
      j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.vertex_.get(k));
    if ((0x1 & this.bitField0_) == 1)
      j += CodedOutputStream.computeFloatSize(2, this.width_);
    if ((0x2 & this.bitField0_) == 2)
      j += CodedOutputStream.computeFixed32Size(3, this.colorArgb_);
    int m = j + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public LatLng getVertex(int paramInt)
  {
    return (LatLng)this.vertex_.get(paramInt);
  }

  public int getVertexCount()
  {
    return this.vertex_.size();
  }

  public List<LatLng> getVertexList()
  {
    return this.vertex_;
  }

  public LatLngOrBuilder getVertexOrBuilder(int paramInt)
  {
    return (LatLngOrBuilder)this.vertex_.get(paramInt);
  }

  public List<? extends LatLngOrBuilder> getVertexOrBuilderList()
  {
    return this.vertex_;
  }

  public float getWidth()
  {
    return this.width_;
  }

  public boolean hasColorArgb()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasWidth()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return MapRenderingService.internal_static_glass_proto_Polyline_fieldAccessorTable.ensureFieldAccessorsInitialized(Polyline.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.glass.proto.MutableMapRenderingService$Polyline");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
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
    for (int i = 0; i < this.vertex_.size(); i++)
      paramCodedOutputStream.writeMessage(1, (MessageLite)this.vertex_.get(i));
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeFloat(2, this.width_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeFixed32(3, this.colorArgb_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements PolylineOrBuilder
  {
    private int bitField0_;
    private int colorArgb_;
    private RepeatedFieldBuilder<LatLng, LatLng.Builder, LatLngOrBuilder> vertexBuilder_;
    private List<LatLng> vertex_ = Collections.emptyList();
    private float width_;

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

    private void ensureVertexIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.vertex_ = new ArrayList(this.vertex_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return MapRenderingService.internal_static_glass_proto_Polyline_descriptor;
    }

    private RepeatedFieldBuilder<LatLng, LatLng.Builder, LatLngOrBuilder> getVertexFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.vertexBuilder_ == null)
      {
        localList = this.vertex_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.vertexBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.vertex_ = null;
        return this.vertexBuilder_;
        label55: int j = 0;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (Polyline.alwaysUseFieldBuilders)
        getVertexFieldBuilder();
    }

    public Builder addAllVertex(Iterable<? extends LatLng> paramIterable)
    {
      if (this.vertexBuilder_ == null)
      {
        ensureVertexIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.vertex_);
        onChanged();
        return this;
      }
      this.vertexBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addVertex(int paramInt, LatLng.Builder paramBuilder)
    {
      if (this.vertexBuilder_ == null)
      {
        ensureVertexIsMutable();
        this.vertex_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.vertexBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addVertex(int paramInt, LatLng paramLatLng)
    {
      if (this.vertexBuilder_ == null)
      {
        if (paramLatLng == null)
          throw new NullPointerException();
        ensureVertexIsMutable();
        this.vertex_.add(paramInt, paramLatLng);
        onChanged();
        return this;
      }
      this.vertexBuilder_.addMessage(paramInt, paramLatLng);
      return this;
    }

    public Builder addVertex(LatLng.Builder paramBuilder)
    {
      if (this.vertexBuilder_ == null)
      {
        ensureVertexIsMutable();
        this.vertex_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.vertexBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addVertex(LatLng paramLatLng)
    {
      if (this.vertexBuilder_ == null)
      {
        if (paramLatLng == null)
          throw new NullPointerException();
        ensureVertexIsMutable();
        this.vertex_.add(paramLatLng);
        onChanged();
        return this;
      }
      this.vertexBuilder_.addMessage(paramLatLng);
      return this;
    }

    public LatLng.Builder addVertexBuilder()
    {
      return (LatLng.Builder)getVertexFieldBuilder().addBuilder(LatLng.getDefaultInstance());
    }

    public LatLng.Builder addVertexBuilder(int paramInt)
    {
      return (LatLng.Builder)getVertexFieldBuilder().addBuilder(paramInt, LatLng.getDefaultInstance());
    }

    public Polyline build()
    {
      Polyline localPolyline = buildPartial();
      if (!localPolyline.isInitialized())
        throw newUninitializedMessageException(localPolyline);
      return localPolyline;
    }

    public Polyline buildPartial()
    {
      Polyline localPolyline = new Polyline(this, null);
      int i = this.bitField0_;
      if (this.vertexBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.vertex_ = Collections.unmodifiableList(this.vertex_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        Polyline.access$502(localPolyline, this.vertex_);
      }
      while (true)
      {
        int j = i & 0x2;
        int k = 0;
        if (j == 2)
          k = 0x0 | 0x1;
        Polyline.access$602(localPolyline, this.width_);
        if ((i & 0x4) == 4)
          k |= 2;
        Polyline.access$702(localPolyline, this.colorArgb_);
        Polyline.access$802(localPolyline, k);
        onBuilt();
        return localPolyline;
        Polyline.access$502(localPolyline, this.vertexBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.vertexBuilder_ == null)
      {
        this.vertex_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      }
      while (true)
      {
        this.width_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.colorArgb_ = 0;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
        this.vertexBuilder_.clear();
      }
    }

    public Builder clearColorArgb()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.colorArgb_ = 0;
      onChanged();
      return this;
    }

    public Builder clearVertex()
    {
      if (this.vertexBuilder_ == null)
      {
        this.vertex_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.vertexBuilder_.clear();
      return this;
    }

    public Builder clearWidth()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.width_ = 0.0F;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public int getColorArgb()
    {
      return this.colorArgb_;
    }

    public Polyline getDefaultInstanceForType()
    {
      return Polyline.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return MapRenderingService.internal_static_glass_proto_Polyline_descriptor;
    }

    public LatLng getVertex(int paramInt)
    {
      if (this.vertexBuilder_ == null)
        return (LatLng)this.vertex_.get(paramInt);
      return (LatLng)this.vertexBuilder_.getMessage(paramInt);
    }

    public LatLng.Builder getVertexBuilder(int paramInt)
    {
      return (LatLng.Builder)getVertexFieldBuilder().getBuilder(paramInt);
    }

    public List<LatLng.Builder> getVertexBuilderList()
    {
      return getVertexFieldBuilder().getBuilderList();
    }

    public int getVertexCount()
    {
      if (this.vertexBuilder_ == null)
        return this.vertex_.size();
      return this.vertexBuilder_.getCount();
    }

    public List<LatLng> getVertexList()
    {
      if (this.vertexBuilder_ == null)
        return Collections.unmodifiableList(this.vertex_);
      return this.vertexBuilder_.getMessageList();
    }

    public LatLngOrBuilder getVertexOrBuilder(int paramInt)
    {
      if (this.vertexBuilder_ == null)
        return (LatLngOrBuilder)this.vertex_.get(paramInt);
      return (LatLngOrBuilder)this.vertexBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends LatLngOrBuilder> getVertexOrBuilderList()
    {
      if (this.vertexBuilder_ != null)
        return this.vertexBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.vertex_);
    }

    public float getWidth()
    {
      return this.width_;
    }

    public boolean hasColorArgb()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasWidth()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return MapRenderingService.internal_static_glass_proto_Polyline_fieldAccessorTable.ensureFieldAccessorsInitialized(Polyline.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(Polyline paramPolyline)
    {
      if (paramPolyline == Polyline.getDefaultInstance())
        return this;
      if (this.vertexBuilder_ == null)
        if (!paramPolyline.vertex_.isEmpty())
        {
          if (!this.vertex_.isEmpty())
            break label106;
          this.vertex_ = paramPolyline.vertex_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        if (paramPolyline.hasWidth())
          setWidth(paramPolyline.getWidth());
        if (paramPolyline.hasColorArgb())
          setColorArgb(paramPolyline.getColorArgb());
        mergeUnknownFields(paramPolyline.getUnknownFields());
        return this;
        label106: ensureVertexIsMutable();
        this.vertex_.addAll(paramPolyline.vertex_);
        break;
        if (!paramPolyline.vertex_.isEmpty())
          if (this.vertexBuilder_.isEmpty())
          {
            this.vertexBuilder_.dispose();
            this.vertexBuilder_ = null;
            this.vertex_ = paramPolyline.vertex_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = Polyline.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getVertexFieldBuilder();
            this.vertexBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.vertexBuilder_.addAllMessages(paramPolyline.vertex_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Polyline localPolyline1 = null;
      try
      {
        Polyline localPolyline2 = (Polyline)Polyline.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localPolyline1 = (Polyline)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localPolyline1 != null)
          mergeFrom(localPolyline1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Polyline))
        return mergeFrom((Polyline)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeVertex(int paramInt)
    {
      if (this.vertexBuilder_ == null)
      {
        ensureVertexIsMutable();
        this.vertex_.remove(paramInt);
        onChanged();
        return this;
      }
      this.vertexBuilder_.remove(paramInt);
      return this;
    }

    public Builder setColorArgb(int paramInt)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.colorArgb_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setVertex(int paramInt, LatLng.Builder paramBuilder)
    {
      if (this.vertexBuilder_ == null)
      {
        ensureVertexIsMutable();
        this.vertex_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.vertexBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setVertex(int paramInt, LatLng paramLatLng)
    {
      if (this.vertexBuilder_ == null)
      {
        if (paramLatLng == null)
          throw new NullPointerException();
        ensureVertexIsMutable();
        this.vertex_.set(paramInt, paramLatLng);
        onChanged();
        return this;
      }
      this.vertexBuilder_.setMessage(paramInt, paramLatLng);
      return this;
    }

    public Builder setWidth(float paramFloat)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.width_ = paramFloat;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.Polyline
 * JD-Core Version:    0.6.2
 */