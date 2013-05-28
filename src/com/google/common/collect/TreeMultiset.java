package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class TreeMultiset<E> extends AbstractSortedMultiset<E>
  implements Serializable
{
  private static final BstAggregate<Node<Object>> DISTINCT_AGGREGATE = new BstAggregate()
  {
    public int entryValue(TreeMultiset.Node<Object> paramAnonymousNode)
    {
      return 1;
    }

    public long treeValue(@Nullable TreeMultiset.Node<Object> paramAnonymousNode)
    {
      return TreeMultiset.distinctOrZero(paramAnonymousNode);
    }
  };
  private static final BstNodeFactory<Node<Object>> NODE_FACTORY = new BstNodeFactory()
  {
    public TreeMultiset.Node<Object> createNode(TreeMultiset.Node<Object> paramAnonymousNode1, @Nullable TreeMultiset.Node<Object> paramAnonymousNode2, @Nullable TreeMultiset.Node<Object> paramAnonymousNode3)
    {
      return new TreeMultiset.Node(paramAnonymousNode1.getKey(), paramAnonymousNode1.elemCount(), paramAnonymousNode2, paramAnonymousNode3, null);
    }
  };
  private static final BstAggregate<Node<Object>> SIZE_AGGREGATE = new BstAggregate()
  {
    public int entryValue(TreeMultiset.Node<Object> paramAnonymousNode)
    {
      return paramAnonymousNode.elemCount();
    }

    public long treeValue(@Nullable TreeMultiset.Node<Object> paramAnonymousNode)
    {
      return TreeMultiset.sizeOrZero(paramAnonymousNode);
    }
  };

  @GwtIncompatible("not needed in emulated source")
  private static final long serialVersionUID = 1L;
  private final transient GeneralRange<E> range;
  private final transient Reference<Node<E>> rootReference;

  private TreeMultiset(GeneralRange<E> paramGeneralRange, Reference<Node<E>> paramReference)
  {
    super(paramGeneralRange.comparator());
    this.range = paramGeneralRange;
    this.rootReference = paramReference;
  }

  private TreeMultiset(Comparator<? super E> paramComparator)
  {
    super(paramComparator);
    this.range = GeneralRange.all(paramComparator);
    this.rootReference = new Reference();
  }

  private static int countOrZero(@Nullable Node<?> paramNode)
  {
    if (paramNode == null)
      return 0;
    return paramNode.elemCount();
  }

  public static <E extends Comparable> TreeMultiset<E> create()
  {
    return new TreeMultiset(Ordering.natural());
  }

  public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> paramIterable)
  {
    TreeMultiset localTreeMultiset = create();
    Iterables.addAll(localTreeMultiset, paramIterable);
    return localTreeMultiset;
  }

  public static <E> TreeMultiset<E> create(@Nullable Comparator<? super E> paramComparator)
  {
    if (paramComparator == null)
      return new TreeMultiset(Ordering.natural());
    return new TreeMultiset(paramComparator);
  }

  private BstAggregate<Node<E>> distinctAggregate()
  {
    return DISTINCT_AGGREGATE;
  }

  private static int distinctOrZero(@Nullable Node<?> paramNode)
  {
    if (paramNode == null)
      return 0;
    return paramNode.distinct;
  }

  private Iterator<Multiset.Entry<E>> iteratorInDirection(@Nullable BstInOrderPath<Node<E>> paramBstInOrderPath, final BstSide paramBstSide)
  {
    return new Iterator()
    {
      E toRemove = null;

      public boolean hasNext()
      {
        return this.val$pathIterator.hasNext();
      }

      public Multiset.Entry<E> next()
      {
        BstInOrderPath localBstInOrderPath = (BstInOrderPath)this.val$pathIterator.next();
        TreeMultiset localTreeMultiset = TreeMultiset.this;
        Object localObject = ((TreeMultiset.Node)localBstInOrderPath.getTip()).getKey();
        this.toRemove = localObject;
        return new TreeMultiset.LiveEntry(localTreeMultiset, localObject, ((TreeMultiset.Node)localBstInOrderPath.getTip()).elemCount(), null);
      }

      public void remove()
      {
        if (this.toRemove != null);
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkState(bool);
          TreeMultiset.this.setCount(this.toRemove, 0);
          this.toRemove = null;
          return;
        }
      }
    };
  }

  private int mutate(@Nullable E paramE, TreeMultiset<E>.MultisetModifier paramTreeMultiset)
  {
    BstMutationRule localBstMutationRule = BstMutationRule.createRule(paramTreeMultiset, BstCountBasedBalancePolicies.singleRebalancePolicy(distinctAggregate()), nodeFactory());
    BstMutationResult localBstMutationResult = BstOperations.mutate(comparator(), localBstMutationRule, (BstNode)this.rootReference.get(), paramE);
    if (!this.rootReference.compareAndSet(localBstMutationResult.getOriginalRoot(), localBstMutationResult.getChangedRoot()))
      throw new ConcurrentModificationException();
    return countOrZero((Node)localBstMutationResult.getOriginalTarget());
  }

  private BstNodeFactory<Node<E>> nodeFactory()
  {
    return NODE_FACTORY;
  }

  private BstPathFactory<Node<E>, BstInOrderPath<Node<E>>> pathFactory()
  {
    return BstInOrderPath.inOrderFactory();
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    Comparator localComparator = (Comparator)paramObjectInputStream.readObject();
    Serialization.getFieldSetter(AbstractSortedMultiset.class, "comparator").set(this, localComparator);
    Serialization.getFieldSetter(TreeMultiset.class, "range").set(this, GeneralRange.all(localComparator));
    Serialization.getFieldSetter(TreeMultiset.class, "rootReference").set(this, new Reference());
    Serialization.populateMultiset(this, paramObjectInputStream);
  }

  private BstAggregate<Node<E>> sizeAggregate()
  {
    return SIZE_AGGREGATE;
  }

  private static long sizeOrZero(@Nullable Node<?> paramNode)
  {
    if (paramNode == null)
      return 0L;
    return paramNode.size;
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(elementSet().comparator());
    Serialization.writeMultiset(this, paramObjectOutputStream);
  }

  public int add(E paramE, int paramInt)
  {
    checkElement(paramE);
    if (paramInt == 0)
      return count(paramE);
    Preconditions.checkArgument(this.range.contains(paramE));
    return mutate(paramE, new AddModifier(paramInt, null));
  }

  E checkElement(Object paramObject)
  {
    return paramObject;
  }

  public void clear()
  {
    Node localNode1 = (Node)this.rootReference.get();
    Node localNode2 = (Node)BstRangeOps.minusRange(this.range, BstCountBasedBalancePolicies.fullRebalancePolicy(distinctAggregate()), nodeFactory(), localNode1);
    if (!this.rootReference.compareAndSet(localNode1, localNode2))
      throw new ConcurrentModificationException();
  }

  public Comparator<? super E> comparator()
  {
    return super.comparator();
  }

  public int count(@Nullable Object paramObject)
  {
    try
    {
      Object localObject = checkElement(paramObject);
      if (this.range.contains(localObject))
      {
        int i = countOrZero((Node)BstOperations.seek(comparator(), (BstNode)this.rootReference.get(), localObject));
        return i;
      }
      return 0;
    }
    catch (ClassCastException localClassCastException)
    {
      return 0;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return 0;
  }

  Iterator<Multiset.Entry<E>> descendingEntryIterator()
  {
    Node localNode = (Node)this.rootReference.get();
    return iteratorInDirection((BstInOrderPath)BstRangeOps.furthestPath(this.range, BstSide.RIGHT, pathFactory(), localNode), BstSide.LEFT);
  }

  int distinctElements()
  {
    Node localNode = (Node)this.rootReference.get();
    return Ints.checkedCast(BstRangeOps.totalInRange(distinctAggregate(), this.range, localNode));
  }

  Iterator<Multiset.Entry<E>> entryIterator()
  {
    Node localNode = (Node)this.rootReference.get();
    return iteratorInDirection((BstInOrderPath)BstRangeOps.furthestPath(this.range, BstSide.LEFT, pathFactory(), localNode), BstSide.RIGHT);
  }

  public SortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    return new TreeMultiset(this.range.intersect(GeneralRange.upTo(this.comparator, paramE, paramBoundType)), this.rootReference);
  }

  public Iterator<E> iterator()
  {
    return super.iterator();
  }

  public int remove(@Nullable Object paramObject, int paramInt)
  {
    if (paramObject == null);
    while (true)
    {
      return 0;
      if (paramInt == 0)
        return count(paramObject);
      try
      {
        Object localObject = checkElement(paramObject);
        if (this.range.contains(localObject))
        {
          int i = mutate(localObject, new RemoveModifier(paramInt, null));
          return i;
        }
      }
      catch (ClassCastException localClassCastException)
      {
      }
    }
    return 0;
  }

  public int setCount(E paramE, int paramInt)
  {
    checkElement(paramE);
    Preconditions.checkArgument(this.range.contains(paramE));
    return mutate(paramE, new SetCountModifier(paramInt, null));
  }

  public boolean setCount(E paramE, int paramInt1, int paramInt2)
  {
    checkElement(paramE);
    Preconditions.checkArgument(this.range.contains(paramE));
    return mutate(paramE, new ConditionalSetCountModifier(paramInt1, paramInt2, null)) == paramInt1;
  }

  public int size()
  {
    Node localNode = (Node)this.rootReference.get();
    return Ints.saturatedCast(BstRangeOps.totalInRange(sizeAggregate(), this.range, localNode));
  }

  public SortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    return new TreeMultiset(this.range.intersect(GeneralRange.downTo(this.comparator, paramE, paramBoundType)), this.rootReference);
  }

  private final class AddModifier extends TreeMultiset.MultisetModifier
  {
    private final int countToAdd;

    private AddModifier(int arg2)
    {
      super(null);
      int i;
      if (i > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.countToAdd = i;
        return;
      }
    }

    int newCount(int paramInt)
    {
      if (this.countToAdd <= 2147483647 - paramInt);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "Cannot add this many elements");
        return paramInt + this.countToAdd;
      }
    }
  }

  private final class ConditionalSetCountModifier extends TreeMultiset.MultisetModifier
  {
    private final int expectedCount;
    private final int setCount;

    private ConditionalSetCountModifier(int paramInt1, int arg3)
    {
      super(null);
      int i;
      int k;
      if (i >= 0)
      {
        k = j;
        if (paramInt1 < 0)
          break label51;
      }
      while (true)
      {
        Preconditions.checkArgument(j & k);
        this.expectedCount = paramInt1;
        this.setCount = i;
        return;
        k = 0;
        break;
        label51: j = 0;
      }
    }

    int newCount(int paramInt)
    {
      if (paramInt == this.expectedCount)
        paramInt = this.setCount;
      return paramInt;
    }
  }

  class LiveEntry extends Multisets.AbstractEntry<E>
  {
    private int count;
    private final E element;
    private TreeMultiset.Node<E> expectedRoot = (TreeMultiset.Node)TreeMultiset.this.rootReference.get();

    private LiveEntry(int arg2)
    {
      Object localObject;
      this.element = localObject;
      int i;
      this.count = i;
    }

    public int getCount()
    {
      if (TreeMultiset.this.rootReference.get() == this.expectedRoot)
        return this.count;
      this.expectedRoot = ((TreeMultiset.Node)TreeMultiset.this.rootReference.get());
      int i = TreeMultiset.this.count(this.element);
      this.count = i;
      return i;
    }

    public E getElement()
    {
      return this.element;
    }
  }

  private abstract class MultisetModifier
    implements BstModifier<E, TreeMultiset.Node<E>>
  {
    private MultisetModifier()
    {
    }

    @Nullable
    public BstModificationResult<TreeMultiset.Node<E>> modify(E paramE, @Nullable TreeMultiset.Node<E> paramNode)
    {
      int i = TreeMultiset.countOrZero(paramNode);
      int j = newCount(i);
      if (i == j)
        return BstModificationResult.identity(paramNode);
      if (j == 0)
        return BstModificationResult.rebalancingChange(paramNode, null);
      if (i == 0)
        return BstModificationResult.rebalancingChange(null, new TreeMultiset.Node(paramE, j, null));
      return BstModificationResult.rebuildingChange(paramNode, new TreeMultiset.Node(paramNode.getKey(), j, null));
    }

    abstract int newCount(int paramInt);
  }

  private static final class Node<E> extends BstNode<E, Node<E>>
    implements Serializable
  {
    private static final long serialVersionUID;
    private final int distinct;
    private final long size;

    private Node(E paramE, int paramInt)
    {
      this(paramE, paramInt, null, null);
    }

    private Node(E paramE, int paramInt, @Nullable Node<E> paramNode1, @Nullable Node<E> paramNode2)
    {
      super(paramNode1, paramNode2);
      if (paramInt > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.size = (paramInt + TreeMultiset.sizeOrZero(paramNode1) + TreeMultiset.sizeOrZero(paramNode2));
        this.distinct = (1 + TreeMultiset.distinctOrZero(paramNode1) + TreeMultiset.distinctOrZero(paramNode2));
        return;
      }
    }

    int elemCount()
    {
      return Ints.checkedCast(this.size - TreeMultiset.sizeOrZero((Node)childOrNull(BstSide.LEFT)) - TreeMultiset.sizeOrZero((Node)childOrNull(BstSide.RIGHT)));
    }
  }

  static final class Reference<T>
  {
    T value;

    public boolean compareAndSet(T paramT1, T paramT2)
    {
      if (this.value == paramT1)
      {
        this.value = paramT2;
        return true;
      }
      return false;
    }

    public T get()
    {
      return this.value;
    }
  }

  private final class RemoveModifier extends TreeMultiset.MultisetModifier
  {
    private final int countToRemove;

    private RemoveModifier(int arg2)
    {
      super(null);
      int i;
      if (i > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.countToRemove = i;
        return;
      }
    }

    int newCount(int paramInt)
    {
      return Math.max(0, paramInt - this.countToRemove);
    }
  }

  private final class SetCountModifier extends TreeMultiset.MultisetModifier
  {
    private final int countToSet;

    private SetCountModifier(int arg2)
    {
      super(null);
      int i;
      if (i >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.countToSet = i;
        return;
      }
    }

    int newCount(int paramInt)
    {
      return this.countToSet;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.TreeMultiset
 * JD-Core Version:    0.6.2
 */