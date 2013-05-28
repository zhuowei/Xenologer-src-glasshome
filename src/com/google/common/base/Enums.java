package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public final class Enums
{
  public static <T extends Enum<T>> Function<String, T> valueOfFunction(Class<T> paramClass)
  {
    return new ValueOfFunction(paramClass, null);
  }

  private static final class ValueOfFunction<T extends Enum<T>>
    implements Function<String, T>, Serializable
  {
    private static final long serialVersionUID;
    private final Class<T> enumClass;

    private ValueOfFunction(Class<T> paramClass)
    {
      this.enumClass = ((Class)Preconditions.checkNotNull(paramClass));
    }

    public T apply(String paramString)
    {
      try
      {
        Enum localEnum = Enum.valueOf(this.enumClass, paramString);
        return localEnum;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
      return null;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return ((paramObject instanceof ValueOfFunction)) && (this.enumClass.equals(((ValueOfFunction)paramObject).enumClass));
    }

    public int hashCode()
    {
      return this.enumClass.hashCode();
    }

    public String toString()
    {
      return "Enums.valueOf(" + this.enumClass + ")";
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Enums
 * JD-Core Version:    0.6.2
 */