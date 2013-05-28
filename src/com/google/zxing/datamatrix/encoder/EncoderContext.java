package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.nio.charset.Charset;

final class EncoderContext
{
  StringBuilder codewords;
  private Dimension maxSize;
  private Dimension minSize;
  String msg;
  int newEncoding;
  int pos;
  private SymbolShapeHint shape;
  private int skipAtEnd;
  SymbolInfo symbolInfo;

  EncoderContext(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes(Charset.forName("ISO-8859-1"));
    StringBuilder localStringBuilder = new StringBuilder(arrayOfByte.length);
    int i = 0;
    int j = arrayOfByte.length;
    while (i < j)
    {
      char c = (char)(0xFF & arrayOfByte[i]);
      if ((c == '?') && (paramString.charAt(i) != '?'))
        throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
      localStringBuilder.append(c);
      i++;
    }
    this.msg = localStringBuilder.toString();
    this.shape = SymbolShapeHint.FORCE_NONE;
    this.codewords = new StringBuilder(paramString.length());
    this.newEncoding = -1;
  }

  private int getTotalMessageCharCount()
  {
    return this.msg.length() - this.skipAtEnd;
  }

  public int getCodewordCount()
  {
    return this.codewords.length();
  }

  public char getCurrent()
  {
    return this.msg.charAt(this.pos);
  }

  public char getCurrentChar()
  {
    return this.msg.charAt(this.pos);
  }

  public String getMessage()
  {
    return this.msg;
  }

  public int getRemainingCharacters()
  {
    return getTotalMessageCharCount() - this.pos;
  }

  public boolean hasMoreCharacters()
  {
    return this.pos < getTotalMessageCharCount();
  }

  public void resetEncoderSignal()
  {
    this.newEncoding = -1;
  }

  public void resetSymbolInfo()
  {
    this.symbolInfo = null;
  }

  public void setSizeConstraints(Dimension paramDimension1, Dimension paramDimension2)
  {
    this.minSize = paramDimension1;
    this.maxSize = paramDimension2;
  }

  public void setSkipAtEnd(int paramInt)
  {
    this.skipAtEnd = paramInt;
  }

  public void setSymbolShape(SymbolShapeHint paramSymbolShapeHint)
  {
    this.shape = paramSymbolShapeHint;
  }

  public void signalEncoderChange(int paramInt)
  {
    this.newEncoding = paramInt;
  }

  public void updateSymbolInfo()
  {
    updateSymbolInfo(getCodewordCount());
  }

  public void updateSymbolInfo(int paramInt)
  {
    if ((this.symbolInfo == null) || (paramInt > this.symbolInfo.dataCapacity))
      this.symbolInfo = SymbolInfo.lookup(paramInt, this.shape, this.minSize, this.maxSize, true);
  }

  public void writeCodeword(char paramChar)
  {
    this.codewords.append(paramChar);
  }

  public void writeCodewords(String paramString)
  {
    this.codewords.append(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.EncoderContext
 * JD-Core Version:    0.6.2
 */