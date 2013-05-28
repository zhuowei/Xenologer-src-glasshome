package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSet<E> extends ForwardingCollection<E>
  implements Set<E>
{
  protected abstract Set<E> delegate();

  public boolean equals(@Nullable Object paramObject)
  {
    return (paramObject == this) || (delegate().equals(paramObject));
  }

  public int hashCode()
  {
    return delegate().hashCode();
  }

  @Beta
  protected boolean standardEquals(@Nullable Object paramObject)
  {
    return Sets.equalsImpl(this, paramObject);
  }

  @Beta
  protected int standardHashCode()
  {
    return Sets.hashCodeImpl(this);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingSet
 * JD-Core Version:    0.6.2
 */