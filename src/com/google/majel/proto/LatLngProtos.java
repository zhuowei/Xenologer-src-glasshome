package com.google.majel.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class LatLngProtos
{
  public static final class LatLng extends MessageMicro
  {
    public static final int ACCURACY_METERS_FIELD_NUMBER = 4;
    public static final int LABEL_FIELD_NUMBER = 3;
    public static final int LAT_DEGREES_FIELD_NUMBER = 1;
    public static final int LNG_DEGREES_FIELD_NUMBER = 2;
    private float accuracyMeters_ = 0.0F;
    private int cachedSize = -1;
    private boolean hasAccuracyMeters;
    private boolean hasLabel;
    private boolean hasLatDegrees;
    private boolean hasLngDegrees;
    private String label_ = "";
    private float latDegrees_ = 0.0F;
    private float lngDegrees_ = 0.0F;

    public static LatLng parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LatLng().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LatLng parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LatLng)new LatLng().mergeFrom(paramArrayOfByte);
    }

    public final LatLng clear()
    {
      clearLatDegrees();
      clearLngDegrees();
      clearLabel();
      clearAccuracyMeters();
      this.cachedSize = -1;
      return this;
    }

    public LatLng clearAccuracyMeters()
    {
      this.hasAccuracyMeters = false;
      this.accuracyMeters_ = 0.0F;
      return this;
    }

    public LatLng clearLabel()
    {
      this.hasLabel = false;
      this.label_ = "";
      return this;
    }

    public LatLng clearLatDegrees()
    {
      this.hasLatDegrees = false;
      this.latDegrees_ = 0.0F;
      return this;
    }

    public LatLng clearLngDegrees()
    {
      this.hasLngDegrees = false;
      this.lngDegrees_ = 0.0F;
      return this;
    }

    public float getAccuracyMeters()
    {
      return this.accuracyMeters_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLabel()
    {
      return this.label_;
    }

    public float getLatDegrees()
    {
      return this.latDegrees_;
    }

    public float getLngDegrees()
    {
      return this.lngDegrees_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLatDegrees();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getLatDegrees());
      if (hasLngDegrees())
        i += CodedOutputStreamMicro.computeFloatSize(2, getLngDegrees());
      if (hasLabel())
        i += CodedOutputStreamMicro.computeStringSize(3, getLabel());
      if (hasAccuracyMeters())
        i += CodedOutputStreamMicro.computeFloatSize(4, getAccuracyMeters());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAccuracyMeters()
    {
      return this.hasAccuracyMeters;
    }

    public boolean hasLabel()
    {
      return this.hasLabel;
    }

    public boolean hasLatDegrees()
    {
      return this.hasLatDegrees;
    }

    public boolean hasLngDegrees()
    {
      return this.hasLngDegrees;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LatLng mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 13:
          setLatDegrees(paramCodedInputStreamMicro.readFloat());
          break;
        case 21:
          setLngDegrees(paramCodedInputStreamMicro.readFloat());
          break;
        case 26:
          setLabel(paramCodedInputStreamMicro.readString());
          break;
        case 37:
        }
        setAccuracyMeters(paramCodedInputStreamMicro.readFloat());
      }
    }

    public LatLng setAccuracyMeters(float paramFloat)
    {
      this.hasAccuracyMeters = true;
      this.accuracyMeters_ = paramFloat;
      return this;
    }

    public LatLng setLabel(String paramString)
    {
      this.hasLabel = true;
      this.label_ = paramString;
      return this;
    }

    public LatLng setLatDegrees(float paramFloat)
    {
      this.hasLatDegrees = true;
      this.latDegrees_ = paramFloat;
      return this;
    }

    public LatLng setLngDegrees(float paramFloat)
    {
      this.hasLngDegrees = true;
      this.lngDegrees_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLatDegrees())
        paramCodedOutputStreamMicro.writeFloat(1, getLatDegrees());
      if (hasLngDegrees())
        paramCodedOutputStreamMicro.writeFloat(2, getLngDegrees());
      if (hasLabel())
        paramCodedOutputStreamMicro.writeString(3, getLabel());
      if (hasAccuracyMeters())
        paramCodedOutputStreamMicro.writeFloat(4, getAccuracyMeters());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.LatLngProtos
 * JD-Core Version:    0.6.2
 */