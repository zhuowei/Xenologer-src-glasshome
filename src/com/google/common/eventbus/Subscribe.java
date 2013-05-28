package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
@Beta
public @interface Subscribe
{
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.Subscribe
 * JD-Core Version:    0.6.2
 */