package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;

public final class ErrorCorrection
{
  private final ModulusGF field = ModulusGF.PDF417_GF;

  private int[] findErrorLocations(ModulusPoly paramModulusPoly)
    throws ChecksumException
  {
    int i = paramModulusPoly.getDegree();
    int[] arrayOfInt = new int[i];
    int j = 0;
    for (int k = 1; (k < this.field.getSize()) && (j < i); k++)
      if (paramModulusPoly.evaluateAt(k) == 0)
      {
        arrayOfInt[j] = this.field.inverse(k);
        j++;
      }
    if (j != i)
      throw ChecksumException.getChecksumInstance();
    return arrayOfInt;
  }

  private int[] findErrorMagnitudes(ModulusPoly paramModulusPoly1, ModulusPoly paramModulusPoly2, int[] paramArrayOfInt)
  {
    int i = paramModulusPoly2.getDegree();
    int[] arrayOfInt1 = new int[i];
    for (int j = 1; j <= i; j++)
      arrayOfInt1[(i - j)] = this.field.multiply(j, paramModulusPoly2.getCoefficient(j));
    ModulusPoly localModulusPoly = new ModulusPoly(this.field, arrayOfInt1);
    int k = paramArrayOfInt.length;
    int[] arrayOfInt2 = new int[k];
    for (int m = 0; m < k; m++)
    {
      int n = this.field.inverse(paramArrayOfInt[m]);
      int i1 = this.field.subtract(0, paramModulusPoly1.evaluateAt(n));
      int i2 = this.field.inverse(localModulusPoly.evaluateAt(n));
      arrayOfInt2[m] = this.field.multiply(i1, i2);
    }
    return arrayOfInt2;
  }

  private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly paramModulusPoly1, ModulusPoly paramModulusPoly2, int paramInt)
    throws ChecksumException
  {
    if (paramModulusPoly1.getDegree() < paramModulusPoly2.getDegree())
    {
      ModulusPoly localModulusPoly3 = paramModulusPoly1;
      paramModulusPoly1 = paramModulusPoly2;
      paramModulusPoly2 = localModulusPoly3;
    }
    Object localObject1 = paramModulusPoly1;
    Object localObject2 = paramModulusPoly2;
    Object localObject3 = this.field.getZero();
    Object localObject5;
    ModulusPoly localModulusPoly2;
    for (ModulusPoly localModulusPoly1 = this.field.getOne(); ((ModulusPoly)localObject2).getDegree() >= paramInt / 2; localModulusPoly1 = localModulusPoly2.multiply((ModulusPoly)localObject3).subtract(localObject5).negative())
    {
      Object localObject4 = localObject1;
      localObject5 = localObject3;
      localObject1 = localObject2;
      localObject3 = localModulusPoly1;
      if (((ModulusPoly)localObject1).isZero())
        throw ChecksumException.getChecksumInstance();
      localObject2 = localObject4;
      localModulusPoly2 = this.field.getZero();
      int k = ((ModulusPoly)localObject1).getCoefficient(((ModulusPoly)localObject1).getDegree());
      int m = this.field.inverse(k);
      while ((((ModulusPoly)localObject2).getDegree() >= ((ModulusPoly)localObject1).getDegree()) && (!((ModulusPoly)localObject2).isZero()))
      {
        int n = ((ModulusPoly)localObject2).getDegree() - ((ModulusPoly)localObject1).getDegree();
        int i1 = this.field.multiply(((ModulusPoly)localObject2).getCoefficient(((ModulusPoly)localObject2).getDegree()), m);
        localModulusPoly2 = localModulusPoly2.add(this.field.buildMonomial(n, i1));
        localObject2 = ((ModulusPoly)localObject2).subtract(((ModulusPoly)localObject1).multiplyByMonomial(n, i1));
      }
    }
    int i = localModulusPoly1.getCoefficient(0);
    if (i == 0)
      throw ChecksumException.getChecksumInstance();
    int j = this.field.inverse(i);
    return new ModulusPoly[] { localModulusPoly1.multiply(j), ((ModulusPoly)localObject2).multiply(j) };
  }

  public void decode(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
    throws ChecksumException
  {
    ModulusPoly localModulusPoly1 = new ModulusPoly(this.field, paramArrayOfInt1);
    int[] arrayOfInt1 = new int[paramInt];
    int i = 0;
    for (int j = paramInt; j > 0; j--)
    {
      int i4 = localModulusPoly1.evaluateAt(this.field.exp(j));
      arrayOfInt1[(paramInt - j)] = i4;
      if (i4 != 0)
        i = 1;
    }
    if (i != 0)
    {
      ModulusPoly localModulusPoly2 = this.field.getOne();
      int k = paramArrayOfInt2.length;
      for (int m = 0; m < k; m++)
      {
        int i2 = paramArrayOfInt2[m];
        int i3 = this.field.exp(-1 + paramArrayOfInt1.length - i2);
        ModulusGF localModulusGF = this.field;
        int[] arrayOfInt4 = new int[2];
        arrayOfInt4[0] = this.field.subtract(0, i3);
        arrayOfInt4[1] = 1;
        localModulusPoly2 = localModulusPoly2.multiply(new ModulusPoly(localModulusGF, arrayOfInt4));
      }
      ModulusPoly localModulusPoly3 = new ModulusPoly(this.field, arrayOfInt1);
      ModulusPoly[] arrayOfModulusPoly = runEuclideanAlgorithm(this.field.buildMonomial(paramInt, 1), localModulusPoly3, paramInt);
      ModulusPoly localModulusPoly4 = arrayOfModulusPoly[0];
      ModulusPoly localModulusPoly5 = arrayOfModulusPoly[1];
      int[] arrayOfInt2 = findErrorLocations(localModulusPoly4);
      int[] arrayOfInt3 = findErrorMagnitudes(localModulusPoly5, localModulusPoly4, arrayOfInt2);
      for (int n = 0; n < arrayOfInt2.length; n++)
      {
        int i1 = -1 + paramArrayOfInt1.length - this.field.log(arrayOfInt2[n]);
        if (i1 < 0)
          throw ChecksumException.getChecksumInstance();
        paramArrayOfInt1[i1] = this.field.subtract(paramArrayOfInt1[i1], arrayOfInt3[n]);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.decoder.ec.ErrorCorrection
 * JD-Core Version:    0.6.2
 */