package com.google.common.eventbus;

import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import java.lang.reflect.Method;

class AnnotatedHandlerFinder
  implements HandlerFindingStrategy
{
  private static EventHandler makeHandler(Object paramObject, Method paramMethod)
  {
    if (methodIsDeclaredThreadSafe(paramMethod))
      return new EventHandler(paramObject, paramMethod);
    return new SynchronizedEventHandler(paramObject, paramMethod);
  }

  private static boolean methodIsDeclaredThreadSafe(Method paramMethod)
  {
    return paramMethod.getAnnotation(AllowConcurrentEvents.class) != null;
  }

  public Multimap<Class<?>, EventHandler> findAllHandlers(Object paramObject)
  {
    HashMultimap localHashMultimap = HashMultimap.create();
    for (Class localClass = paramObject.getClass(); localClass != null; localClass = localClass.getSuperclass())
      for (Method localMethod : localClass.getMethods())
        if ((Subscribe)localMethod.getAnnotation(Subscribe.class) != null)
        {
          Class[] arrayOfClass = localMethod.getParameterTypes();
          if (arrayOfClass.length != 1)
            throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation, but requires " + arrayOfClass.length + " arguments.  Event handler methods " + "must require a single argument.");
          localHashMultimap.put(arrayOfClass[0], makeHandler(paramObject, localMethod));
        }
    return localHashMultimap;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.AnnotatedHandlerFinder
 * JD-Core Version:    0.6.2
 */