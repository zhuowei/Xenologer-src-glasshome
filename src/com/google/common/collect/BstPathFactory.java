package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
abstract interface BstPathFactory<N extends BstNode<?, N>, P extends BstPath<N, P>>
{
  public abstract P extension(P paramP, BstSide paramBstSide);

  public abstract P initialPath(N paramN);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstPathFactory
 * JD-Core Version:    0.6.2
 */