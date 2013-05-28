package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;

@GwtCompatible
final class SortedMultisets
{
  private static <E> E getElementOrThrow(Multiset.Entry<E> paramEntry)
  {
    if (paramEntry == null)
      throw new NoSuchElementException();
    return paramEntry.getElement();
  }

  static abstract class DescendingMultiset<E> extends ForwardingMultiset<E>
    implements SortedMultiset<E>
  {
    private transient Comparator<? super E> comparator;
    private transient SortedSet<E> elementSet;
    private transient Set<Multiset.Entry<E>> entrySet;

    public Comparator<? super E> comparator()
    {
      Object localObject = this.comparator;
      if (localObject == null)
      {
        localObject = Ordering.from(forwardMultiset().comparator()).reverse();
        this.comparator = ((Comparator)localObject);
      }
      return localObject;
    }

    Set<Multiset.Entry<E>> createEntrySet()
    {
      return new Multisets.EntrySet()
      {
        public Iterator<Multiset.Entry<E>> iterator()
        {
          return SortedMultisets.DescendingMultiset.this.entryIterator();
        }

        Multiset<E> multiset()
        {
          return SortedMultisets.DescendingMultiset.this;
        }

        public int size()
        {
          return SortedMultisets.DescendingMultiset.this.forwardMultiset().entrySet().size();
        }
      };
    }

    protected Multiset<E> delegate()
    {
      return forwardMultiset();
    }

    public SortedMultiset<E> descendingMultiset()
    {
      return forwardMultiset();
    }

    public SortedSet<E> elementSet()
    {
      Object localObject = this.elementSet;
      if (localObject == null)
      {
        localObject = new SortedMultisets.ElementSet()
        {
          SortedMultiset<E> multiset()
          {
            return SortedMultisets.DescendingMultiset.this;
          }
        };
        this.elementSet = ((SortedSet)localObject);
      }
      return localObject;
    }

    abstract Iterator<Multiset.Entry<E>> entryIterator();

    public Set<Multiset.Entry<E>> entrySet()
    {
      Set localSet = this.entrySet;
      if (localSet == null)
      {
        localSet = createEntrySet();
        this.entrySet = localSet;
      }
      return localSet;
    }

    public Multiset.Entry<E> firstEntry()
    {
      return forwardMultiset().lastEntry();
    }

    abstract SortedMultiset<E> forwardMultiset();

    public SortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
    {
      return forwardMultiset().tailMultiset(paramE, paramBoundType).descendingMultiset();
    }

    public Iterator<E> iterator()
    {
      return Multisets.iteratorImpl(this);
    }

    public Multiset.Entry<E> lastEntry()
    {
      return forwardMultiset().firstEntry();
    }

    public Multiset.Entry<E> pollFirstEntry()
    {
      return forwardMultiset().pollLastEntry();
    }

    public Multiset.Entry<E> pollLastEntry()
    {
      return forwardMultiset().pollFirstEntry();
    }

    public SortedMultiset<E> subMultiset(E paramE1, BoundType paramBoundType1, E paramE2, BoundType paramBoundType2)
    {
      return forwardMultiset().subMultiset(paramE2, paramBoundType2, paramE1, paramBoundType1).descendingMultiset();
    }

    public SortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
    {
      return forwardMultiset().headMultiset(paramE, paramBoundType).descendingMultiset();
    }

    public Object[] toArray()
    {
      return standardToArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return standardToArray(paramArrayOfT);
    }

    public String toString()
    {
      return entrySet().toString();
    }
  }

  static abstract class ElementSet<E> extends Multisets.ElementSet<E>
    implements SortedSet<E>
  {
    public Comparator<? super E> comparator()
    {
      return multiset().comparator();
    }

    public E first()
    {
      return SortedMultisets.getElementOrThrow(multiset().firstEntry());
    }

    public SortedSet<E> headSet(E paramE)
    {
      return multiset().headMultiset(paramE, BoundType.OPEN).elementSet();
    }

    public E last()
    {
      return SortedMultisets.getElementOrThrow(multiset().lastEntry());
    }

    abstract SortedMultiset<E> multiset();

    public SortedSet<E> subSet(E paramE1, E paramE2)
    {
      return multiset().subMultiset(paramE1, BoundType.CLOSED, paramE2, BoundType.OPEN).elementSet();
    }

    public SortedSet<E> tailSet(E paramE)
    {
      return multiset().tailMultiset(paramE, BoundType.CLOSED).elementSet();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMultisets
 * JD-Core Version:    0.6.2
 */