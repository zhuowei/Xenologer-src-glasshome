package com.x.google.common.io;

import java.io.IOException;

public abstract interface HttpConnectionFactory extends ConnectionFactory
{
  public abstract GoogleHttpConnection createConnection(String paramString, boolean paramBoolean)
    throws IOException, SecurityException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.HttpConnectionFactory
 * JD-Core Version:    0.6.2
 */