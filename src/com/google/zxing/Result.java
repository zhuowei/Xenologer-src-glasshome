package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

public final class Result
{
  private final BarcodeFormat format;
  private final byte[] rawBytes;
  private Map<ResultMetadataType, Object> resultMetadata;
  private ResultPoint[] resultPoints;
  private final String text;
  private final long timestamp;

  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat)
  {
    this(paramString, paramArrayOfByte, paramArrayOfResultPoint, paramBarcodeFormat, System.currentTimeMillis());
  }

  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat, long paramLong)
  {
    this.text = paramString;
    this.rawBytes = paramArrayOfByte;
    this.resultPoints = paramArrayOfResultPoint;
    this.format = paramBarcodeFormat;
    this.resultMetadata = null;
    this.timestamp = paramLong;
  }

  public void addResultPoints(ResultPoint[] paramArrayOfResultPoint)
  {
    ResultPoint[] arrayOfResultPoint1 = this.resultPoints;
    if (arrayOfResultPoint1 == null)
      this.resultPoints = paramArrayOfResultPoint;
    while ((paramArrayOfResultPoint == null) || (paramArrayOfResultPoint.length <= 0))
      return;
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[arrayOfResultPoint1.length + paramArrayOfResultPoint.length];
    System.arraycopy(arrayOfResultPoint1, 0, arrayOfResultPoint2, 0, arrayOfResultPoint1.length);
    System.arraycopy(paramArrayOfResultPoint, 0, arrayOfResultPoint2, arrayOfResultPoint1.length, paramArrayOfResultPoint.length);
    this.resultPoints = arrayOfResultPoint2;
  }

  public BarcodeFormat getBarcodeFormat()
  {
    return this.format;
  }

  public byte[] getRawBytes()
  {
    return this.rawBytes;
  }

  public Map<ResultMetadataType, Object> getResultMetadata()
  {
    return this.resultMetadata;
  }

  public ResultPoint[] getResultPoints()
  {
    return this.resultPoints;
  }

  public String getText()
  {
    return this.text;
  }

  public long getTimestamp()
  {
    return this.timestamp;
  }

  public void putAllMetadata(Map<ResultMetadataType, Object> paramMap)
  {
    if (paramMap != null)
    {
      if (this.resultMetadata == null)
        this.resultMetadata = paramMap;
    }
    else
      return;
    this.resultMetadata.putAll(paramMap);
  }

  public void putMetadata(ResultMetadataType paramResultMetadataType, Object paramObject)
  {
    if (this.resultMetadata == null)
      this.resultMetadata = new EnumMap(ResultMetadataType.class);
    this.resultMetadata.put(paramResultMetadataType, paramObject);
  }

  public String toString()
  {
    return this.text;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.Result
 * JD-Core Version:    0.6.2
 */