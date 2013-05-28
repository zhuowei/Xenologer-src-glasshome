package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class EmptyImmutableMap extends ImmutableMap<Object, Object>
{
  static final EmptyImmutableMap INSTANCE = new EmptyImmutableMap();
  private static final long serialVersionUID;

  public boolean containsKey(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return false;
  }

  public ImmutableSet<Map.Entry<Object, Object>> entrySet()
  {
    return ImmutableSet.of();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Map))
      return ((Map)paramObject).isEmpty();
    return false;
  }

  public Object get(@Nullable Object paramObject)
  {
    return null;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean isEmpty()
  {
    return true;
  }

  boolean isPartialView()
  {
    return false;
  }

  public ImmutableSet<Object> keySet()
  {
    return ImmutableSet.of();
  }

  Object readResolve()
  {
    return INSTANCE;
  }

  public int size()
  {
    return 0;
  }

  public String toString()
  {
    return "{}";
  }

  public ImmutableCollection<Object> values()
  {
    return ImmutableCollection.EMPTY_IMMUTABLE_COLLECTION;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableMap
 * JD-Core Version:    0.6.2
 */