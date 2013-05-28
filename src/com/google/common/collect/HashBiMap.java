package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class HashBiMap<K, V> extends AbstractBiMap<K, V>
{

  @GwtIncompatible("Not needed in emulated source")
  private static final long serialVersionUID;

  private HashBiMap()
  {
    super(new HashMap(), new HashMap());
  }

  private HashBiMap(int paramInt)
  {
    super(Maps.newHashMapWithExpectedSize(paramInt), Maps.newHashMapWithExpectedSize(paramInt));
  }

  public static <K, V> HashBiMap<K, V> create()
  {
    return new HashBiMap();
  }

  public static <K, V> HashBiMap<K, V> create(int paramInt)
  {
    return new HashBiMap(paramInt);
  }

  public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> paramMap)
  {
    HashBiMap localHashBiMap = create(paramMap.size());
    localHashBiMap.putAll(paramMap);
    return localHashBiMap;
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    int i = Serialization.readCount(paramObjectInputStream);
    setDelegates(Maps.newHashMapWithExpectedSize(i), Maps.newHashMapWithExpectedSize(i));
    Serialization.populateMap(this, paramObjectInputStream, i);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    Serialization.writeMap(this, paramObjectOutputStream);
  }

  public V forcePut(@Nullable K paramK, @Nullable V paramV)
  {
    return super.forcePut(paramK, paramV);
  }

  public V put(@Nullable K paramK, @Nullable V paramV)
  {
    return super.put(paramK, paramV);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.HashBiMap
 * JD-Core Version:    0.6.2
 */