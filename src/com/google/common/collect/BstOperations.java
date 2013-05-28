package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import javax.annotation.Nullable;

@GwtCompatible
final class BstOperations
{
  public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> extractMax(N paramN, BstNodeFactory<N> paramBstNodeFactory, BstBalancePolicy<N> paramBstBalancePolicy)
  {
    Preconditions.checkNotNull(paramN);
    Preconditions.checkNotNull(paramBstNodeFactory);
    Preconditions.checkNotNull(paramBstBalancePolicy);
    if (paramN.hasChild(BstSide.RIGHT))
      return extractMax(paramN.getChild(BstSide.RIGHT), paramBstNodeFactory, paramBstBalancePolicy).lift(paramN, BstSide.RIGHT, paramBstNodeFactory, paramBstBalancePolicy);
    return BstMutationResult.mutationResult(paramN.getKey(), paramN, paramN.childOrNull(BstSide.LEFT), BstModificationResult.rebalancingChange(paramN, null));
  }

  public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> extractMin(N paramN, BstNodeFactory<N> paramBstNodeFactory, BstBalancePolicy<N> paramBstBalancePolicy)
  {
    Preconditions.checkNotNull(paramN);
    Preconditions.checkNotNull(paramBstNodeFactory);
    Preconditions.checkNotNull(paramBstBalancePolicy);
    if (paramN.hasChild(BstSide.LEFT))
      return extractMin(paramN.getChild(BstSide.LEFT), paramBstNodeFactory, paramBstBalancePolicy).lift(paramN, BstSide.LEFT, paramBstNodeFactory, paramBstBalancePolicy);
    return BstMutationResult.mutationResult(paramN.getKey(), paramN, paramN.childOrNull(BstSide.RIGHT), BstModificationResult.rebalancingChange(paramN, null));
  }

  public static <N extends BstNode<?, N>> N insertMax(@Nullable N paramN1, N paramN2, BstNodeFactory<N> paramBstNodeFactory, BstBalancePolicy<N> paramBstBalancePolicy)
  {
    Preconditions.checkNotNull(paramN2);
    Preconditions.checkNotNull(paramBstNodeFactory);
    Preconditions.checkNotNull(paramBstBalancePolicy);
    if (paramN1 == null)
      return paramBstNodeFactory.createLeaf(paramN2);
    return paramBstBalancePolicy.balance(paramBstNodeFactory, paramN1, paramN1.childOrNull(BstSide.LEFT), insertMax(paramN1.childOrNull(BstSide.RIGHT), paramN2, paramBstNodeFactory, paramBstBalancePolicy));
  }

  public static <N extends BstNode<?, N>> N insertMin(@Nullable N paramN1, N paramN2, BstNodeFactory<N> paramBstNodeFactory, BstBalancePolicy<N> paramBstBalancePolicy)
  {
    Preconditions.checkNotNull(paramN2);
    Preconditions.checkNotNull(paramBstNodeFactory);
    Preconditions.checkNotNull(paramBstBalancePolicy);
    if (paramN1 == null)
      return paramBstNodeFactory.createLeaf(paramN2);
    return paramBstBalancePolicy.balance(paramBstNodeFactory, paramN1, insertMin(paramN1.childOrNull(BstSide.LEFT), paramN2, paramBstNodeFactory, paramBstBalancePolicy), paramN1.childOrNull(BstSide.RIGHT));
  }

  private static <K, N extends BstNode<K, N>> BstMutationResult<K, N> modify(@Nullable N paramN, K paramK, BstMutationRule<K, N> paramBstMutationRule)
  {
    BstBalancePolicy localBstBalancePolicy = paramBstMutationRule.getBalancePolicy();
    BstNodeFactory localBstNodeFactory = paramBstMutationRule.getNodeFactory();
    BstModifier localBstModifier = paramBstMutationRule.getModifier();
    if (paramN == null);
    BstModificationResult localBstModificationResult;
    BstNode localBstNode2;
    BstNode localBstNode3;
    for (BstNode localBstNode1 = null; ; localBstNode1 = localBstNodeFactory.createLeaf(paramN))
    {
      localBstModificationResult = localBstModifier.modify(paramK, localBstNode1);
      localBstNode2 = null;
      localBstNode3 = null;
      if (paramN != null)
      {
        localBstNode2 = paramN.childOrNull(BstSide.LEFT);
        localBstNode3 = paramN.childOrNull(BstSide.RIGHT);
      }
      switch (1.$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType[localBstModificationResult.getType().ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
      case 2:
      case 3:
      }
    }
    Object localObject = paramN;
    while (true)
    {
      return BstMutationResult.mutationResult(paramK, paramN, (BstNode)localObject, localBstModificationResult);
      if (localBstModificationResult.getChangedTarget() != null)
      {
        localObject = localBstNodeFactory.createNode(localBstModificationResult.getChangedTarget(), localBstNode2, localBstNode3);
      }
      else if (paramN == null)
      {
        localObject = null;
      }
      else
      {
        throw new AssertionError("Modification result is a REBUILDING_CHANGE, but rebalancing required");
        if (localBstModificationResult.getChangedTarget() != null)
          localObject = localBstBalancePolicy.balance(localBstNodeFactory, localBstModificationResult.getChangedTarget(), localBstNode2, localBstNode3);
        else if (paramN != null)
          localObject = localBstBalancePolicy.combine(localBstNodeFactory, localBstNode2, localBstNode3);
        else
          localObject = null;
      }
    }
  }

  public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> mutate(BstInOrderPath<N> paramBstInOrderPath, BstMutationRule<K, N> paramBstMutationRule)
  {
    Preconditions.checkNotNull(paramBstInOrderPath);
    Preconditions.checkNotNull(paramBstMutationRule);
    BstBalancePolicy localBstBalancePolicy = paramBstMutationRule.getBalancePolicy();
    BstNodeFactory localBstNodeFactory = paramBstMutationRule.getNodeFactory();
    paramBstMutationRule.getModifier();
    BstNode localBstNode = paramBstInOrderPath.getTip();
    BstMutationResult localBstMutationResult = modify(localBstNode, localBstNode.getKey(), paramBstMutationRule);
    while (paramBstInOrderPath.hasPrefix())
    {
      BstInOrderPath localBstInOrderPath = (BstInOrderPath)paramBstInOrderPath.getPrefix();
      localBstMutationResult = localBstMutationResult.lift(localBstInOrderPath.getTip(), paramBstInOrderPath.getSideOfExtension(), localBstNodeFactory, localBstBalancePolicy);
      paramBstInOrderPath = localBstInOrderPath;
    }
    return localBstMutationResult;
  }

  public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> mutate(Comparator<? super K> paramComparator, BstMutationRule<K, N> paramBstMutationRule, @Nullable N paramN, @Nullable K paramK)
  {
    Preconditions.checkNotNull(paramComparator);
    Preconditions.checkNotNull(paramBstMutationRule);
    if (paramN != null)
    {
      int i = paramComparator.compare(paramK, paramN.getKey());
      if (i != 0)
      {
        if (i < 0);
        for (BstSide localBstSide = BstSide.LEFT; ; localBstSide = BstSide.RIGHT)
          return mutate(paramComparator, paramBstMutationRule, paramN.childOrNull(localBstSide), paramK).lift(paramN, localBstSide, paramBstMutationRule.getNodeFactory(), paramBstMutationRule.getBalancePolicy());
      }
    }
    return modify(paramN, paramK, paramBstMutationRule);
  }

  @Nullable
  public static <K, N extends BstNode<K, N>> N seek(Comparator<? super K> paramComparator, @Nullable N paramN, @Nullable K paramK)
  {
    Preconditions.checkNotNull(paramComparator);
    if (paramN == null)
      paramN = null;
    int i;
    do
    {
      return paramN;
      i = paramComparator.compare(paramK, paramN.getKey());
    }
    while (i == 0);
    if (i < 0);
    for (BstSide localBstSide = BstSide.LEFT; ; localBstSide = BstSide.RIGHT)
      return seek(paramComparator, paramN.childOrNull(localBstSide), paramK);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstOperations
 * JD-Core Version:    0.6.2
 */