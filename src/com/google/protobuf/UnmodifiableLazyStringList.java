package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public class UnmodifiableLazyStringList extends AbstractList<String>
  implements LazyStringList, RandomAccess
{
  private final LazyStringList list;

  public UnmodifiableLazyStringList(LazyStringList paramLazyStringList)
  {
    this.list = paramLazyStringList;
  }

  public void add(ByteString paramByteString)
  {
    throw new UnsupportedOperationException();
  }

  public void add(byte[] paramArrayOfByte)
  {
    throw new UnsupportedOperationException();
  }

  public boolean addAllByteArray(Collection<byte[]> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public boolean addAllByteString(Collection<? extends ByteString> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public List<byte[]> asByteArrayList()
  {
    return Collections.unmodifiableList(this.list.asByteArrayList());
  }

  public String get(int paramInt)
  {
    return (String)this.list.get(paramInt);
  }

  public byte[] getByteArray(int paramInt)
  {
    return this.list.getByteArray(paramInt);
  }

  public ByteString getByteString(int paramInt)
  {
    return this.list.getByteString(paramInt);
  }

  public List<?> getUnderlyingElements()
  {
    return this.list.getUnderlyingElements();
  }

  public Iterator<String> iterator()
  {
    return new Iterator()
    {
      Iterator<String> iter = UnmodifiableLazyStringList.this.list.iterator();

      public boolean hasNext()
      {
        return this.iter.hasNext();
      }

      public String next()
      {
        return (String)this.iter.next();
      }

      public void remove()
      {
        throw new UnsupportedOperationException();
      }
    };
  }

  public ListIterator<String> listIterator(final int paramInt)
  {
    return new ListIterator()
    {
      ListIterator<String> iter = UnmodifiableLazyStringList.this.list.listIterator(paramInt);

      public void add(String paramAnonymousString)
      {
        throw new UnsupportedOperationException();
      }

      public boolean hasNext()
      {
        return this.iter.hasNext();
      }

      public boolean hasPrevious()
      {
        return this.iter.hasPrevious();
      }

      public String next()
      {
        return (String)this.iter.next();
      }

      public int nextIndex()
      {
        return this.iter.nextIndex();
      }

      public String previous()
      {
        return (String)this.iter.previous();
      }

      public int previousIndex()
      {
        return this.iter.previousIndex();
      }

      public void remove()
      {
        throw new UnsupportedOperationException();
      }

      public void set(String paramAnonymousString)
      {
        throw new UnsupportedOperationException();
      }
    };
  }

  public void mergeFrom(LazyStringList paramLazyStringList)
  {
    throw new UnsupportedOperationException();
  }

  public void set(int paramInt, ByteString paramByteString)
  {
    throw new UnsupportedOperationException();
  }

  public void set(int paramInt, byte[] paramArrayOfByte)
  {
    throw new UnsupportedOperationException();
  }

  public int size()
  {
    return this.list.size();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.UnmodifiableLazyStringList
 * JD-Core Version:    0.6.2
 */