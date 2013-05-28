package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class EmptyImmutableSet extends ImmutableSet<Object>
{
  private static final Object[] EMPTY_ARRAY = new Object[0];
  static final EmptyImmutableSet INSTANCE = new EmptyImmutableSet();
  private static final long serialVersionUID;

  public boolean contains(Object paramObject)
  {
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Set))
      return ((Set)paramObject).isEmpty();
    return false;
  }

  public final int hashCode()
  {
    return 0;
  }

  public boolean isEmpty()
  {
    return true;
  }

  boolean isHashCodeFast()
  {
    return true;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<Object> iterator()
  {
    return Iterators.emptyIterator();
  }

  Object readResolve()
  {
    return INSTANCE;
  }

  public int size()
  {
    return 0;
  }

  public Object[] toArray()
  {
    return EMPTY_ARRAY;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length > 0)
      paramArrayOfT[0] = null;
    return paramArrayOfT;
  }

  public String toString()
  {
    return "[]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableSet
 * JD-Core Version:    0.6.2
 */