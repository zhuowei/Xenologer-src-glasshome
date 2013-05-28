package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible
abstract class BstPath<N extends BstNode<?, N>, P extends BstPath<N, P>>
{

  @Nullable
  private final P prefix;
  private final N tip;

  BstPath(N paramN, @Nullable P paramP)
  {
    this.tip = ((BstNode)Preconditions.checkNotNull(paramN));
    this.prefix = paramP;
  }

  public final P getPrefix()
  {
    Preconditions.checkState(hasPrefix());
    return this.prefix;
  }

  public final N getTip()
  {
    return this.tip;
  }

  public final boolean hasPrefix()
  {
    return this.prefix != null;
  }

  @Nullable
  public final P prefixOrNull()
  {
    return this.prefix;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstPath
 * JD-Core Version:    0.6.2
 */