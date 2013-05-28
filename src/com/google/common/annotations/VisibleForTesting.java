package com.google.common.annotations;

import java.lang.annotation.Annotation;

@GwtCompatible
public @interface VisibleForTesting
{
  @GoogleInternal
  public abstract Visibility productionVisibility();

  @GoogleInternal
  public static enum Visibility
  {
    static
    {
      PACKAGE_PRIVATE = new Visibility("PACKAGE_PRIVATE", 2);
      PROTECTED = new Visibility("PROTECTED", 3);
      Visibility[] arrayOfVisibility = new Visibility[4];
      arrayOfVisibility[0] = NONE;
      arrayOfVisibility[1] = PRIVATE;
      arrayOfVisibility[2] = PACKAGE_PRIVATE;
      arrayOfVisibility[3] = PROTECTED;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.annotations.VisibleForTesting
 * JD-Core Version:    0.6.2
 */