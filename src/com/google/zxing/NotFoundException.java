package com.google.zxing;

public final class NotFoundException extends ReaderException
{
  private static final NotFoundException instance = new NotFoundException();

  public static NotFoundException getNotFoundInstance()
  {
    return instance;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.NotFoundException
 * JD-Core Version:    0.6.2
 */