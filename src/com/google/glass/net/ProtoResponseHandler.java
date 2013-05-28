package com.google.glass.net;

import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;

public abstract interface ProtoResponseHandler<T>
{
  public abstract void onCancel();

  public abstract void onError(ResponseWrapper.ErrorCode paramErrorCode);

  public abstract void onSuccess(T paramT);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoResponseHandler
 * JD-Core Version:    0.6.2
 */