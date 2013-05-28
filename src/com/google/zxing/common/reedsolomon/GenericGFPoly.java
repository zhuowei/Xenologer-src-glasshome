package com.google.zxing.common.reedsolomon;

final class GenericGFPoly
{
  private final int[] coefficients;
  private final GenericGF field;

  GenericGFPoly(GenericGF paramGenericGF, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      throw new IllegalArgumentException();
    this.field = paramGenericGF;
    int i = paramArrayOfInt.length;
    if ((i > 1) && (paramArrayOfInt[0] == 0))
    {
      for (int j = 1; (j < i) && (paramArrayOfInt[j] == 0); j++);
      if (j == i)
      {
        this.coefficients = paramGenericGF.getZero().coefficients;
        return;
      }
      this.coefficients = new int[i - j];
      System.arraycopy(paramArrayOfInt, j, this.coefficients, 0, this.coefficients.length);
      return;
    }
    this.coefficients = paramArrayOfInt;
  }

  GenericGFPoly addOrSubtract(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (isZero())
      return paramGenericGFPoly;
    if (paramGenericGFPoly.isZero())
      return this;
    Object localObject1 = this.coefficients;
    Object localObject2 = paramGenericGFPoly.coefficients;
    if (localObject1.length > localObject2.length)
    {
      Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
    int[] arrayOfInt = new int[localObject2.length];
    int i = localObject2.length - localObject1.length;
    System.arraycopy(localObject2, 0, arrayOfInt, 0, i);
    for (int j = i; j < localObject2.length; j++)
      arrayOfInt[j] = GenericGF.addOrSubtract(localObject1[(j - i)], localObject2[j]);
    return new GenericGFPoly(this.field, arrayOfInt);
  }

  GenericGFPoly[] divide(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (paramGenericGFPoly.isZero())
      throw new IllegalArgumentException("Divide by 0");
    GenericGFPoly localGenericGFPoly1 = this.field.getZero();
    GenericGFPoly localGenericGFPoly2 = this;
    int i = paramGenericGFPoly.getCoefficient(paramGenericGFPoly.getDegree());
    int j = this.field.inverse(i);
    while ((localGenericGFPoly2.getDegree() >= paramGenericGFPoly.getDegree()) && (!localGenericGFPoly2.isZero()))
    {
      int k = localGenericGFPoly2.getDegree() - paramGenericGFPoly.getDegree();
      int m = this.field.multiply(localGenericGFPoly2.getCoefficient(localGenericGFPoly2.getDegree()), j);
      GenericGFPoly localGenericGFPoly3 = paramGenericGFPoly.multiplyByMonomial(k, m);
      localGenericGFPoly1 = localGenericGFPoly1.addOrSubtract(this.field.buildMonomial(k, m));
      localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(localGenericGFPoly3);
    }
    return new GenericGFPoly[] { localGenericGFPoly1, localGenericGFPoly2 };
  }

  int evaluateAt(int paramInt)
  {
    int j;
    if (paramInt == 0)
      j = getCoefficient(0);
    while (true)
    {
      return j;
      int i = this.coefficients.length;
      if (paramInt == 1)
      {
        j = 0;
        int[] arrayOfInt = this.coefficients;
        int m = arrayOfInt.length;
        for (int n = 0; n < m; n++)
          j = GenericGF.addOrSubtract(j, arrayOfInt[n]);
      }
      else
      {
        j = this.coefficients[0];
        for (int k = 1; k < i; k++)
          j = GenericGF.addOrSubtract(this.field.multiply(paramInt, j), this.coefficients[k]);
      }
    }
  }

  int getCoefficient(int paramInt)
  {
    return this.coefficients[(-1 + this.coefficients.length - paramInt)];
  }

  int[] getCoefficients()
  {
    return this.coefficients;
  }

  int getDegree()
  {
    return -1 + this.coefficients.length;
  }

  boolean isZero()
  {
    int i = this.coefficients[0];
    boolean bool = false;
    if (i == 0)
      bool = true;
    return bool;
  }

  GenericGFPoly multiply(int paramInt)
  {
    if (paramInt == 0)
      this = this.field.getZero();
    while (paramInt == 1)
      return this;
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt);
    return new GenericGFPoly(this.field, arrayOfInt);
  }

  GenericGFPoly multiply(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if ((isZero()) || (paramGenericGFPoly.isZero()))
      return this.field.getZero();
    int[] arrayOfInt1 = this.coefficients;
    int i = arrayOfInt1.length;
    int[] arrayOfInt2 = paramGenericGFPoly.coefficients;
    int j = arrayOfInt2.length;
    int[] arrayOfInt3 = new int[-1 + (i + j)];
    for (int k = 0; k < i; k++)
    {
      int m = arrayOfInt1[k];
      for (int n = 0; n < j; n++)
        arrayOfInt3[(k + n)] = GenericGF.addOrSubtract(arrayOfInt3[(k + n)], this.field.multiply(m, arrayOfInt2[n]));
    }
    return new GenericGFPoly(this.field, arrayOfInt3);
  }

  GenericGFPoly multiplyByMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.field.getZero();
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt2);
    return new GenericGFPoly(this.field, arrayOfInt);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(8 * getDegree());
    int i = getDegree();
    if (i >= 0)
    {
      int j = getCoefficient(i);
      label48: int k;
      if (j != 0)
      {
        if (j >= 0)
          break label101;
        localStringBuilder.append(" - ");
        j = -j;
        if ((i == 0) || (j != 1))
        {
          k = this.field.log(j);
          if (k != 0)
            break label118;
          localStringBuilder.append('1');
        }
        label79: if (i != 0)
        {
          if (i != 1)
            break label151;
          localStringBuilder.append('x');
        }
      }
      while (true)
      {
        i--;
        break;
        label101: if (localStringBuilder.length() <= 0)
          break label48;
        localStringBuilder.append(" + ");
        break label48;
        label118: if (k == 1)
        {
          localStringBuilder.append('a');
          break label79;
        }
        localStringBuilder.append("a^");
        localStringBuilder.append(k);
        break label79;
        label151: localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGFPoly
 * JD-Core Version:    0.6.2
 */