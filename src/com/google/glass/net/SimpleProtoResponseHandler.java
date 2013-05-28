package com.google.glass.net;

import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;

public class SimpleProtoResponseHandler<T>
  implements ProtoResponseHandler<T>
{
  public void onCancel()
  {
  }

  public void onError(ResponseWrapper.ErrorCode paramErrorCode)
  {
  }

  public void onSuccess(T paramT)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.SimpleProtoResponseHandler
 * JD-Core Version:    0.6.2
 */