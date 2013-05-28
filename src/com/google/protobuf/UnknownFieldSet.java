package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class UnknownFieldSet
  implements MessageLite
{
  private static final Parser PARSER = new Parser();
  private static final UnknownFieldSet defaultInstance = new UnknownFieldSet(Collections.emptyMap());
  private Map<Integer, Field> fields;

  private UnknownFieldSet()
  {
  }

  private UnknownFieldSet(Map<Integer, Field> paramMap)
  {
    this.fields = paramMap;
  }

  public static UnknownFieldSet getDefaultInstance()
  {
    return defaultInstance;
  }

  public static Builder newBuilder()
  {
    return Builder.access$000();
  }

  public static Builder newBuilder(UnknownFieldSet paramUnknownFieldSet)
  {
    return newBuilder().mergeFrom(paramUnknownFieldSet);
  }

  public static UnknownFieldSet parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return newBuilder().mergeFrom(paramByteString).build();
  }

  public static UnknownFieldSet parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return newBuilder().mergeFrom(paramCodedInputStream).build();
  }

  public static UnknownFieldSet parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return newBuilder().mergeFrom(paramInputStream).build();
  }

  public static UnknownFieldSet parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return newBuilder().mergeFrom(paramArrayOfByte).build();
  }

  public Map<Integer, Field> asMap()
  {
    return this.fields;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    while (((paramObject instanceof UnknownFieldSet)) && (this.fields.equals(((UnknownFieldSet)paramObject).fields)))
      return true;
    return false;
  }

  public UnknownFieldSet getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Field getField(int paramInt)
  {
    Field localField = (Field)this.fields.get(Integer.valueOf(paramInt));
    if (localField == null)
      localField = Field.getDefaultInstance();
    return localField;
  }

  public final Parser getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = 0;
    Iterator localIterator = this.fields.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      i += ((Field)localEntry.getValue()).getSerializedSize(((Integer)localEntry.getKey()).intValue());
    }
    return i;
  }

  public int getSerializedSizeAsMessageSet()
  {
    int i = 0;
    Iterator localIterator = this.fields.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      i += ((Field)localEntry.getValue()).getSerializedSizeAsMessageSetExtension(((Integer)localEntry.getKey()).intValue());
    }
    return i;
  }

  public boolean hasField(int paramInt)
  {
    return this.fields.containsKey(Integer.valueOf(paramInt));
  }

  public int hashCode()
  {
    return this.fields.hashCode();
  }

  public boolean isInitialized()
  {
    return true;
  }

  public MutableMessageLite mutableCopy()
  {
    throw new UnsupportedOperationException("UnknownFieldSet can't be converted to mutable messages");
  }

  public Builder newBuilderForType()
  {
    return newBuilder();
  }

  public Builder toBuilder()
  {
    return newBuilder().mergeFrom(this);
  }

  public byte[] toByteArray()
  {
    try
    {
      byte[] arrayOfByte = new byte[getSerializedSize()];
      CodedOutputStream localCodedOutputStream = CodedOutputStream.newInstance(arrayOfByte);
      writeTo(localCodedOutputStream);
      localCodedOutputStream.checkNoSpaceLeft();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public ByteString toByteString()
  {
    try
    {
      ByteString.CodedBuilder localCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
      writeTo(localCodedBuilder.getCodedOutput());
      ByteString localByteString = localCodedBuilder.build();
      return localByteString;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", localIOException);
    }
  }

  public String toString()
  {
    return TextFormat.printToString(this);
  }

  public void writeAsMessageSetTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    Iterator localIterator = this.fields.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((Field)localEntry.getValue()).writeAsMessageSetExtensionTo(((Integer)localEntry.getKey()).intValue(), paramCodedOutputStream);
    }
  }

  public void writeDelimitedTo(OutputStream paramOutputStream)
    throws IOException
  {
    CodedOutputStream localCodedOutputStream = CodedOutputStream.newInstance(paramOutputStream);
    localCodedOutputStream.writeRawVarint32(getSerializedSize());
    writeTo(localCodedOutputStream);
    localCodedOutputStream.flush();
  }

  public void writeTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    Iterator localIterator = this.fields.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((Field)localEntry.getValue()).writeTo(((Integer)localEntry.getKey()).intValue(), paramCodedOutputStream);
    }
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    CodedOutputStream localCodedOutputStream = CodedOutputStream.newInstance(paramOutputStream);
    writeTo(localCodedOutputStream);
    localCodedOutputStream.flush();
  }

  public static final class Builder
    implements MessageLite.Builder
  {
    private Map<Integer, UnknownFieldSet.Field> fields;
    private UnknownFieldSet.Field.Builder lastField;
    private int lastFieldNumber;

    private static Builder create()
    {
      Builder localBuilder = new Builder();
      localBuilder.reinitialize();
      return localBuilder;
    }

    private UnknownFieldSet.Field.Builder getFieldBuilder(int paramInt)
    {
      if (this.lastField != null)
      {
        if (paramInt == this.lastFieldNumber)
          return this.lastField;
        addField(this.lastFieldNumber, this.lastField.build());
      }
      if (paramInt == 0)
        return null;
      UnknownFieldSet.Field localField = (UnknownFieldSet.Field)this.fields.get(Integer.valueOf(paramInt));
      this.lastFieldNumber = paramInt;
      this.lastField = UnknownFieldSet.Field.newBuilder();
      if (localField != null)
        this.lastField.mergeFrom(localField);
      return this.lastField;
    }

    private void reinitialize()
    {
      this.fields = Collections.emptyMap();
      this.lastFieldNumber = 0;
      this.lastField = null;
    }

    public Builder addField(int paramInt, UnknownFieldSet.Field paramField)
    {
      if (paramInt == 0)
        throw new IllegalArgumentException("Zero is not a valid field number.");
      if ((this.lastField != null) && (this.lastFieldNumber == paramInt))
      {
        this.lastField = null;
        this.lastFieldNumber = 0;
      }
      if (this.fields.isEmpty())
        this.fields = new TreeMap();
      this.fields.put(Integer.valueOf(paramInt), paramField);
      return this;
    }

    public Map<Integer, UnknownFieldSet.Field> asMap()
    {
      getFieldBuilder(0);
      return Collections.unmodifiableMap(this.fields);
    }

    public UnknownFieldSet build()
    {
      getFieldBuilder(0);
      if (this.fields.isEmpty());
      for (UnknownFieldSet localUnknownFieldSet = UnknownFieldSet.getDefaultInstance(); ; localUnknownFieldSet = new UnknownFieldSet(Collections.unmodifiableMap(this.fields), null))
      {
        this.fields = null;
        return localUnknownFieldSet;
      }
    }

    public UnknownFieldSet buildPartial()
    {
      return build();
    }

    public Builder clear()
    {
      reinitialize();
      return this;
    }

    public Builder clone()
    {
      getFieldBuilder(0);
      return UnknownFieldSet.newBuilder().mergeFrom(new UnknownFieldSet(this.fields, null));
    }

    public UnknownFieldSet getDefaultInstanceForType()
    {
      return UnknownFieldSet.getDefaultInstance();
    }

    public boolean hasField(int paramInt)
    {
      if (paramInt == 0)
        throw new IllegalArgumentException("Zero is not a valid field number.");
      return (paramInt == this.lastFieldNumber) || (this.fields.containsKey(Integer.valueOf(paramInt)));
    }

    public boolean isInitialized()
    {
      return true;
    }

    public boolean mergeDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      int i = paramInputStream.read();
      if (i == -1)
        return false;
      mergeFrom(new AbstractMessageLite.Builder.LimitedInputStream(paramInputStream, CodedInputStream.readRawVarint32(i, paramInputStream)));
      return true;
    }

    public boolean mergeDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return mergeDelimitedFrom(paramInputStream);
    }

    public Builder mergeField(int paramInt, UnknownFieldSet.Field paramField)
    {
      if (paramInt == 0)
        throw new IllegalArgumentException("Zero is not a valid field number.");
      if (hasField(paramInt))
      {
        getFieldBuilder(paramInt).mergeFrom(paramField);
        return this;
      }
      addField(paramInt, paramField);
      return this;
    }

    public boolean mergeFieldFrom(int paramInt, CodedInputStream paramCodedInputStream)
      throws IOException
    {
      int i = WireFormat.getTagFieldNumber(paramInt);
      switch (WireFormat.getTagWireType(paramInt))
      {
      default:
        throw InvalidProtocolBufferException.invalidWireType();
      case 0:
        getFieldBuilder(i).addVarint(paramCodedInputStream.readInt64());
        return true;
      case 1:
        getFieldBuilder(i).addFixed64(paramCodedInputStream.readFixed64());
        return true;
      case 2:
        getFieldBuilder(i).addLengthDelimited(paramCodedInputStream.readBytes());
        return true;
      case 3:
        Builder localBuilder = UnknownFieldSet.newBuilder();
        paramCodedInputStream.readGroup(i, localBuilder, ExtensionRegistry.getEmptyRegistry());
        getFieldBuilder(i).addGroup(localBuilder.build());
        return true;
      case 4:
        return false;
      case 5:
      }
      getFieldBuilder(i).addFixed32(paramCodedInputStream.readFixed32());
      return true;
    }

    public Builder mergeFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      try
      {
        CodedInputStream localCodedInputStream = paramByteString.newCodedInput();
        mergeFrom(localCodedInputStream);
        localCodedInputStream.checkLastTagWas(0);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw localInvalidProtocolBufferException;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", localIOException);
      }
    }

    public Builder mergeFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return mergeFrom(paramByteString);
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      int i;
      do
        i = paramCodedInputStream.readTag();
      while ((i != 0) && (mergeFieldFrom(i, paramCodedInputStream)));
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return mergeFrom(paramCodedInputStream);
    }

    public Builder mergeFrom(UnknownFieldSet paramUnknownFieldSet)
    {
      if (paramUnknownFieldSet != UnknownFieldSet.getDefaultInstance())
      {
        Iterator localIterator = paramUnknownFieldSet.fields.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          mergeField(((Integer)localEntry.getKey()).intValue(), (UnknownFieldSet.Field)localEntry.getValue());
        }
      }
      return this;
    }

    public Builder mergeFrom(InputStream paramInputStream)
      throws IOException
    {
      CodedInputStream localCodedInputStream = CodedInputStream.newInstance(paramInputStream);
      mergeFrom(localCodedInputStream);
      localCodedInputStream.checkLastTagWas(0);
      return this;
    }

    public Builder mergeFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return mergeFrom(paramInputStream);
    }

    public Builder mergeFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      try
      {
        CodedInputStream localCodedInputStream = CodedInputStream.newInstance(paramArrayOfByte);
        mergeFrom(localCodedInputStream);
        localCodedInputStream.checkLastTagWas(0);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw localInvalidProtocolBufferException;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
      }
    }

    public Builder mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws InvalidProtocolBufferException
    {
      try
      {
        CodedInputStream localCodedInputStream = CodedInputStream.newInstance(paramArrayOfByte, paramInt1, paramInt2);
        mergeFrom(localCodedInputStream);
        localCodedInputStream.checkLastTagWas(0);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw localInvalidProtocolBufferException;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
      }
    }

    public Builder mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return mergeFrom(paramArrayOfByte, paramInt1, paramInt2);
    }

    public Builder mergeFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return mergeFrom(paramArrayOfByte);
    }

    public Builder mergeVarintField(int paramInt1, int paramInt2)
    {
      if (paramInt1 == 0)
        throw new IllegalArgumentException("Zero is not a valid field number.");
      getFieldBuilder(paramInt1).addVarint(paramInt2);
      return this;
    }
  }

  public static final class Field
  {
    private static final Field fieldDefaultInstance = newBuilder().build();
    private List<Integer> fixed32;
    private List<Long> fixed64;
    private List<UnknownFieldSet> group;
    private List<ByteString> lengthDelimited;
    private List<Long> varint;

    public static Field getDefaultInstance()
    {
      return fieldDefaultInstance;
    }

    private Object[] getIdentityArray()
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = this.varint;
      arrayOfObject[1] = this.fixed32;
      arrayOfObject[2] = this.fixed64;
      arrayOfObject[3] = this.lengthDelimited;
      arrayOfObject[4] = this.group;
      return arrayOfObject;
    }

    public static Builder newBuilder()
    {
      return Builder.access$300();
    }

    public static Builder newBuilder(Field paramField)
    {
      return newBuilder().mergeFrom(paramField);
    }

    public boolean equals(Object paramObject)
    {
      if (this == paramObject)
        return true;
      if (!(paramObject instanceof Field))
        return false;
      return Arrays.equals(getIdentityArray(), ((Field)paramObject).getIdentityArray());
    }

    public List<Integer> getFixed32List()
    {
      return this.fixed32;
    }

    public List<Long> getFixed64List()
    {
      return this.fixed64;
    }

    public List<UnknownFieldSet> getGroupList()
    {
      return this.group;
    }

    public List<ByteString> getLengthDelimitedList()
    {
      return this.lengthDelimited;
    }

    public int getSerializedSize(int paramInt)
    {
      int i = 0;
      Iterator localIterator1 = this.varint.iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStream.computeUInt64Size(paramInt, ((Long)localIterator1.next()).longValue());
      Iterator localIterator2 = this.fixed32.iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStream.computeFixed32Size(paramInt, ((Integer)localIterator2.next()).intValue());
      Iterator localIterator3 = this.fixed64.iterator();
      while (localIterator3.hasNext())
        i += CodedOutputStream.computeFixed64Size(paramInt, ((Long)localIterator3.next()).longValue());
      Iterator localIterator4 = this.lengthDelimited.iterator();
      while (localIterator4.hasNext())
        i += CodedOutputStream.computeBytesSize(paramInt, (ByteString)localIterator4.next());
      Iterator localIterator5 = this.group.iterator();
      while (localIterator5.hasNext())
        i += CodedOutputStream.computeGroupSize(paramInt, (UnknownFieldSet)localIterator5.next());
      return i;
    }

    public int getSerializedSizeAsMessageSetExtension(int paramInt)
    {
      int i = 0;
      Iterator localIterator = this.lengthDelimited.iterator();
      while (localIterator.hasNext())
        i += CodedOutputStream.computeRawMessageSetExtensionSize(paramInt, (ByteString)localIterator.next());
      return i;
    }

    public List<Long> getVarintList()
    {
      return this.varint;
    }

    public int hashCode()
    {
      return Arrays.hashCode(getIdentityArray());
    }

    public void writeAsMessageSetExtensionTo(int paramInt, CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      Iterator localIterator = this.lengthDelimited.iterator();
      while (localIterator.hasNext())
        paramCodedOutputStream.writeRawMessageSetExtension(paramInt, (ByteString)localIterator.next());
    }

    public void writeTo(int paramInt, CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      Iterator localIterator1 = this.varint.iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStream.writeUInt64(paramInt, ((Long)localIterator1.next()).longValue());
      Iterator localIterator2 = this.fixed32.iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStream.writeFixed32(paramInt, ((Integer)localIterator2.next()).intValue());
      Iterator localIterator3 = this.fixed64.iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStream.writeFixed64(paramInt, ((Long)localIterator3.next()).longValue());
      Iterator localIterator4 = this.lengthDelimited.iterator();
      while (localIterator4.hasNext())
        paramCodedOutputStream.writeBytes(paramInt, (ByteString)localIterator4.next());
      Iterator localIterator5 = this.group.iterator();
      while (localIterator5.hasNext())
        paramCodedOutputStream.writeGroup(paramInt, (UnknownFieldSet)localIterator5.next());
    }

    public static final class Builder
    {
      private UnknownFieldSet.Field result;

      private static Builder create()
      {
        Builder localBuilder = new Builder();
        localBuilder.result = new UnknownFieldSet.Field(null);
        return localBuilder;
      }

      public Builder addFixed32(int paramInt)
      {
        if (this.result.fixed32 == null)
          UnknownFieldSet.Field.access$602(this.result, new ArrayList());
        this.result.fixed32.add(Integer.valueOf(paramInt));
        return this;
      }

      public Builder addFixed64(long paramLong)
      {
        if (this.result.fixed64 == null)
          UnknownFieldSet.Field.access$702(this.result, new ArrayList());
        this.result.fixed64.add(Long.valueOf(paramLong));
        return this;
      }

      public Builder addGroup(UnknownFieldSet paramUnknownFieldSet)
      {
        if (this.result.group == null)
          UnknownFieldSet.Field.access$902(this.result, new ArrayList());
        this.result.group.add(paramUnknownFieldSet);
        return this;
      }

      public Builder addLengthDelimited(ByteString paramByteString)
      {
        if (this.result.lengthDelimited == null)
          UnknownFieldSet.Field.access$802(this.result, new ArrayList());
        this.result.lengthDelimited.add(paramByteString);
        return this;
      }

      public Builder addVarint(long paramLong)
      {
        if (this.result.varint == null)
          UnknownFieldSet.Field.access$502(this.result, new ArrayList());
        this.result.varint.add(Long.valueOf(paramLong));
        return this;
      }

      public UnknownFieldSet.Field build()
      {
        if (this.result.varint == null)
        {
          UnknownFieldSet.Field.access$502(this.result, Collections.emptyList());
          if (this.result.fixed32 != null)
            break label140;
          UnknownFieldSet.Field.access$602(this.result, Collections.emptyList());
          label42: if (this.result.fixed64 != null)
            break label161;
          UnknownFieldSet.Field.access$702(this.result, Collections.emptyList());
          label63: if (this.result.lengthDelimited != null)
            break label182;
          UnknownFieldSet.Field.access$802(this.result, Collections.emptyList());
          label84: if (this.result.group != null)
            break label203;
          UnknownFieldSet.Field.access$902(this.result, Collections.emptyList());
        }
        while (true)
        {
          UnknownFieldSet.Field localField = this.result;
          this.result = null;
          return localField;
          UnknownFieldSet.Field.access$502(this.result, Collections.unmodifiableList(this.result.varint));
          break;
          label140: UnknownFieldSet.Field.access$602(this.result, Collections.unmodifiableList(this.result.fixed32));
          break label42;
          label161: UnknownFieldSet.Field.access$702(this.result, Collections.unmodifiableList(this.result.fixed64));
          break label63;
          label182: UnknownFieldSet.Field.access$802(this.result, Collections.unmodifiableList(this.result.lengthDelimited));
          break label84;
          label203: UnknownFieldSet.Field.access$902(this.result, Collections.unmodifiableList(this.result.group));
        }
      }

      public Builder clear()
      {
        this.result = new UnknownFieldSet.Field(null);
        return this;
      }

      public Builder mergeFrom(UnknownFieldSet.Field paramField)
      {
        if (!paramField.varint.isEmpty())
        {
          if (this.result.varint == null)
            UnknownFieldSet.Field.access$502(this.result, new ArrayList());
          this.result.varint.addAll(paramField.varint);
        }
        if (!paramField.fixed32.isEmpty())
        {
          if (this.result.fixed32 == null)
            UnknownFieldSet.Field.access$602(this.result, new ArrayList());
          this.result.fixed32.addAll(paramField.fixed32);
        }
        if (!paramField.fixed64.isEmpty())
        {
          if (this.result.fixed64 == null)
            UnknownFieldSet.Field.access$702(this.result, new ArrayList());
          this.result.fixed64.addAll(paramField.fixed64);
        }
        if (!paramField.lengthDelimited.isEmpty())
        {
          if (this.result.lengthDelimited == null)
            UnknownFieldSet.Field.access$802(this.result, new ArrayList());
          this.result.lengthDelimited.addAll(paramField.lengthDelimited);
        }
        if (!paramField.group.isEmpty())
        {
          if (this.result.group == null)
            UnknownFieldSet.Field.access$902(this.result, new ArrayList());
          this.result.group.addAll(paramField.group);
        }
        return this;
      }
    }
  }

  public static final class Parser extends AbstractParser<UnknownFieldSet>
  {
    public UnknownFieldSet parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      UnknownFieldSet.Builder localBuilder = UnknownFieldSet.newBuilder();
      try
      {
        localBuilder.mergeFrom(paramCodedInputStream);
        return localBuilder.buildPartial();
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw localInvalidProtocolBufferException.setUnfinishedMessage(localBuilder.buildPartial());
      }
      catch (IOException localIOException)
      {
        throw new InvalidProtocolBufferException(localIOException.getMessage()).setUnfinishedMessage(localBuilder.buildPartial());
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.UnknownFieldSet
 * JD-Core Version:    0.6.2
 */