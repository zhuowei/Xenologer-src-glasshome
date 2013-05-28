package com.google.glass.net;

import com.google.common.annotations.VisibleForTesting;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import junit.framework.Assert;

public class ProtoResponse<T>
{
  private final ResponseWrapper.ErrorCode errorCode;
  private final T responseProto;

  @VisibleForTesting
  public ProtoResponse(ResponseWrapper.ErrorCode paramErrorCode, T paramT)
  {
    if ((paramErrorCode == null) || (paramT == null));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.errorCode = paramErrorCode;
      this.responseProto = paramT;
      return;
    }
  }

  static <T> ProtoResponse<T> cancel()
  {
    return new ProtoResponse(null, null);
  }

  static <T> ProtoResponse<T> error(ResponseWrapper.ErrorCode paramErrorCode)
  {
    Assert.assertNotNull(paramErrorCode);
    return new ProtoResponse(paramErrorCode, null);
  }

  static <T> ProtoResponse<T> success(T paramT)
  {
    Assert.assertNotNull(paramT);
    return new ProtoResponse(null, paramT);
  }

  public ResponseWrapper.ErrorCode getErrorCode()
  {
    return this.errorCode;
  }

  public T getResponseProto()
  {
    return this.responseProto;
  }

  public boolean isCancelled()
  {
    return (this.errorCode == null) && (this.responseProto == null);
  }

  public boolean isError()
  {
    return this.errorCode != null;
  }

  public boolean isSuccess()
  {
    return this.responseProto != null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoResponse
 * JD-Core Version:    0.6.2
 */