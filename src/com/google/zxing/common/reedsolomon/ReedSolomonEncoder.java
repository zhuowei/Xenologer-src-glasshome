package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

public final class ReedSolomonEncoder
{
  private final List<GenericGFPoly> cachedGenerators;
  private final GenericGF field;

  public ReedSolomonEncoder(GenericGF paramGenericGF)
  {
    this.field = paramGenericGF;
    this.cachedGenerators = new ArrayList();
    this.cachedGenerators.add(new GenericGFPoly(paramGenericGF, new int[] { 1 }));
  }

  private GenericGFPoly buildGenerator(int paramInt)
  {
    if (paramInt >= this.cachedGenerators.size())
    {
      Object localObject = (GenericGFPoly)this.cachedGenerators.get(-1 + this.cachedGenerators.size());
      for (int i = this.cachedGenerators.size(); i <= paramInt; i++)
      {
        GenericGF localGenericGF = this.field;
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 1;
        arrayOfInt[1] = this.field.exp(i - 1 + this.field.getGeneratorBase());
        GenericGFPoly localGenericGFPoly = ((GenericGFPoly)localObject).multiply(new GenericGFPoly(localGenericGF, arrayOfInt));
        this.cachedGenerators.add(localGenericGFPoly);
        localObject = localGenericGFPoly;
      }
    }
    return (GenericGFPoly)this.cachedGenerators.get(paramInt);
  }

  public void encode(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes");
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided");
    GenericGFPoly localGenericGFPoly = buildGenerator(paramInt);
    int[] arrayOfInt1 = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt1, 0, i);
    int[] arrayOfInt2 = new GenericGFPoly(this.field, arrayOfInt1).multiplyByMonomial(paramInt, 1).divide(localGenericGFPoly)[1].getCoefficients();
    int j = paramInt - arrayOfInt2.length;
    for (int k = 0; k < j; k++)
      paramArrayOfInt[(i + k)] = 0;
    System.arraycopy(arrayOfInt2, 0, paramArrayOfInt, i + j, arrayOfInt2.length);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonEncoder
 * JD-Core Version:    0.6.2
 */