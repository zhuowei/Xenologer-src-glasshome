package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible
final class BstMutationResult<K, N extends BstNode<K, N>>
{

  @Nullable
  private N changedRoot;
  private final BstModificationResult<N> modificationResult;

  @Nullable
  private N originalRoot;
  private final K targetKey;

  static
  {
    if (!BstMutationResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private BstMutationResult(@Nullable K paramK, @Nullable N paramN1, @Nullable N paramN2, BstModificationResult<N> paramBstModificationResult)
  {
    this.targetKey = paramK;
    this.originalRoot = paramN1;
    this.changedRoot = paramN2;
    this.modificationResult = ((BstModificationResult)Preconditions.checkNotNull(paramBstModificationResult));
  }

  public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> mutationResult(@Nullable K paramK, @Nullable N paramN1, @Nullable N paramN2, BstModificationResult<N> paramBstModificationResult)
  {
    return new BstMutationResult(paramK, paramN1, paramN2, paramBstModificationResult);
  }

  @Nullable
  public N getChangedRoot()
  {
    return this.changedRoot;
  }

  @Nullable
  public N getChangedTarget()
  {
    return this.modificationResult.getChangedTarget();
  }

  @Nullable
  public N getOriginalRoot()
  {
    return this.originalRoot;
  }

  @Nullable
  public N getOriginalTarget()
  {
    return this.modificationResult.getOriginalTarget();
  }

  public K getTargetKey()
  {
    return this.targetKey;
  }

  public BstMutationResult<K, N> lift(N paramN, BstSide paramBstSide, BstNodeFactory<N> paramBstNodeFactory, BstBalancePolicy<N> paramBstBalancePolicy)
  {
    int i = 1;
    if (!$assertionsDisabled)
    {
      int j;
      int k;
      label25: int n;
      label40: int i1;
      if (paramN != null)
      {
        j = i;
        if (paramBstSide == null)
          break label74;
        k = i;
        int m = j & k;
        if (paramBstNodeFactory == null)
          break label80;
        n = i;
        i1 = n & m;
        if (paramBstBalancePolicy == null)
          break label86;
      }
      while (true)
      {
        if ((i & i1) != 0)
          break label92;
        throw new AssertionError();
        j = 0;
        break;
        label74: k = 0;
        break label25;
        label80: n = 0;
        break label40;
        label86: i = 0;
      }
    }
    label92: switch (1.$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType[modificationType().ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      this.changedRoot = paramN;
      this.originalRoot = paramN;
      return this;
    case 2:
    case 3:
    }
    this.originalRoot = paramN;
    BstNode localBstNode1 = paramN.childOrNull(BstSide.LEFT);
    BstNode localBstNode2 = paramN.childOrNull(BstSide.RIGHT);
    switch (1.$SwitchMap$com$google$common$collect$BstSide[paramBstSide.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      localBstNode1 = this.changedRoot;
    case 2:
    }
    while (modificationType() == BstModificationResult.ModificationType.REBUILDING_CHANGE)
    {
      this.changedRoot = paramBstNodeFactory.createNode(paramN, localBstNode1, localBstNode2);
      return this;
      localBstNode2 = this.changedRoot;
    }
    this.changedRoot = paramBstBalancePolicy.balance(paramBstNodeFactory, paramN, localBstNode1, localBstNode2);
    return this;
  }

  BstModificationResult.ModificationType modificationType()
  {
    return this.modificationResult.getType();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstMutationResult
 * JD-Core Version:    0.6.2
 */