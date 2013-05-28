package com.google.protobuf;

public abstract interface RpcCallback<ParameterType>
{
  public abstract void run(ParameterType paramParameterType);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.RpcCallback
 * JD-Core Version:    0.6.2
 */