package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@GwtCompatible
final class WellBehavedMap<K, V> extends ForwardingMap<K, V>
{
  private final Map<K, V> delegate;
  private Set<Map.Entry<K, V>> entrySet;

  private WellBehavedMap(Map<K, V> paramMap)
  {
    this.delegate = paramMap;
  }

  static <K, V> WellBehavedMap<K, V> wrap(Map<K, V> paramMap)
  {
    return new WellBehavedMap(paramMap);
  }

  protected Map<K, V> delegate()
  {
    return this.delegate;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet1 = this.entrySet;
    if (localSet1 != null)
      return localSet1;
    Set localSet2 = Sets.transform(this.delegate.keySet(), new KeyToEntryConverter(this));
    this.entrySet = localSet2;
    return localSet2;
  }

  private static class KeyToEntryConverter<K, V> extends Sets.InvertibleFunction<K, Map.Entry<K, V>>
  {
    final Map<K, V> map;

    KeyToEntryConverter(Map<K, V> paramMap)
    {
      this.map = paramMap;
    }

    public Map.Entry<K, V> apply(final K paramK)
    {
      return new AbstractMapEntry()
      {
        public K getKey()
        {
          return paramK;
        }

        public V getValue()
        {
          return WellBehavedMap.KeyToEntryConverter.this.map.get(paramK);
        }

        public V setValue(V paramAnonymousV)
        {
          return WellBehavedMap.KeyToEntryConverter.this.map.put(paramK, paramAnonymousV);
        }
      };
    }

    public K invert(Map.Entry<K, V> paramEntry)
    {
      return paramEntry.getKey();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.WellBehavedMap
 * JD-Core Version:    0.6.2
 */