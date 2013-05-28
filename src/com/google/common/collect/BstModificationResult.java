package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible
final class BstModificationResult<N extends BstNode<?, N>>
{

  @Nullable
  private final N changedTarget;

  @Nullable
  private final N originalTarget;
  private final ModificationType type;

  private BstModificationResult(@Nullable N paramN1, @Nullable N paramN2, ModificationType paramModificationType)
  {
    this.originalTarget = paramN1;
    this.changedTarget = paramN2;
    this.type = ((ModificationType)Preconditions.checkNotNull(paramModificationType));
  }

  static <N extends BstNode<?, N>> BstModificationResult<N> identity(@Nullable N paramN)
  {
    return new BstModificationResult(paramN, paramN, ModificationType.IDENTITY);
  }

  static <N extends BstNode<?, N>> BstModificationResult<N> rebalancingChange(@Nullable N paramN1, @Nullable N paramN2)
  {
    return new BstModificationResult(paramN1, paramN2, ModificationType.REBALANCING_CHANGE);
  }

  static <N extends BstNode<?, N>> BstModificationResult<N> rebuildingChange(@Nullable N paramN1, @Nullable N paramN2)
  {
    return new BstModificationResult(paramN1, paramN2, ModificationType.REBUILDING_CHANGE);
  }

  @Nullable
  N getChangedTarget()
  {
    return this.changedTarget;
  }

  @Nullable
  N getOriginalTarget()
  {
    return this.originalTarget;
  }

  ModificationType getType()
  {
    return this.type;
  }

  static enum ModificationType
  {
    static
    {
      REBALANCING_CHANGE = new ModificationType("REBALANCING_CHANGE", 2);
      ModificationType[] arrayOfModificationType = new ModificationType[3];
      arrayOfModificationType[0] = IDENTITY;
      arrayOfModificationType[1] = REBUILDING_CHANGE;
      arrayOfModificationType[2] = REBALANCING_CHANGE;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstModificationResult
 * JD-Core Version:    0.6.2
 */