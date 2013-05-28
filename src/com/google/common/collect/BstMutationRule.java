package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;

@GwtCompatible
final class BstMutationRule<K, N extends BstNode<K, N>>
{
  private final BstBalancePolicy<N> balancePolicy;
  private final BstModifier<K, N> modifier;
  private final BstNodeFactory<N> nodeFactory;

  private BstMutationRule(BstModifier<K, N> paramBstModifier, BstBalancePolicy<N> paramBstBalancePolicy, BstNodeFactory<N> paramBstNodeFactory)
  {
    this.balancePolicy = ((BstBalancePolicy)Preconditions.checkNotNull(paramBstBalancePolicy));
    this.nodeFactory = ((BstNodeFactory)Preconditions.checkNotNull(paramBstNodeFactory));
    this.modifier = ((BstModifier)Preconditions.checkNotNull(paramBstModifier));
  }

  public static <K, N extends BstNode<K, N>> BstMutationRule<K, N> createRule(BstModifier<K, N> paramBstModifier, BstBalancePolicy<N> paramBstBalancePolicy, BstNodeFactory<N> paramBstNodeFactory)
  {
    return new BstMutationRule(paramBstModifier, paramBstBalancePolicy, paramBstNodeFactory);
  }

  public BstBalancePolicy<N> getBalancePolicy()
  {
    return this.balancePolicy;
  }

  public BstModifier<K, N> getModifier()
  {
    return this.modifier;
  }

  public BstNodeFactory<N> getNodeFactory()
  {
    return this.nodeFactory;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstMutationRule
 * JD-Core Version:    0.6.2
 */