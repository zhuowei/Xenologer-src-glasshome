package com.google.zxing.common;

import java.util.List;

public final class DecoderResult
{
  private final List<byte[]> byteSegments;
  private final String ecLevel;
  private final byte[] rawBytes;
  private final String text;

  public DecoderResult(byte[] paramArrayOfByte, String paramString1, List<byte[]> paramList, String paramString2)
  {
    this.rawBytes = paramArrayOfByte;
    this.text = paramString1;
    this.byteSegments = paramList;
    this.ecLevel = paramString2;
  }

  public List<byte[]> getByteSegments()
  {
    return this.byteSegments;
  }

  public String getECLevel()
  {
    return this.ecLevel;
  }

  public byte[] getRawBytes()
  {
    return this.rawBytes;
  }

  public String getText()
  {
    return this.text;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.DecoderResult
 * JD-Core Version:    0.6.2
 */