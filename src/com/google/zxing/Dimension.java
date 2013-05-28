package com.google.zxing;

public final class Dimension
{
  private final int height;
  private final int width;

  public Dimension(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException();
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Dimension;
    boolean bool2 = false;
    if (bool1)
    {
      Dimension localDimension = (Dimension)paramObject;
      int i = this.width;
      int j = localDimension.width;
      bool2 = false;
      if (i == j)
      {
        int k = this.height;
        int m = localDimension.height;
        bool2 = false;
        if (k == m)
          bool2 = true;
      }
    }
    return bool2;
  }

  public int getHeight()
  {
    return this.height;
  }

  public int getWidth()
  {
    return this.width;
  }

  public int hashCode()
  {
    return 32713 * this.width + this.height;
  }

  public String toString()
  {
    return this.width + "x" + this.height;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.Dimension
 * JD-Core Version:    0.6.2
 */