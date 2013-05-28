package com.google.protobuf;

public abstract interface BlockingRpcChannel
{
  public abstract Message callBlockingMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage1, Message paramMessage2)
    throws ServiceException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.BlockingRpcChannel
 * JD-Core Version:    0.6.2
 */