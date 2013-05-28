package com.google.common.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.lang.model.element.Modifier;

@Documented
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.ANNOTATION_TYPE})
@GoogleInternal
public @interface RequiredModifiers
{
  public abstract Modifier[] value();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.annotations.RequiredModifiers
 * JD-Core Version:    0.6.2
 */