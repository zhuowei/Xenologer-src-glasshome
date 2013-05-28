package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible
abstract interface BstAggregate<N extends BstNode<?, N>>
{
  public abstract int entryValue(N paramN);

  public abstract long treeValue(@Nullable N paramN);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstAggregate
 * JD-Core Version:    0.6.2
 */