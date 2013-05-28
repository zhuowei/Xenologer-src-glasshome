package com.google.zxing.pdf417.decoder.ec;

final class ModulusPoly
{
  private final int[] coefficients;
  private final ModulusGF field;

  ModulusPoly(ModulusGF paramModulusGF, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      throw new IllegalArgumentException();
    this.field = paramModulusGF;
    int i = paramArrayOfInt.length;
    if ((i > 1) && (paramArrayOfInt[0] == 0))
    {
      for (int j = 1; (j < i) && (paramArrayOfInt[j] == 0); j++);
      if (j == i)
      {
        this.coefficients = paramModulusGF.getZero().coefficients;
        return;
      }
      this.coefficients = new int[i - j];
      System.arraycopy(paramArrayOfInt, j, this.coefficients, 0, this.coefficients.length);
      return;
    }
    this.coefficients = paramArrayOfInt;
  }

  ModulusPoly add(ModulusPoly paramModulusPoly)
  {
    if (!this.field.equals(paramModulusPoly.field))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    if (isZero())
      return paramModulusPoly;
    if (paramModulusPoly.isZero())
      return this;
    Object localObject1 = this.coefficients;
    Object localObject2 = paramModulusPoly.coefficients;
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
      arrayOfInt[j] = this.field.add(localObject1[(j - i)], localObject2[j]);
    return new ModulusPoly(this.field, arrayOfInt);
  }

  ModulusPoly[] divide(ModulusPoly paramModulusPoly)
  {
    if (!this.field.equals(paramModulusPoly.field))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    if (paramModulusPoly.isZero())
      throw new IllegalArgumentException("Divide by 0");
    ModulusPoly localModulusPoly1 = this.field.getZero();
    ModulusPoly localModulusPoly2 = this;
    int i = paramModulusPoly.getCoefficient(paramModulusPoly.getDegree());
    int j = this.field.inverse(i);
    while ((localModulusPoly2.getDegree() >= paramModulusPoly.getDegree()) && (!localModulusPoly2.isZero()))
    {
      int k = localModulusPoly2.getDegree() - paramModulusPoly.getDegree();
      int m = this.field.multiply(localModulusPoly2.getCoefficient(localModulusPoly2.getDegree()), j);
      ModulusPoly localModulusPoly3 = paramModulusPoly.multiplyByMonomial(k, m);
      localModulusPoly1 = localModulusPoly1.add(this.field.buildMonomial(k, m));
      localModulusPoly2 = localModulusPoly2.subtract(localModulusPoly3);
    }
    return new ModulusPoly[] { localModulusPoly1, localModulusPoly2 };
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
        for (int i1 : this.coefficients)
          j = this.field.add(j, i1);
      }
      else
      {
        j = this.coefficients[0];
        for (int k = 1; k < i; k++)
          j = this.field.add(this.field.multiply(paramInt, j), this.coefficients[k]);
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

  ModulusPoly multiply(int paramInt)
  {
    if (paramInt == 0)
      this = this.field.getZero();
    while (paramInt == 1)
      return this;
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt);
    return new ModulusPoly(this.field, arrayOfInt);
  }

  ModulusPoly multiply(ModulusPoly paramModulusPoly)
  {
    if (!this.field.equals(paramModulusPoly.field))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    if ((isZero()) || (paramModulusPoly.isZero()))
      return this.field.getZero();
    int[] arrayOfInt1 = this.coefficients;
    int i = arrayOfInt1.length;
    int[] arrayOfInt2 = paramModulusPoly.coefficients;
    int j = arrayOfInt2.length;
    int[] arrayOfInt3 = new int[-1 + (i + j)];
    for (int k = 0; k < i; k++)
    {
      int m = arrayOfInt1[k];
      for (int n = 0; n < j; n++)
        arrayOfInt3[(k + n)] = this.field.add(arrayOfInt3[(k + n)], this.field.multiply(m, arrayOfInt2[n]));
    }
    return new ModulusPoly(this.field, arrayOfInt3);
  }

  ModulusPoly multiplyByMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.field.getZero();
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt2);
    return new ModulusPoly(this.field, arrayOfInt);
  }

  ModulusPoly negative()
  {
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.field.subtract(0, this.coefficients[j]);
    return new ModulusPoly(this.field, arrayOfInt);
  }

  ModulusPoly subtract(ModulusPoly paramModulusPoly)
  {
    if (!this.field.equals(paramModulusPoly.field))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    if (paramModulusPoly.isZero())
      return this;
    return add(paramModulusPoly.negative());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(8 * getDegree());
    int i = getDegree();
    if (i >= 0)
    {
      int j = getCoefficient(i);
      if (j != 0)
      {
        if (j >= 0)
          break label85;
        localStringBuilder.append(" - ");
        j = -j;
        label48: if ((i == 0) || (j != 1))
          localStringBuilder.append(j);
        if (i != 0)
        {
          if (i != 1)
            break label102;
          localStringBuilder.append('x');
        }
      }
      while (true)
      {
        i--;
        break;
        label85: if (localStringBuilder.length() <= 0)
          break label48;
        localStringBuilder.append(" + ");
        break label48;
        label102: localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.decoder.ec.ModulusPoly
 * JD-Core Version:    0.6.2
 */