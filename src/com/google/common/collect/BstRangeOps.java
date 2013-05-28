package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible
final class BstRangeOps
{
  public static <K> boolean beyond(GeneralRange<K> paramGeneralRange, @Nullable K paramK, BstSide paramBstSide)
  {
    Preconditions.checkNotNull(paramGeneralRange);
    switch (1.$SwitchMap$com$google$common$collect$BstSide[paramBstSide.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return paramGeneralRange.tooLow(paramK);
    case 2:
    }
    return paramGeneralRange.tooHigh(paramK);
  }

  @Nullable
  public static <K, N extends BstNode<K, N>, P extends BstPath<N, P>> P furthestPath(GeneralRange<K> paramGeneralRange, BstSide paramBstSide, BstPathFactory<N, P> paramBstPathFactory, @Nullable N paramN)
  {
    Preconditions.checkNotNull(paramGeneralRange);
    Preconditions.checkNotNull(paramBstPathFactory);
    Preconditions.checkNotNull(paramBstSide);
    if (paramN == null)
      return null;
    return furthestPath(paramGeneralRange, paramBstSide, paramBstPathFactory, paramBstPathFactory.initialPath(paramN));
  }

  private static <K, N extends BstNode<K, N>, P extends BstPath<N, P>> P furthestPath(GeneralRange<K> paramGeneralRange, BstSide paramBstSide, BstPathFactory<N, P> paramBstPathFactory, P paramP)
  {
    BstNode localBstNode = paramP.getTip();
    Object localObject = localBstNode.getKey();
    BstPath localBstPath1;
    if (beyond(paramGeneralRange, localObject, paramBstSide))
    {
      boolean bool2 = localBstNode.hasChild(paramBstSide.other());
      localBstPath1 = null;
      if (bool2)
        localBstPath1 = furthestPath(paramGeneralRange, paramBstSide, paramBstPathFactory, paramBstPathFactory.extension(paramP, paramBstSide.other()));
    }
    boolean bool1;
    do
    {
      return localBstPath1;
      if (localBstNode.hasChild(paramBstSide))
      {
        BstPath localBstPath2 = furthestPath(paramGeneralRange, paramBstSide, paramBstPathFactory, paramBstPathFactory.extension(paramP, paramBstSide));
        if (localBstPath2 != null)
          return localBstPath2;
      }
      bool1 = beyond(paramGeneralRange, localObject, paramBstSide.other());
      localBstPath1 = null;
    }
    while (bool1);
    return paramP;
  }

  @Nullable
  public static <K, N extends BstNode<K, N>> N minusRange(GeneralRange<K> paramGeneralRange, BstBalancePolicy<N> paramBstBalancePolicy, BstNodeFactory<N> paramBstNodeFactory, @Nullable N paramN)
  {
    Preconditions.checkNotNull(paramGeneralRange);
    Preconditions.checkNotNull(paramBstBalancePolicy);
    Preconditions.checkNotNull(paramBstNodeFactory);
    BstNode localBstNode1;
    if (paramGeneralRange.hasUpperBound())
    {
      localBstNode1 = subTreeBeyondRangeToSide(paramGeneralRange, paramBstBalancePolicy, paramBstNodeFactory, BstSide.RIGHT, paramN);
      if (!paramGeneralRange.hasLowerBound())
        break label71;
    }
    label71: for (BstNode localBstNode2 = subTreeBeyondRangeToSide(paramGeneralRange, paramBstBalancePolicy, paramBstNodeFactory, BstSide.LEFT, paramN); ; localBstNode2 = null)
    {
      return paramBstBalancePolicy.combine(paramBstNodeFactory, localBstNode2, localBstNode1);
      localBstNode1 = null;
      break;
    }
  }

  @Nullable
  private static <K, N extends BstNode<K, N>> N subTreeBeyondRangeToSide(GeneralRange<K> paramGeneralRange, BstBalancePolicy<N> paramBstBalancePolicy, BstNodeFactory<N> paramBstNodeFactory, BstSide paramBstSide, @Nullable N paramN)
  {
    if (paramN == null)
      return null;
    if (beyond(paramGeneralRange, paramN.getKey(), paramBstSide))
    {
      BstNode localBstNode1 = paramN.childOrNull(BstSide.LEFT);
      BstNode localBstNode2 = paramN.childOrNull(BstSide.RIGHT);
      switch (1.$SwitchMap$com$google$common$collect$BstSide[paramBstSide.ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        localBstNode2 = subTreeBeyondRangeToSide(paramGeneralRange, paramBstBalancePolicy, paramBstNodeFactory, BstSide.LEFT, localBstNode2);
      case 2:
      }
      while (true)
      {
        return paramBstBalancePolicy.balance(paramBstNodeFactory, paramN, localBstNode1, localBstNode2);
        localBstNode1 = subTreeBeyondRangeToSide(paramGeneralRange, paramBstBalancePolicy, paramBstNodeFactory, BstSide.RIGHT, localBstNode1);
      }
    }
    return subTreeBeyondRangeToSide(paramGeneralRange, paramBstBalancePolicy, paramBstNodeFactory, paramBstSide, paramN.childOrNull(paramBstSide));
  }

  private static <K, N extends BstNode<K, N>> long totalBeyondRangeToSide(BstAggregate<? super N> paramBstAggregate, GeneralRange<K> paramGeneralRange, BstSide paramBstSide, @Nullable N paramN)
  {
    long l = 0L;
    while (paramN != null)
      if (beyond(paramGeneralRange, paramN.getKey(), paramBstSide))
      {
        l = l + paramBstAggregate.entryValue(paramN) + paramBstAggregate.treeValue(paramN.childOrNull(paramBstSide));
        paramN = paramN.childOrNull(paramBstSide.other());
      }
      else
      {
        paramN = paramN.childOrNull(paramBstSide);
      }
    return l;
  }

  public static <K, N extends BstNode<K, N>> long totalInRange(BstAggregate<? super N> paramBstAggregate, GeneralRange<K> paramGeneralRange, @Nullable N paramN)
  {
    Preconditions.checkNotNull(paramBstAggregate);
    Preconditions.checkNotNull(paramGeneralRange);
    long l;
    if ((paramN == null) || (paramGeneralRange.isEmpty()))
      l = 0L;
    do
    {
      return l;
      l = paramBstAggregate.treeValue(paramN);
      if (paramGeneralRange.hasLowerBound())
        l -= totalBeyondRangeToSide(paramBstAggregate, paramGeneralRange, BstSide.LEFT, paramN);
    }
    while (!paramGeneralRange.hasUpperBound());
    return l - totalBeyondRangeToSide(paramBstAggregate, paramGeneralRange, BstSide.RIGHT, paramN);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstRangeOps
 * JD-Core Version:    0.6.2
 */