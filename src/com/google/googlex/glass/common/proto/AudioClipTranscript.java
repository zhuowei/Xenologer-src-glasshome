package com.google.googlex.glass.common.proto;

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
import com.google.protobuf.MessageOrBuilder;
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

public final class AudioClipTranscript extends GeneratedMessage
  implements AudioClipTranscriptOrBuilder
{
  public static Parser<AudioClipTranscript> PARSER = new AbstractParser()
  {
    public AudioClipTranscript parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new AudioClipTranscript(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TOKEN_FIELD_NUMBER = 1;
  private static final AudioClipTranscript defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private List<Token> token_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new AudioClipTranscript(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private AudioClipTranscript(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 53	com/google/googlex/glass/common/proto/AudioClipTranscript:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 55	com/google/googlex/glass/common/proto/AudioClipTranscript:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 45	com/google/googlex/glass/common/proto/AudioClipTranscript:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 61	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +146 -> 176
    //   33: aload_1
    //   34: invokevirtual 67	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+27->68, 0:+186->227, 11:+46->87
    //   69: aload_1
    //   70: aload 4
    //   72: aload_2
    //   73: iload 9
    //   75: invokevirtual 71	com/google/googlex/glass/common/proto/AudioClipTranscript:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   78: ifne -50 -> 28
    //   81: iconst_1
    //   82: istore 5
    //   84: goto -56 -> 28
    //   87: iload_3
    //   88: iconst_1
    //   89: iand
    //   90: iconst_1
    //   91: if_icmpeq +18 -> 109
    //   94: aload_0
    //   95: new 73	java/util/ArrayList
    //   98: dup
    //   99: invokespecial 74	java/util/ArrayList:<init>	()V
    //   102: putfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   105: iload_3
    //   106: iconst_1
    //   107: ior
    //   108: istore_3
    //   109: aload_0
    //   110: getfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   113: aload_1
    //   114: iconst_1
    //   115: getstatic 79	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:PARSER	Lcom/google/protobuf/Parser;
    //   118: aload_2
    //   119: invokevirtual 83	com/google/protobuf/CodedInputStream:readGroup	(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   122: invokeinterface 89 2 0
    //   127: pop
    //   128: goto -100 -> 28
    //   131: astore 8
    //   133: aload 8
    //   135: aload_0
    //   136: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   139: athrow
    //   140: astore 7
    //   142: iload_3
    //   143: iconst_1
    //   144: iand
    //   145: iconst_1
    //   146: if_icmpne +14 -> 160
    //   149: aload_0
    //   150: aload_0
    //   151: getfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   154: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   157: putfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   160: aload_0
    //   161: aload 4
    //   163: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   166: putfield 107	com/google/googlex/glass/common/proto/AudioClipTranscript:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   169: aload_0
    //   170: invokevirtual 110	com/google/googlex/glass/common/proto/AudioClipTranscript:makeExtensionsImmutable	()V
    //   173: aload 7
    //   175: athrow
    //   176: iload_3
    //   177: iconst_1
    //   178: iand
    //   179: iconst_1
    //   180: if_icmpne +14 -> 194
    //   183: aload_0
    //   184: aload_0
    //   185: getfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   188: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   191: putfield 76	com/google/googlex/glass/common/proto/AudioClipTranscript:token_	Ljava/util/List;
    //   194: aload_0
    //   195: aload 4
    //   197: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   200: putfield 107	com/google/googlex/glass/common/proto/AudioClipTranscript:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   203: aload_0
    //   204: invokevirtual 110	com/google/googlex/glass/common/proto/AudioClipTranscript:makeExtensionsImmutable	()V
    //   207: return
    //   208: astore 6
    //   210: new 48	com/google/protobuf/InvalidProtocolBufferException
    //   213: dup
    //   214: aload 6
    //   216: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
    //   219: invokespecial 117	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   222: aload_0
    //   223: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   226: athrow
    //   227: iconst_1
    //   228: istore 5
    //   230: goto -202 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	131	com/google/protobuf/InvalidProtocolBufferException
    //   68	81	131	com/google/protobuf/InvalidProtocolBufferException
    //   94	105	131	com/google/protobuf/InvalidProtocolBufferException
    //   109	128	131	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	140	finally
    //   68	81	140	finally
    //   94	105	140	finally
    //   109	128	140	finally
    //   133	140	140	finally
    //   210	227	140	finally
    //   33	39	208	java/io/IOException
    //   68	81	208	java/io/IOException
    //   94	105	208	java/io/IOException
    //   109	128	208	java/io/IOException
  }

  private AudioClipTranscript(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private AudioClipTranscript(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static AudioClipTranscript getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor;
  }

  private void initFields()
  {
    this.token_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$900();
  }

  public static Builder newBuilder(AudioClipTranscript paramAudioClipTranscript)
  {
    return newBuilder().mergeFrom(paramAudioClipTranscript);
  }

  public static AudioClipTranscript parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static AudioClipTranscript parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AudioClipTranscript parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramByteString);
  }

  public static AudioClipTranscript parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static AudioClipTranscript parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramCodedInputStream);
  }

  public static AudioClipTranscript parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static AudioClipTranscript parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramInputStream);
  }

  public static AudioClipTranscript parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AudioClipTranscript parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramArrayOfByte);
  }

  public static AudioClipTranscript parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AudioClipTranscript)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public AudioClipTranscript getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<AudioClipTranscript> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.token_.size(); k++)
      j += CodedOutputStream.computeGroupSize(1, (MessageLite)this.token_.get(k));
    int m = j + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public Token getToken(int paramInt)
  {
    return (Token)this.token_.get(paramInt);
  }

  public int getTokenCount()
  {
    return this.token_.size();
  }

  public List<Token> getTokenList()
  {
    return this.token_;
  }

  public TokenOrBuilder getTokenOrBuilder(int paramInt)
  {
    return (TokenOrBuilder)this.token_.get(paramInt);
  }

  public List<? extends TokenOrBuilder> getTokenOrBuilderList()
  {
    return this.token_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_fieldAccessorTable.ensureFieldAccessorsInitialized(AudioClipTranscript.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableAudioClip$AudioClipTranscript");
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
    for (int i = 0; i < this.token_.size(); i++)
      paramCodedOutputStream.writeGroup(1, (MessageLite)this.token_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements AudioClipTranscriptOrBuilder
  {
    private int bitField0_;
    private RepeatedFieldBuilder<AudioClipTranscript.Token, AudioClipTranscript.Token.Builder, AudioClipTranscript.TokenOrBuilder> tokenBuilder_;
    private List<AudioClipTranscript.Token> token_ = Collections.emptyList();

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

    private void ensureTokenIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.token_ = new ArrayList(this.token_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor;
    }

    private RepeatedFieldBuilder<AudioClipTranscript.Token, AudioClipTranscript.Token.Builder, AudioClipTranscript.TokenOrBuilder> getTokenFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.tokenBuilder_ == null)
      {
        localList = this.token_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.tokenBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.token_ = null;
        return this.tokenBuilder_;
        label55: int j = 0;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (AudioClipTranscript.alwaysUseFieldBuilders)
        getTokenFieldBuilder();
    }

    public Builder addAllToken(Iterable<? extends AudioClipTranscript.Token> paramIterable)
    {
      if (this.tokenBuilder_ == null)
      {
        ensureTokenIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.token_);
        onChanged();
        return this;
      }
      this.tokenBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addToken(int paramInt, AudioClipTranscript.Token.Builder paramBuilder)
    {
      if (this.tokenBuilder_ == null)
      {
        ensureTokenIsMutable();
        this.token_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.tokenBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addToken(int paramInt, AudioClipTranscript.Token paramToken)
    {
      if (this.tokenBuilder_ == null)
      {
        if (paramToken == null)
          throw new NullPointerException();
        ensureTokenIsMutable();
        this.token_.add(paramInt, paramToken);
        onChanged();
        return this;
      }
      this.tokenBuilder_.addMessage(paramInt, paramToken);
      return this;
    }

    public Builder addToken(AudioClipTranscript.Token.Builder paramBuilder)
    {
      if (this.tokenBuilder_ == null)
      {
        ensureTokenIsMutable();
        this.token_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.tokenBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addToken(AudioClipTranscript.Token paramToken)
    {
      if (this.tokenBuilder_ == null)
      {
        if (paramToken == null)
          throw new NullPointerException();
        ensureTokenIsMutable();
        this.token_.add(paramToken);
        onChanged();
        return this;
      }
      this.tokenBuilder_.addMessage(paramToken);
      return this;
    }

    public AudioClipTranscript.Token.Builder addTokenBuilder()
    {
      return (AudioClipTranscript.Token.Builder)getTokenFieldBuilder().addBuilder(AudioClipTranscript.Token.getDefaultInstance());
    }

    public AudioClipTranscript.Token.Builder addTokenBuilder(int paramInt)
    {
      return (AudioClipTranscript.Token.Builder)getTokenFieldBuilder().addBuilder(paramInt, AudioClipTranscript.Token.getDefaultInstance());
    }

    public AudioClipTranscript build()
    {
      AudioClipTranscript localAudioClipTranscript = buildPartial();
      if (!localAudioClipTranscript.isInitialized())
        throw newUninitializedMessageException(localAudioClipTranscript);
      return localAudioClipTranscript;
    }

    public AudioClipTranscript buildPartial()
    {
      AudioClipTranscript localAudioClipTranscript = new AudioClipTranscript(this, null);
      if (this.tokenBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.token_ = Collections.unmodifiableList(this.token_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        AudioClipTranscript.access$1302(localAudioClipTranscript, this.token_);
      }
      while (true)
      {
        onBuilt();
        return localAudioClipTranscript;
        AudioClipTranscript.access$1302(localAudioClipTranscript, this.tokenBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.tokenBuilder_ == null)
      {
        this.token_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }
      this.tokenBuilder_.clear();
      return this;
    }

    public Builder clearToken()
    {
      if (this.tokenBuilder_ == null)
      {
        this.token_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.tokenBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public AudioClipTranscript getDefaultInstanceForType()
    {
      return AudioClipTranscript.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor;
    }

    public AudioClipTranscript.Token getToken(int paramInt)
    {
      if (this.tokenBuilder_ == null)
        return (AudioClipTranscript.Token)this.token_.get(paramInt);
      return (AudioClipTranscript.Token)this.tokenBuilder_.getMessage(paramInt);
    }

    public AudioClipTranscript.Token.Builder getTokenBuilder(int paramInt)
    {
      return (AudioClipTranscript.Token.Builder)getTokenFieldBuilder().getBuilder(paramInt);
    }

    public List<AudioClipTranscript.Token.Builder> getTokenBuilderList()
    {
      return getTokenFieldBuilder().getBuilderList();
    }

    public int getTokenCount()
    {
      if (this.tokenBuilder_ == null)
        return this.token_.size();
      return this.tokenBuilder_.getCount();
    }

    public List<AudioClipTranscript.Token> getTokenList()
    {
      if (this.tokenBuilder_ == null)
        return Collections.unmodifiableList(this.token_);
      return this.tokenBuilder_.getMessageList();
    }

    public AudioClipTranscript.TokenOrBuilder getTokenOrBuilder(int paramInt)
    {
      if (this.tokenBuilder_ == null)
        return (AudioClipTranscript.TokenOrBuilder)this.token_.get(paramInt);
      return (AudioClipTranscript.TokenOrBuilder)this.tokenBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends AudioClipTranscript.TokenOrBuilder> getTokenOrBuilderList()
    {
      if (this.tokenBuilder_ != null)
        return this.tokenBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.token_);
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_fieldAccessorTable.ensureFieldAccessorsInitialized(AudioClipTranscript.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(AudioClipTranscript paramAudioClipTranscript)
    {
      if (paramAudioClipTranscript == AudioClipTranscript.getDefaultInstance())
        return this;
      if (this.tokenBuilder_ == null)
        if (!paramAudioClipTranscript.token_.isEmpty())
        {
          if (!this.token_.isEmpty())
            break label74;
          this.token_ = paramAudioClipTranscript.token_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramAudioClipTranscript.getUnknownFields());
        return this;
        label74: ensureTokenIsMutable();
        this.token_.addAll(paramAudioClipTranscript.token_);
        break;
        if (!paramAudioClipTranscript.token_.isEmpty())
          if (this.tokenBuilder_.isEmpty())
          {
            this.tokenBuilder_.dispose();
            this.tokenBuilder_ = null;
            this.token_ = paramAudioClipTranscript.token_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = AudioClipTranscript.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getTokenFieldBuilder();
            this.tokenBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.tokenBuilder_.addAllMessages(paramAudioClipTranscript.token_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      AudioClipTranscript localAudioClipTranscript1 = null;
      try
      {
        AudioClipTranscript localAudioClipTranscript2 = (AudioClipTranscript)AudioClipTranscript.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localAudioClipTranscript1 = (AudioClipTranscript)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localAudioClipTranscript1 != null)
          mergeFrom(localAudioClipTranscript1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof AudioClipTranscript))
        return mergeFrom((AudioClipTranscript)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeToken(int paramInt)
    {
      if (this.tokenBuilder_ == null)
      {
        ensureTokenIsMutable();
        this.token_.remove(paramInt);
        onChanged();
        return this;
      }
      this.tokenBuilder_.remove(paramInt);
      return this;
    }

    public Builder setToken(int paramInt, AudioClipTranscript.Token.Builder paramBuilder)
    {
      if (this.tokenBuilder_ == null)
      {
        ensureTokenIsMutable();
        this.token_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.tokenBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setToken(int paramInt, AudioClipTranscript.Token paramToken)
    {
      if (this.tokenBuilder_ == null)
      {
        if (paramToken == null)
          throw new NullPointerException();
        ensureTokenIsMutable();
        this.token_.set(paramInt, paramToken);
        onChanged();
        return this;
      }
      this.tokenBuilder_.setMessage(paramInt, paramToken);
      return this;
    }
  }

  public static final class Token extends GeneratedMessage
    implements AudioClipTranscript.TokenOrBuilder
  {
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    public static Parser<Token> PARSER = new AbstractParser()
    {
      public AudioClipTranscript.Token parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new AudioClipTranscript.Token(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int TOKEN_FIELD_NUMBER = 3;
    private static final Token defaultInstance;
    private static volatile MutableMessage mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private float confidence_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object token_;
    private final UnknownFieldSet unknownFields;

    static
    {
      defaultInstance = new Token(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Token(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 57	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 59	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 49	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:initFields	()V
      //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore_3
      //   22: iconst_0
      //   23: istore 4
      //   25: iload 4
      //   27: ifne +150 -> 177
      //   30: aload_1
      //   31: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
      //   34: istore 8
      //   36: iload 8
      //   38: lookupswitch	default:+34->72, 0:+152->190, 21:+52->90, 26:+99->137
      //   73: aload_1
      //   74: aload_3
      //   75: aload_2
      //   76: iload 8
      //   78: invokevirtual 75	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   81: ifne -56 -> 25
      //   84: iconst_1
      //   85: istore 4
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: iconst_1
      //   92: aload_0
      //   93: getfield 77	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:bitField0_	I
      //   96: ior
      //   97: putfield 77	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 81	com/google/protobuf/CodedInputStream:readFloat	()F
      //   105: putfield 83	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:confidence_	F
      //   108: goto -83 -> 25
      //   111: astore 7
      //   113: aload 7
      //   115: aload_0
      //   116: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   119: athrow
      //   120: astore 6
      //   122: aload_0
      //   123: aload_3
      //   124: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   127: putfield 95	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   130: aload_0
      //   131: invokevirtual 98	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:makeExtensionsImmutable	()V
      //   134: aload 6
      //   136: athrow
      //   137: aload_0
      //   138: iconst_2
      //   139: aload_0
      //   140: getfield 77	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:bitField0_	I
      //   143: ior
      //   144: putfield 77	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:bitField0_	I
      //   147: aload_0
      //   148: aload_1
      //   149: invokevirtual 102	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   152: putfield 104	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:token_	Ljava/lang/Object;
      //   155: goto -130 -> 25
      //   158: astore 5
      //   160: new 52	com/google/protobuf/InvalidProtocolBufferException
      //   163: dup
      //   164: aload 5
      //   166: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
      //   169: invokespecial 111	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   172: aload_0
      //   173: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   176: athrow
      //   177: aload_0
      //   178: aload_3
      //   179: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   182: putfield 95	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 98	com/google/googlex/glass/common/proto/AudioClipTranscript$Token:makeExtensionsImmutable	()V
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

    private Token(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }

    private Token(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    public static Token getDefaultInstance()
    {
      return defaultInstance;
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor;
    }

    private void initFields()
    {
      this.confidence_ = 0.0F;
      this.token_ = "";
    }

    public static Builder newBuilder()
    {
      return Builder.access$200();
    }

    public static Builder newBuilder(Token paramToken)
    {
      return newBuilder().mergeFrom(paramToken);
    }

    public static Token parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Token)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Token parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Token)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Token parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Token)PARSER.parseFrom(paramByteString);
    }

    public static Token parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Token)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Token parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Token)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Token parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Token)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Token parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Token)PARSER.parseFrom(paramInputStream);
    }

    public static Token parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Token)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Token parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Token)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Token parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Token)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public float getConfidence()
    {
      return this.confidence_;
    }

    public Token getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<Token> getParserForType()
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
        k = 0 + CodedOutputStream.computeFloatSize(2, this.confidence_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeBytesSize(3, getTokenBytes());
      int m = k + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = m;
      return m;
    }

    public String getToken()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.token_ = str;
      return str;
    }

    public ByteString getTokenBytes()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.token_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }

    public boolean hasConfidence()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasToken()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(Token.class, Builder.class);
    }

    protected MutableMessage internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableAudioClip$AudioClipTranscript$Token");
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
      if ((0x1 & this.bitField0_) == 1)
        paramCodedOutputStream.writeFloat(2, this.confidence_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeBytes(3, getTokenBytes());
      getUnknownFields().writeTo(paramCodedOutputStream);
    }

    public static final class Builder extends GeneratedMessage.Builder<Builder>
      implements AudioClipTranscript.TokenOrBuilder
    {
      private int bitField0_;
      private float confidence_;
      private Object token_ = "";

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
        return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor;
      }

      private void maybeForceBuilderInitialization()
      {
        if (AudioClipTranscript.Token.alwaysUseFieldBuilders);
      }

      public AudioClipTranscript.Token build()
      {
        AudioClipTranscript.Token localToken = buildPartial();
        if (!localToken.isInitialized())
          throw newUninitializedMessageException(localToken);
        return localToken;
      }

      public AudioClipTranscript.Token buildPartial()
      {
        AudioClipTranscript.Token localToken = new AudioClipTranscript.Token(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        AudioClipTranscript.Token.access$602(localToken, this.confidence_);
        if ((i & 0x2) == 2)
          k |= 2;
        AudioClipTranscript.Token.access$702(localToken, this.token_);
        AudioClipTranscript.Token.access$802(localToken, k);
        onBuilt();
        return localToken;
      }

      public Builder clear()
      {
        super.clear();
        this.confidence_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.token_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public Builder clearConfidence()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.confidence_ = 0.0F;
        onChanged();
        return this;
      }

      public Builder clearToken()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.token_ = AudioClipTranscript.Token.getDefaultInstance().getToken();
        onChanged();
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public float getConfidence()
      {
        return this.confidence_;
      }

      public AudioClipTranscript.Token getDefaultInstanceForType()
      {
        return AudioClipTranscript.Token.getDefaultInstance();
      }

      public Descriptors.Descriptor getDescriptorForType()
      {
        return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor;
      }

      public String getToken()
      {
        Object localObject = this.token_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.token_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getTokenBytes()
      {
        Object localObject = this.token_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.token_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public boolean hasConfidence()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasToken()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AudioClip.internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(AudioClipTranscript.Token.class, Builder.class);
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(AudioClipTranscript.Token paramToken)
      {
        if (paramToken == AudioClipTranscript.Token.getDefaultInstance())
          return this;
        if (paramToken.hasConfidence())
          setConfidence(paramToken.getConfidence());
        if (paramToken.hasToken())
        {
          this.bitField0_ = (0x2 | this.bitField0_);
          this.token_ = paramToken.token_;
          onChanged();
        }
        mergeUnknownFields(paramToken.getUnknownFields());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        AudioClipTranscript.Token localToken1 = null;
        try
        {
          AudioClipTranscript.Token localToken2 = (AudioClipTranscript.Token)AudioClipTranscript.Token.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localToken1 = (AudioClipTranscript.Token)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localToken1 != null)
            mergeFrom(localToken1);
        }
      }

      public Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AudioClipTranscript.Token))
          return mergeFrom((AudioClipTranscript.Token)paramMessage);
        super.mergeFrom(paramMessage);
        return this;
      }

      public Builder setConfidence(float paramFloat)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.confidence_ = paramFloat;
        onChanged();
        return this;
      }

      public Builder setToken(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.token_ = paramString;
        onChanged();
        return this;
      }

      public Builder setTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.token_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }

  public static abstract interface TokenOrBuilder extends MessageOrBuilder
  {
    public abstract float getConfidence();

    public abstract String getToken();

    public abstract ByteString getTokenBytes();

    public abstract boolean hasConfidence();

    public abstract boolean hasToken();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AudioClipTranscript
 * JD-Core Version:    0.6.2
 */