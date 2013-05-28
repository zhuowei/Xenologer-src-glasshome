package com.google.protobuf;

public abstract interface Service
{
  public abstract void callMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage, RpcCallback<Message> paramRpcCallback);

  public abstract Descriptors.ServiceDescriptor getDescriptorForType();

  public abstract Message getRequestPrototype(Descriptors.MethodDescriptor paramMethodDescriptor);

  public abstract Message getResponsePrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.Service
 * JD-Core Version:    0.6.2
 */