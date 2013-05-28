package com.google.zxing.common.detector;

public final class MathUtils
{
  public static float distance(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 - paramFloat3;
    float f2 = paramFloat2 - paramFloat4;
    return (float)Math.sqrt(f1 * f1 + f2 * f2);
  }

  public static float distance(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt1 - paramInt3;
    int j = paramInt2 - paramInt4;
    return (float)Math.sqrt(i * i + j * j);
  }

  public static int round(float paramFloat)
  {
    return (int)(0.5F + paramFloat);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.detector.MathUtils
 * JD-Core Version:    0.6.2
 */