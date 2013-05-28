package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract class Optional<T>
  implements Serializable
{
  private static final long serialVersionUID;

  public static <T> Optional<T> absent()
  {
    return Absent.INSTANCE;
  }

  public static <T> Optional<T> fromNullable(@Nullable T paramT)
  {
    if (paramT == null)
      return absent();
    return new Present(paramT);
  }

  public static <T> Optional<T> of(T paramT)
  {
    return new Present(Preconditions.checkNotNull(paramT));
  }

  public static <T> Iterable<T> presentInstances(Iterable<Optional<T>> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    return new Iterable()
    {
      public Iterator<T> iterator()
      {
        return new AbstractIterator()
        {
          private final Iterator<Optional<T>> iterator = (Iterator)Preconditions.checkNotNull(Optional.1.this.val$optionals.iterator());

          protected T computeNext()
          {
            while (this.iterator.hasNext())
            {
              Optional localOptional = (Optional)this.iterator.next();
              if (localOptional.isPresent())
                return localOptional.get();
            }
            return endOfData();
          }
        };
      }
    };
  }

  public abstract Set<T> asSet();

  public abstract boolean equals(@Nullable Object paramObject);

  public abstract T get();

  public abstract int hashCode();

  public abstract boolean isPresent();

  public abstract Optional<T> or(Optional<? extends T> paramOptional);

  public abstract T or(Supplier<? extends T> paramSupplier);

  public abstract T or(T paramT);

  @Nullable
  public abstract T orNull();

  public abstract String toString();

  private static final class Absent extends Optional<Object>
  {
    private static final Absent INSTANCE = new Absent();
    private static final long serialVersionUID;

    private Absent()
    {
      super();
    }

    private Object readResolve()
    {
      return INSTANCE;
    }

    public Set<Object> asSet()
    {
      return Collections.emptySet();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return paramObject == this;
    }

    public Object get()
    {
      throw new IllegalStateException("value is absent");
    }

    public int hashCode()
    {
      return 1502476572;
    }

    public boolean isPresent()
    {
      return false;
    }

    public Optional<Object> or(Optional<?> paramOptional)
    {
      return (Optional)Preconditions.checkNotNull(paramOptional);
    }

    public Object or(Supplier<?> paramSupplier)
    {
      return Preconditions.checkNotNull(paramSupplier.get(), "use orNull() instead of a Supplier that returns null");
    }

    public Object or(Object paramObject)
    {
      return Preconditions.checkNotNull(paramObject, "use orNull() instead of or(null)");
    }

    @Nullable
    public Object orNull()
    {
      return null;
    }

    public String toString()
    {
      return "Optional.absent()";
    }
  }

  private static final class Present<T> extends Optional<T>
  {
    private static final long serialVersionUID;
    private final T reference;

    Present(T paramT)
    {
      super();
      this.reference = paramT;
    }

    public Set<T> asSet()
    {
      return Collections.singleton(this.reference);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Present))
      {
        Present localPresent = (Present)paramObject;
        return this.reference.equals(localPresent.reference);
      }
      return false;
    }

    public T get()
    {
      return this.reference;
    }

    public int hashCode()
    {
      return 1502476572 + this.reference.hashCode();
    }

    public boolean isPresent()
    {
      return true;
    }

    public Optional<T> or(Optional<? extends T> paramOptional)
    {
      Preconditions.checkNotNull(paramOptional);
      return this;
    }

    public T or(Supplier<? extends T> paramSupplier)
    {
      Preconditions.checkNotNull(paramSupplier);
      return this.reference;
    }

    public T or(T paramT)
    {
      Preconditions.checkNotNull(paramT, "use orNull() instead of or(null)");
      return this.reference;
    }

    public T orNull()
    {
      return this.reference;
    }

    public String toString()
    {
      return "Optional.of(" + this.reference + ")";
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Optional
 * JD-Core Version:    0.6.2
 */