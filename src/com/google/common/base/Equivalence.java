package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract class Equivalence<T>
{
  protected abstract boolean doEquivalent(T paramT1, T paramT2);

  protected abstract int doHash(T paramT);

  public final boolean equivalent(@Nullable T paramT1, @Nullable T paramT2)
  {
    if (paramT1 == paramT2)
      return true;
    if ((paramT1 == null) || (paramT2 == null))
      return false;
    return doEquivalent(paramT1, paramT2);
  }

  public final Predicate<T> equivalentTo(@Nullable T paramT)
  {
    return new EquivalentToPredicate(this, paramT);
  }

  public final int hash(@Nullable T paramT)
  {
    if (paramT == null)
      return 0;
    return doHash(paramT);
  }

  public final <F> Equivalence<F> onResultOf(Function<F, ? extends T> paramFunction)
  {
    return new FunctionalEquivalence(paramFunction, this);
  }

  @GwtCompatible(serializable=true)
  public final <S extends T> Equivalence<Iterable<S>> pairwise()
  {
    return new PairwiseEquivalence(this);
  }

  public final <S extends T> Wrapper<S> wrap(@Nullable S paramS)
  {
    return new Wrapper(this, paramS, null);
  }

  private static final class EquivalentToPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    private final Equivalence<T> equivalence;

    @Nullable
    private final T target;

    EquivalentToPredicate(Equivalence<T> paramEquivalence, @Nullable T paramT)
    {
      this.equivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
      this.target = paramT;
    }

    public boolean apply(@Nullable T paramT)
    {
      return this.equivalence.equivalent(paramT, this.target);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (this == paramObject);
      EquivalentToPredicate localEquivalentToPredicate;
      do
      {
        return true;
        if (!(paramObject instanceof EquivalentToPredicate))
          break;
        localEquivalentToPredicate = (EquivalentToPredicate)paramObject;
      }
      while ((this.equivalence.equals(localEquivalentToPredicate.equivalence)) && (Objects.equal(this.target, localEquivalentToPredicate.target)));
      return false;
      return false;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.equivalence;
      arrayOfObject[1] = this.target;
      return Objects.hashCode(arrayOfObject);
    }

    public String toString()
    {
      return this.equivalence + ".equivalentTo(" + this.target + ")";
    }
  }

  @Beta
  public static final class Wrapper<T>
    implements Serializable
  {
    private static final long serialVersionUID;
    private final Equivalence<? super T> equivalence;

    @Nullable
    private final T reference;

    private Wrapper(Equivalence<? super T> paramEquivalence, @Nullable T paramT)
    {
      this.equivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
      this.reference = paramT;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this);
      Wrapper localWrapper;
      Equivalence localEquivalence;
      do
      {
        return true;
        if (!(paramObject instanceof Wrapper))
          break;
        localWrapper = (Wrapper)paramObject;
        localEquivalence = this.equivalence;
      }
      while ((localEquivalence.equals(localWrapper.equivalence)) && (localEquivalence.equivalent(this.reference, localWrapper.reference)));
      return false;
      return false;
    }

    @Nullable
    public T get()
    {
      return this.reference;
    }

    public int hashCode()
    {
      return this.equivalence.hash(this.reference);
    }

    public String toString()
    {
      return this.equivalence + ".wrap(" + this.reference + ")";
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Equivalence
 * JD-Core Version:    0.6.2
 */