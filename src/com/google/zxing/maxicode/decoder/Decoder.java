package com.google.zxing.maxicode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

public final class Decoder
{
  private static final int ALL = 0;
  private static final int EVEN = 1;
  private static final int ODD = 2;
  private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.MAXICODE_FIELD_64);

  private void correctErrors(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws ChecksumException
  {
    int i = paramInt2 + paramInt3;
    if (paramInt4 == 0);
    int[] arrayOfInt;
    for (int j = 1; ; j = 2)
    {
      arrayOfInt = new int[i / j];
      for (int k = 0; k < i; k++)
        if ((paramInt4 == 0) || (k % 2 == paramInt4 - 1))
          arrayOfInt[(k / j)] = (0xFF & paramArrayOfByte[(k + paramInt1)]);
    }
    try
    {
      this.rsDecoder.decode(arrayOfInt, paramInt3 / j);
      for (int m = 0; m < paramInt2; m++)
        if ((paramInt4 == 0) || (m % 2 == paramInt4 - 1))
          paramArrayOfByte[(m + paramInt1)] = ((byte)arrayOfInt[(m / j)]);
    }
    catch (ReedSolomonException localReedSolomonException)
    {
      throw ChecksumException.getChecksumInstance();
    }
  }

  public DecoderResult decode(BitMatrix paramBitMatrix)
    throws ChecksumException, FormatException
  {
    return decode(paramBitMatrix, null);
  }

  public DecoderResult decode(BitMatrix paramBitMatrix, Map<DecodeHintType, ?> paramMap)
    throws FormatException, ChecksumException
  {
    byte[] arrayOfByte1 = new BitMatrixParser(paramBitMatrix).readCodewords();
    correctErrors(arrayOfByte1, 0, 10, 10, 0);
    int i = 0xF & arrayOfByte1[0];
    switch (i)
    {
    default:
      throw FormatException.getFormatInstance();
    case 2:
    case 3:
    case 4:
      correctErrors(arrayOfByte1, 20, 84, 40, 1);
      correctErrors(arrayOfByte1, 20, 84, 40, 2);
    case 5:
    }
    for (byte[] arrayOfByte2 = new byte[94]; ; arrayOfByte2 = new byte[78])
    {
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 10);
      System.arraycopy(arrayOfByte1, 20, arrayOfByte2, 10, -10 + arrayOfByte2.length);
      return DecodedBitStreamParser.decode(arrayOfByte2, i);
      correctErrors(arrayOfByte1, 20, 68, 56, 1);
      correctErrors(arrayOfByte1, 20, 68, 56, 2);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.maxicode.decoder.Decoder
 * JD-Core Version:    0.6.2
 */