package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible
final class BstCountBasedBalancePolicies
{
  private static final int SECOND_ROTATE_RATIO = 2;
  private static final int SINGLE_ROTATE_RATIO = 4;

  public static <K, N extends BstNode<K, N>> BstBalancePolicy<N> fullRebalancePolicy(final BstAggregate<N> paramBstAggregate)
  {
    Preconditions.checkNotNull(paramBstAggregate);
    return new BstBalancePolicy()
    {
      public N balance(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, @Nullable N paramAnonymousN2, @Nullable N paramAnonymousN3)
      {
        if (paramAnonymousN2 == null)
          return BstOperations.insertMin(paramAnonymousN3, paramAnonymousN1, paramAnonymousBstNodeFactory, this.val$singleBalancePolicy);
        if (paramAnonymousN3 == null)
          return BstOperations.insertMax(paramAnonymousN2, paramAnonymousN1, paramAnonymousBstNodeFactory, this.val$singleBalancePolicy);
        long l1 = paramBstAggregate.treeValue(paramAnonymousN2);
        long l2 = paramBstAggregate.treeValue(paramAnonymousN3);
        if (4L * l1 <= l2)
        {
          BstNode localBstNode2 = balance(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2, paramAnonymousN3.childOrNull(BstSide.LEFT));
          return this.val$singleBalancePolicy.balance(paramAnonymousBstNodeFactory, paramAnonymousN3, localBstNode2, paramAnonymousN3.childOrNull(BstSide.RIGHT));
        }
        if (4L * l2 <= l1)
        {
          BstNode localBstNode1 = balance(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2.childOrNull(BstSide.RIGHT), paramAnonymousN3);
          return this.val$singleBalancePolicy.balance(paramAnonymousBstNodeFactory, paramAnonymousN2, paramAnonymousN2.childOrNull(BstSide.LEFT), localBstNode1);
        }
        return paramAnonymousBstNodeFactory.createNode(paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
      }

      @Nullable
      public N combine(BstNodeFactory<N> paramAnonymousBstNodeFactory, @Nullable N paramAnonymousN1, @Nullable N paramAnonymousN2)
      {
        if (paramAnonymousN1 == null)
          return paramAnonymousN2;
        if (paramAnonymousN2 == null)
          return paramAnonymousN1;
        long l1 = paramBstAggregate.treeValue(paramAnonymousN1);
        long l2 = paramBstAggregate.treeValue(paramAnonymousN2);
        if (4L * l1 <= l2)
        {
          BstNode localBstNode2 = combine(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2.childOrNull(BstSide.LEFT));
          return this.val$singleBalancePolicy.balance(paramAnonymousBstNodeFactory, paramAnonymousN2, localBstNode2, paramAnonymousN2.childOrNull(BstSide.RIGHT));
        }
        if (4L * l2 <= l1)
        {
          BstNode localBstNode1 = combine(paramAnonymousBstNodeFactory, paramAnonymousN1.childOrNull(BstSide.RIGHT), paramAnonymousN2);
          return this.val$singleBalancePolicy.balance(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN1.childOrNull(BstSide.LEFT), localBstNode1);
        }
        return this.val$singleBalancePolicy.combine(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2);
      }
    };
  }

  public static <N extends BstNode<?, N>> BstBalancePolicy<N> noRebalancePolicy(BstAggregate<N> paramBstAggregate)
  {
    Preconditions.checkNotNull(paramBstAggregate);
    return new BstBalancePolicy()
    {
      public N balance(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, @Nullable N paramAnonymousN2, @Nullable N paramAnonymousN3)
      {
        return ((BstNodeFactory)Preconditions.checkNotNull(paramAnonymousBstNodeFactory)).createNode(paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
      }

      @Nullable
      public N combine(BstNodeFactory<N> paramAnonymousBstNodeFactory, @Nullable N paramAnonymousN1, @Nullable N paramAnonymousN2)
      {
        if (paramAnonymousN1 == null)
          return paramAnonymousN2;
        if (paramAnonymousN2 == null)
          return paramAnonymousN1;
        if (this.val$countAggregate.treeValue(paramAnonymousN1) > this.val$countAggregate.treeValue(paramAnonymousN2))
          return paramAnonymousBstNodeFactory.createNode(paramAnonymousN1, paramAnonymousN1.childOrNull(BstSide.LEFT), combine(paramAnonymousBstNodeFactory, paramAnonymousN1.childOrNull(BstSide.RIGHT), paramAnonymousN2));
        return paramAnonymousBstNodeFactory.createNode(paramAnonymousN2, combine(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2.childOrNull(BstSide.LEFT)), paramAnonymousN2.childOrNull(BstSide.RIGHT));
      }
    };
  }

  public static <K, N extends BstNode<K, N>> BstBalancePolicy<N> singleRebalancePolicy(BstAggregate<N> paramBstAggregate)
  {
    Preconditions.checkNotNull(paramBstAggregate);
    return new BstBalancePolicy()
    {
      private N rotateL(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, @Nullable N paramAnonymousN2, N paramAnonymousN3)
      {
        Preconditions.checkNotNull(paramAnonymousN3);
        BstNode localBstNode1 = paramAnonymousN3.childOrNull(BstSide.LEFT);
        BstNode localBstNode2 = paramAnonymousN3.childOrNull(BstSide.RIGHT);
        if (this.val$countAggregate.treeValue(localBstNode1) >= 2L * this.val$countAggregate.treeValue(localBstNode2))
          paramAnonymousN3 = singleR(paramAnonymousBstNodeFactory, paramAnonymousN3, localBstNode1, localBstNode2);
        return singleL(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
      }

      private N rotateR(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, N paramAnonymousN2, @Nullable N paramAnonymousN3)
      {
        Preconditions.checkNotNull(paramAnonymousN2);
        BstNode localBstNode1 = paramAnonymousN2.childOrNull(BstSide.RIGHT);
        BstNode localBstNode2 = paramAnonymousN2.childOrNull(BstSide.LEFT);
        if (this.val$countAggregate.treeValue(localBstNode1) >= 2L * this.val$countAggregate.treeValue(localBstNode2))
          paramAnonymousN2 = singleL(paramAnonymousBstNodeFactory, paramAnonymousN2, localBstNode2, localBstNode1);
        return singleR(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
      }

      private N singleL(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, @Nullable N paramAnonymousN2, N paramAnonymousN3)
      {
        Preconditions.checkNotNull(paramAnonymousN3);
        return paramAnonymousBstNodeFactory.createNode(paramAnonymousN3, paramAnonymousBstNodeFactory.createNode(paramAnonymousN1, paramAnonymousN2, paramAnonymousN3.childOrNull(BstSide.LEFT)), paramAnonymousN3.childOrNull(BstSide.RIGHT));
      }

      private N singleR(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, N paramAnonymousN2, @Nullable N paramAnonymousN3)
      {
        Preconditions.checkNotNull(paramAnonymousN2);
        return paramAnonymousBstNodeFactory.createNode(paramAnonymousN2, paramAnonymousN2.childOrNull(BstSide.LEFT), paramAnonymousBstNodeFactory.createNode(paramAnonymousN1, paramAnonymousN2.childOrNull(BstSide.RIGHT), paramAnonymousN3));
      }

      public N balance(BstNodeFactory<N> paramAnonymousBstNodeFactory, N paramAnonymousN1, @Nullable N paramAnonymousN2, @Nullable N paramAnonymousN3)
      {
        long l1 = this.val$countAggregate.treeValue(paramAnonymousN2);
        long l2 = this.val$countAggregate.treeValue(paramAnonymousN3);
        if (l1 + l2 > 1L)
        {
          if (l2 >= 4L * l1)
            return rotateL(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
          if (l1 >= 4L * l2)
            return rotateR(paramAnonymousBstNodeFactory, paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
        }
        return paramAnonymousBstNodeFactory.createNode(paramAnonymousN1, paramAnonymousN2, paramAnonymousN3);
      }

      @Nullable
      public N combine(BstNodeFactory<N> paramAnonymousBstNodeFactory, @Nullable N paramAnonymousN1, @Nullable N paramAnonymousN2)
      {
        if (paramAnonymousN1 == null)
          return paramAnonymousN2;
        if (paramAnonymousN2 == null)
          return paramAnonymousN1;
        BstNode localBstNode;
        if (this.val$countAggregate.treeValue(paramAnonymousN1) > this.val$countAggregate.treeValue(paramAnonymousN2))
        {
          BstMutationResult localBstMutationResult2 = BstOperations.extractMax(paramAnonymousN1, paramAnonymousBstNodeFactory, this);
          localBstNode = localBstMutationResult2.getOriginalTarget();
          paramAnonymousN1 = localBstMutationResult2.getChangedRoot();
        }
        while (true)
        {
          return paramAnonymousBstNodeFactory.createNode(localBstNode, paramAnonymousN1, paramAnonymousN2);
          BstMutationResult localBstMutationResult1 = BstOperations.extractMin(paramAnonymousN2, paramAnonymousBstNodeFactory, this);
          localBstNode = localBstMutationResult1.getOriginalTarget();
          paramAnonymousN2 = localBstMutationResult1.getChangedRoot();
        }
      }
    };
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstCountBasedBalancePolicies
 * JD-Core Version:    0.6.2
 */