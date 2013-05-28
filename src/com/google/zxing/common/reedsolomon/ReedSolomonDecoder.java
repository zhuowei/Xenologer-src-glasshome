package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder
{
  private final GenericGF field;

  public ReedSolomonDecoder(GenericGF paramGenericGF)
  {
    this.field = paramGenericGF;
  }

  private int[] findErrorLocations(GenericGFPoly paramGenericGFPoly)
    throws ReedSolomonException
  {
    int i = paramGenericGFPoly.getDegree();
    int[] arrayOfInt;
    if (i == 1)
    {
      arrayOfInt = new int[1];
      arrayOfInt[0] = paramGenericGFPoly.getCoefficient(1);
    }
    int j;
    do
    {
      return arrayOfInt;
      arrayOfInt = new int[i];
      j = 0;
      for (int k = 1; (k < this.field.getSize()) && (j < i); k++)
        if (paramGenericGFPoly.evaluateAt(k) == 0)
        {
          arrayOfInt[j] = this.field.inverse(k);
          j++;
        }
    }
    while (j == i);
    throw new ReedSolomonException("Error locator degree does not match number of roots");
  }

  private int[] findErrorMagnitudes(GenericGFPoly paramGenericGFPoly, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
    {
      int k = this.field.inverse(paramArrayOfInt[j]);
      int m = 1;
      int n = 0;
      if (n < i)
      {
        int i1;
        if (j != n)
        {
          i1 = this.field.multiply(paramArrayOfInt[n], k);
          if ((i1 & 0x1) != 0)
            break label96;
        }
        label96: for (int i2 = i1 | 0x1; ; i2 = i1 & 0xFFFFFFFE)
        {
          m = this.field.multiply(m, i2);
          n++;
          break;
        }
      }
      arrayOfInt[j] = this.field.multiply(paramGenericGFPoly.evaluateAt(k), this.field.inverse(m));
      if (this.field.getGeneratorBase() != 0)
        arrayOfInt[j] = this.field.multiply(arrayOfInt[j], k);
    }
    return arrayOfInt;
  }

  private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly paramGenericGFPoly1, GenericGFPoly paramGenericGFPoly2, int paramInt)
    throws ReedSolomonException
  {
    if (paramGenericGFPoly1.getDegree() < paramGenericGFPoly2.getDegree())
    {
      GenericGFPoly localGenericGFPoly3 = paramGenericGFPoly1;
      paramGenericGFPoly1 = paramGenericGFPoly2;
      paramGenericGFPoly2 = localGenericGFPoly3;
    }
    Object localObject1 = paramGenericGFPoly1;
    Object localObject2 = paramGenericGFPoly2;
    Object localObject3 = this.field.getZero();
    Object localObject5;
    GenericGFPoly localGenericGFPoly2;
    for (GenericGFPoly localGenericGFPoly1 = this.field.getOne(); ((GenericGFPoly)localObject2).getDegree() >= paramInt / 2; localGenericGFPoly1 = localGenericGFPoly2.multiply((GenericGFPoly)localObject3).addOrSubtract(localObject5))
    {
      Object localObject4 = localObject1;
      localObject5 = localObject3;
      localObject1 = localObject2;
      localObject3 = localGenericGFPoly1;
      if (((GenericGFPoly)localObject1).isZero())
        throw new ReedSolomonException("r_{i-1} was zero");
      localObject2 = localObject4;
      localGenericGFPoly2 = this.field.getZero();
      int k = ((GenericGFPoly)localObject1).getCoefficient(((GenericGFPoly)localObject1).getDegree());
      int m = this.field.inverse(k);
      while ((((GenericGFPoly)localObject2).getDegree() >= ((GenericGFPoly)localObject1).getDegree()) && (!((GenericGFPoly)localObject2).isZero()))
      {
        int n = ((GenericGFPoly)localObject2).getDegree() - ((GenericGFPoly)localObject1).getDegree();
        int i1 = this.field.multiply(((GenericGFPoly)localObject2).getCoefficient(((GenericGFPoly)localObject2).getDegree()), m);
        localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(this.field.buildMonomial(n, i1));
        localObject2 = ((GenericGFPoly)localObject2).addOrSubtract(((GenericGFPoly)localObject1).multiplyByMonomial(n, i1));
      }
    }
    int i = localGenericGFPoly1.getCoefficient(0);
    if (i == 0)
      throw new ReedSolomonException("sigmaTilde(0) was zero");
    int j = this.field.inverse(i);
    return new GenericGFPoly[] { localGenericGFPoly1.multiply(j), ((GenericGFPoly)localObject2).multiply(j) };
  }

  public void decode(int[] paramArrayOfInt, int paramInt)
    throws ReedSolomonException
  {
    GenericGFPoly localGenericGFPoly1 = new GenericGFPoly(this.field, paramArrayOfInt);
    int[] arrayOfInt1 = new int[paramInt];
    int i = 1;
    for (int j = 0; j < paramInt; j++)
    {
      int n = localGenericGFPoly1.evaluateAt(this.field.exp(j + this.field.getGeneratorBase()));
      arrayOfInt1[(-1 + arrayOfInt1.length - j)] = n;
      if (n != 0)
        i = 0;
    }
    if (i != 0);
    while (true)
    {
      return;
      GenericGFPoly localGenericGFPoly2 = new GenericGFPoly(this.field, arrayOfInt1);
      GenericGFPoly[] arrayOfGenericGFPoly = runEuclideanAlgorithm(this.field.buildMonomial(paramInt, 1), localGenericGFPoly2, paramInt);
      GenericGFPoly localGenericGFPoly3 = arrayOfGenericGFPoly[0];
      GenericGFPoly localGenericGFPoly4 = arrayOfGenericGFPoly[1];
      int[] arrayOfInt2 = findErrorLocations(localGenericGFPoly3);
      int[] arrayOfInt3 = findErrorMagnitudes(localGenericGFPoly4, arrayOfInt2);
      for (int k = 0; k < arrayOfInt2.length; k++)
      {
        int m = -1 + paramArrayOfInt.length - this.field.log(arrayOfInt2[k]);
        if (m < 0)
          throw new ReedSolomonException("Bad error location");
        paramArrayOfInt[m] = GenericGF.addOrSubtract(paramArrayOfInt[m], arrayOfInt3[k]);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonDecoder
 * JD-Core Version:    0.6.2
 */