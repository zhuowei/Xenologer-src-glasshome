package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

@GwtCompatible
final class BstInOrderPath<N extends BstNode<?, N>> extends BstPath<N, BstInOrderPath<N>>
{
  private transient Optional<BstInOrderPath<N>> nextInOrder;
  private transient Optional<BstInOrderPath<N>> prevInOrder;
  private final BstSide sideExtension;

  static
  {
    if (!BstInOrderPath.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private BstInOrderPath(N paramN, @Nullable BstSide paramBstSide, @Nullable BstInOrderPath<N> paramBstInOrderPath)
  {
    super(paramN, paramBstInOrderPath);
    this.sideExtension = paramBstSide;
    if (!$assertionsDisabled)
    {
      int j;
      if (paramBstSide == null)
      {
        j = i;
        if (paramBstInOrderPath != null)
          break label53;
      }
      while (true)
      {
        if (j == i)
          return;
        throw new AssertionError();
        j = 0;
        break;
        label53: i = 0;
      }
    }
  }

  private Optional<BstInOrderPath<N>> computeNextInOrder(BstSide paramBstSide)
  {
    if (getTip().hasChild(paramBstSide))
    {
      BstInOrderPath localBstInOrderPath2 = extension(this, paramBstSide);
      BstSide localBstSide = paramBstSide.other();
      while (localBstInOrderPath2.getTip().hasChild(localBstSide))
        localBstInOrderPath2 = extension(localBstInOrderPath2, localBstSide);
      return Optional.of(localBstInOrderPath2);
    }
    for (BstInOrderPath localBstInOrderPath1 = this; localBstInOrderPath1.sideExtension == paramBstSide; localBstInOrderPath1 = (BstInOrderPath)localBstInOrderPath1.getPrefix());
    return Optional.fromNullable((BstInOrderPath)localBstInOrderPath1.prefixOrNull());
  }

  private static <N extends BstNode<?, N>> BstInOrderPath<N> extension(BstInOrderPath<N> paramBstInOrderPath, BstSide paramBstSide)
  {
    Preconditions.checkNotNull(paramBstInOrderPath);
    return new BstInOrderPath(paramBstInOrderPath.getTip().getChild(paramBstSide), paramBstSide, paramBstInOrderPath);
  }

  public static <N extends BstNode<?, N>> BstPathFactory<N, BstInOrderPath<N>> inOrderFactory()
  {
    return new BstPathFactory()
    {
      public BstInOrderPath<N> extension(BstInOrderPath<N> paramAnonymousBstInOrderPath, BstSide paramAnonymousBstSide)
      {
        return BstInOrderPath.extension(paramAnonymousBstInOrderPath, paramAnonymousBstSide);
      }

      public BstInOrderPath<N> initialPath(N paramAnonymousN)
      {
        return new BstInOrderPath(paramAnonymousN, null, null, null);
      }
    };
  }

  private Optional<BstInOrderPath<N>> nextInOrder(BstSide paramBstSide)
  {
    switch (2.$SwitchMap$com$google$common$collect$BstSide[paramBstSide.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      Optional localOptional3 = this.prevInOrder;
      if (localOptional3 == null)
      {
        Optional localOptional4 = computeNextInOrder(paramBstSide);
        this.prevInOrder = localOptional4;
        return localOptional4;
      }
      return localOptional3;
    case 2:
    }
    Optional localOptional1 = this.nextInOrder;
    if (localOptional1 == null)
    {
      Optional localOptional2 = computeNextInOrder(paramBstSide);
      this.nextInOrder = localOptional2;
      return localOptional2;
    }
    return localOptional1;
  }

  public BstSide getSideOfExtension()
  {
    return this.sideExtension;
  }

  public boolean hasNext(BstSide paramBstSide)
  {
    return nextInOrder(paramBstSide).isPresent();
  }

  public BstInOrderPath<N> next(BstSide paramBstSide)
  {
    if (!hasNext(paramBstSide))
      throw new NoSuchElementException();
    return (BstInOrderPath)nextInOrder(paramBstSide).get();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstInOrderPath
 * JD-Core Version:    0.6.2
 */