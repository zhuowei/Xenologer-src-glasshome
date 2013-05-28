package com.google.glass.home.companion;

import java.io.ByteArrayOutputStream;

public class TransparentByteArrayOutputStream extends ByteArrayOutputStream
{
  public TransparentByteArrayOutputStream()
  {
  }

  public TransparentByteArrayOutputStream(int paramInt)
  {
    super(paramInt);
  }

  public byte[] getByteArray()
  {
    return this.buf;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.TransparentByteArrayOutputStream
 * JD-Core Version:    0.6.2
 */