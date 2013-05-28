package com.google.majel.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class AliasProto
{
  public static final class Alias extends MessageMicro
  {
    public static final int ALIAS_LOCATION_AVAILABLE_FIELD_NUMBER = 2;
    public static final int ALIAS_TYPE_FIELD_NUMBER = 1;
    public static final int ALIAS_TYPE_HOME = 0;
    public static final int ALIAS_TYPE_WORK = 1;
    private boolean aliasLocationAvailable_ = false;
    private int aliasType_ = 0;
    private int cachedSize = -1;
    private boolean hasAliasLocationAvailable;
    private boolean hasAliasType;

    public static Alias parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Alias().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Alias parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Alias)new Alias().mergeFrom(paramArrayOfByte);
    }

    public final Alias clear()
    {
      clearAliasType();
      clearAliasLocationAvailable();
      this.cachedSize = -1;
      return this;
    }

    public Alias clearAliasLocationAvailable()
    {
      this.hasAliasLocationAvailable = false;
      this.aliasLocationAvailable_ = false;
      return this;
    }

    public Alias clearAliasType()
    {
      this.hasAliasType = false;
      this.aliasType_ = 0;
      return this;
    }

    public boolean getAliasLocationAvailable()
    {
      return this.aliasLocationAvailable_;
    }

    public int getAliasType()
    {
      return this.aliasType_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAliasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getAliasType());
      if (hasAliasLocationAvailable())
        i += CodedOutputStreamMicro.computeBoolSize(2, getAliasLocationAvailable());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAliasLocationAvailable()
    {
      return this.hasAliasLocationAvailable;
    }

    public boolean hasAliasType()
    {
      return this.hasAliasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Alias mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAliasType(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setAliasLocationAvailable(paramCodedInputStreamMicro.readBool());
      }
    }

    public Alias setAliasLocationAvailable(boolean paramBoolean)
    {
      this.hasAliasLocationAvailable = true;
      this.aliasLocationAvailable_ = paramBoolean;
      return this;
    }

    public Alias setAliasType(int paramInt)
    {
      this.hasAliasType = true;
      this.aliasType_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAliasType())
        paramCodedOutputStreamMicro.writeInt32(1, getAliasType());
      if (hasAliasLocationAvailable())
        paramCodedOutputStreamMicro.writeBool(2, getAliasLocationAvailable());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.AliasProto
 * JD-Core Version:    0.6.2
 */