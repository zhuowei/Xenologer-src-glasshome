package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class GeneralAppIdDecoder
{
  private final StringBuilder buffer = new StringBuilder();
  private final CurrentParsingState current = new CurrentParsingState();
  private final BitArray information;

  GeneralAppIdDecoder(BitArray paramBitArray)
  {
    this.information = paramBitArray;
  }

  private DecodedChar decodeAlphanumeric(int paramInt)
  {
    int i = extractNumericValueFromBitArray(paramInt, 5);
    if (i == 15)
      return new DecodedChar(paramInt + 5, '$');
    if ((i >= 5) && (i < 15))
      return new DecodedChar(paramInt + 5, (char)(-5 + (i + 48)));
    int j = extractNumericValueFromBitArray(paramInt, 6);
    if ((j >= 32) && (j < 58))
      return new DecodedChar(paramInt + 6, (char)(j + 33));
    char c;
    switch (j)
    {
    default:
      throw new IllegalStateException("Decoding invalid alphanumeric value: " + j);
    case 58:
      c = '*';
    case 59:
    case 60:
    case 61:
    case 62:
    }
    while (true)
    {
      return new DecodedChar(paramInt + 6, c);
      c = ',';
      continue;
      c = '-';
      continue;
      c = '.';
      continue;
      c = '/';
    }
  }

  private DecodedChar decodeIsoIec646(int paramInt)
  {
    int i = extractNumericValueFromBitArray(paramInt, 5);
    if (i == 15)
      return new DecodedChar(paramInt + 5, '$');
    if ((i >= 5) && (i < 15))
      return new DecodedChar(paramInt + 5, (char)(-5 + (i + 48)));
    int j = extractNumericValueFromBitArray(paramInt, 7);
    if ((j >= 64) && (j < 90))
      return new DecodedChar(paramInt + 7, (char)(j + 1));
    if ((j >= 90) && (j < 116))
      return new DecodedChar(paramInt + 7, (char)(j + 7));
    int k = extractNumericValueFromBitArray(paramInt, 8);
    char c;
    switch (k)
    {
    default:
      throw new IllegalArgumentException("Decoding invalid ISO/IEC 646 value: " + k);
    case 232:
      c = '!';
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    }
    while (true)
    {
      return new DecodedChar(paramInt + 8, c);
      c = '"';
      continue;
      c = '%';
      continue;
      c = '&';
      continue;
      c = '\'';
      continue;
      c = '(';
      continue;
      c = ')';
      continue;
      c = '*';
      continue;
      c = '+';
      continue;
      c = ',';
      continue;
      c = '-';
      continue;
      c = '.';
      continue;
      c = '/';
      continue;
      c = ':';
      continue;
      c = ';';
      continue;
      c = '<';
      continue;
      c = '=';
      continue;
      c = '>';
      continue;
      c = '?';
      continue;
      c = '_';
      continue;
      c = ' ';
    }
  }

  private DecodedNumeric decodeNumeric(int paramInt)
  {
    if (paramInt + 7 > this.information.getSize())
    {
      int m = extractNumericValueFromBitArray(paramInt, 4);
      if (m == 0)
        return new DecodedNumeric(this.information.getSize(), 10, 10);
      return new DecodedNumeric(this.information.getSize(), m - 1, 10);
    }
    int i = extractNumericValueFromBitArray(paramInt, 7);
    int j = (i - 8) / 11;
    int k = (i - 8) % 11;
    return new DecodedNumeric(paramInt + 7, j, k);
  }

  static int extractNumericValueFromBitArray(BitArray paramBitArray, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 32)
      throw new IllegalArgumentException("extractNumberValueFromBitArray can't handle more than 32 bits");
    int i = 0;
    for (int j = 0; j < paramInt2; j++)
      if (paramBitArray.get(paramInt1 + j))
        i |= 1 << -1 + (paramInt2 - j);
    return i;
  }

  private boolean isAlphaOr646ToNumericLatch(int paramInt)
  {
    if (paramInt + 3 > this.information.getSize())
      return false;
    for (int i = paramInt; ; i++)
    {
      if (i >= paramInt + 3)
        break label41;
      if (this.information.get(i))
        break;
    }
    label41: return true;
  }

  private boolean isAlphaTo646ToAlphaLatch(int paramInt)
  {
    if (paramInt + 1 > this.information.getSize());
    int i;
    do
    {
      return false;
      i = 0;
      if ((i >= 5) || (i + paramInt >= this.information.getSize()))
        break label74;
      if (i != 2)
        break;
    }
    while (!this.information.get(paramInt + 2));
    while (!this.information.get(paramInt + i))
    {
      i++;
      break;
    }
    return false;
    label74: return true;
  }

  private boolean isNumericToAlphaNumericLatch(int paramInt)
  {
    if (paramInt + 1 > this.information.getSize())
      return false;
    for (int i = 0; ; i++)
    {
      if ((i >= 4) || (i + paramInt >= this.information.getSize()))
        break label54;
      if (this.information.get(paramInt + i))
        break;
    }
    label54: return true;
  }

  private boolean isStillAlpha(int paramInt)
  {
    boolean bool = true;
    if (paramInt + 5 > this.information.getSize());
    do
    {
      return false;
      int i = extractNumericValueFromBitArray(paramInt, 5);
      if ((i >= 5) && (i < 16))
        return bool;
    }
    while (paramInt + 6 > this.information.getSize());
    int j = extractNumericValueFromBitArray(paramInt, 6);
    if ((j >= 16) && (j < 63));
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  private boolean isStillIsoIec646(int paramInt)
  {
    boolean bool = true;
    if (paramInt + 5 > this.information.getSize());
    do
    {
      do
      {
        return false;
        int i = extractNumericValueFromBitArray(paramInt, 5);
        if ((i >= 5) && (i < 16))
          return bool;
      }
      while (paramInt + 7 > this.information.getSize());
      int j = extractNumericValueFromBitArray(paramInt, 7);
      if ((j >= 64) && (j < 116))
        return bool;
    }
    while (paramInt + 8 > this.information.getSize());
    int k = extractNumericValueFromBitArray(paramInt, 8);
    if ((k >= 232) && (k < 253));
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  private boolean isStillNumeric(int paramInt)
  {
    if (paramInt + 7 > this.information.getSize())
      return paramInt + 4 <= this.information.getSize();
    for (int i = paramInt; ; i++)
    {
      if (i >= paramInt + 3)
        break label57;
      if (this.information.get(i))
        break;
    }
    label57: return this.information.get(paramInt + 3);
  }

  private BlockParsedResult parseAlphaBlock()
  {
    while (isStillAlpha(this.current.getPosition()))
    {
      DecodedChar localDecodedChar = decodeAlphanumeric(this.current.getPosition());
      this.current.setPosition(localDecodedChar.getNewPosition());
      if (localDecodedChar.isFNC1())
        return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
      this.buffer.append(localDecodedChar.getValue());
    }
    if (isAlphaOr646ToNumericLatch(this.current.getPosition()))
    {
      this.current.incrementPosition(3);
      this.current.setNumeric();
    }
    while (!isAlphaTo646ToAlphaLatch(this.current.getPosition()))
      return new BlockParsedResult(false);
    if (5 + this.current.getPosition() < this.information.getSize())
      this.current.incrementPosition(5);
    while (true)
    {
      this.current.setIsoIec646();
      break;
      this.current.setPosition(this.information.getSize());
    }
  }

  private DecodedInformation parseBlocks()
  {
    int i = this.current.getPosition();
    BlockParsedResult localBlockParsedResult;
    boolean bool;
    label28: int j;
    if (this.current.isAlpha())
    {
      localBlockParsedResult = parseAlphaBlock();
      bool = localBlockParsedResult.isFinished();
      if (i == this.current.getPosition())
        break label92;
      j = 1;
      label42: if ((j != 0) || (bool))
        break label98;
    }
    while (true)
    {
      return localBlockParsedResult.getDecodedInformation();
      if (this.current.isIsoIec646())
      {
        localBlockParsedResult = parseIsoIec646Block();
        bool = localBlockParsedResult.isFinished();
        break label28;
      }
      localBlockParsedResult = parseNumericBlock();
      bool = localBlockParsedResult.isFinished();
      break label28;
      label92: j = 0;
      break label42;
      label98: if (!bool)
        break;
    }
  }

  private BlockParsedResult parseIsoIec646Block()
  {
    while (isStillIsoIec646(this.current.getPosition()))
    {
      DecodedChar localDecodedChar = decodeIsoIec646(this.current.getPosition());
      this.current.setPosition(localDecodedChar.getNewPosition());
      if (localDecodedChar.isFNC1())
        return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
      this.buffer.append(localDecodedChar.getValue());
    }
    if (isAlphaOr646ToNumericLatch(this.current.getPosition()))
    {
      this.current.incrementPosition(3);
      this.current.setNumeric();
    }
    while (!isAlphaTo646ToAlphaLatch(this.current.getPosition()))
      return new BlockParsedResult(false);
    if (5 + this.current.getPosition() < this.information.getSize())
      this.current.incrementPosition(5);
    while (true)
    {
      this.current.setAlpha();
      break;
      this.current.setPosition(this.information.getSize());
    }
  }

  private BlockParsedResult parseNumericBlock()
  {
    while (isStillNumeric(this.current.getPosition()))
    {
      DecodedNumeric localDecodedNumeric = decodeNumeric(this.current.getPosition());
      this.current.setPosition(localDecodedNumeric.getNewPosition());
      if (localDecodedNumeric.isFirstDigitFNC1())
      {
        if (localDecodedNumeric.isSecondDigitFNC1());
        for (DecodedInformation localDecodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString()); ; localDecodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString(), localDecodedNumeric.getSecondDigit()))
          return new BlockParsedResult(localDecodedInformation, true);
      }
      this.buffer.append(localDecodedNumeric.getFirstDigit());
      if (localDecodedNumeric.isSecondDigitFNC1())
        return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
      this.buffer.append(localDecodedNumeric.getSecondDigit());
    }
    if (isNumericToAlphaNumericLatch(this.current.getPosition()))
    {
      this.current.setAlpha();
      this.current.incrementPosition(4);
    }
    return new BlockParsedResult(false);
  }

  String decodeAllCodes(StringBuilder paramStringBuilder, int paramInt)
    throws NotFoundException
  {
    int i = paramInt;
    String str1 = null;
    while (true)
    {
      DecodedInformation localDecodedInformation = decodeGeneralPurposeField(i, str1);
      String str2 = FieldParser.parseFieldsInGeneralPurpose(localDecodedInformation.getNewString());
      if (str2 != null)
        paramStringBuilder.append(str2);
      if (localDecodedInformation.isRemaining());
      for (str1 = String.valueOf(localDecodedInformation.getRemainingValue()); i == localDecodedInformation.getNewPosition(); str1 = null)
        return paramStringBuilder.toString();
      i = localDecodedInformation.getNewPosition();
    }
  }

  DecodedInformation decodeGeneralPurposeField(int paramInt, String paramString)
  {
    this.buffer.setLength(0);
    if (paramString != null)
      this.buffer.append(paramString);
    this.current.setPosition(paramInt);
    DecodedInformation localDecodedInformation = parseBlocks();
    if ((localDecodedInformation != null) && (localDecodedInformation.isRemaining()))
      return new DecodedInformation(this.current.getPosition(), this.buffer.toString(), localDecodedInformation.getRemainingValue());
    return new DecodedInformation(this.current.getPosition(), this.buffer.toString());
  }

  int extractNumericValueFromBitArray(int paramInt1, int paramInt2)
  {
    return extractNumericValueFromBitArray(this.information, paramInt1, paramInt2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.GeneralAppIdDecoder
 * JD-Core Version:    0.6.2
 */