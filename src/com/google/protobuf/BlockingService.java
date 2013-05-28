package com.google.protobuf;

public abstract interface BlockingService
{
  public abstract Message callBlockingMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage)
    throws ServiceException;

  public abstract Descriptors.ServiceDescriptor getDescriptorForType();

  public abstract Message getRequestPrototype(Descriptors.MethodDescriptor paramMethodDescriptor);

  public abstract Message getResponsePrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.BlockingService
 * JD-Core Version:    0.6.2
 */