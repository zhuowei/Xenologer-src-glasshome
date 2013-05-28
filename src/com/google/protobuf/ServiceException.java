package com.google.protobuf;

public class ServiceException extends Exception
{
  private static final long serialVersionUID = -1219262335729891920L;

  public ServiceException(String paramString)
  {
    super(paramString);
  }

  public ServiceException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public ServiceException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.ServiceException
 * JD-Core Version:    0.6.2
 */