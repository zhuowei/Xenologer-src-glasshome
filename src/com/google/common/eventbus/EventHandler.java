package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class EventHandler
{
  private final Method method;
  private final Object target;

  EventHandler(Object paramObject, Method paramMethod)
  {
    Preconditions.checkNotNull(paramObject, "EventHandler target cannot be null.");
    Preconditions.checkNotNull(paramMethod, "EventHandler method cannot be null.");
    this.target = paramObject;
    this.method = paramMethod;
    paramMethod.setAccessible(true);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    EventHandler localEventHandler;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localEventHandler = (EventHandler)paramObject;
    }
    while ((this.method.equals(localEventHandler.method)) && (this.target == localEventHandler.target));
    return false;
  }

  public void handleEvent(Object paramObject)
    throws InvocationTargetException
  {
    try
    {
      this.method.invoke(this.target, new Object[] { paramObject });
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new Error("Method rejected target/argument: " + paramObject, localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new Error("Method became inaccessible: " + paramObject, localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof Error))
        throw ((Error)localInvocationTargetException.getCause());
      throw localInvocationTargetException;
    }
  }

  public int hashCode()
  {
    return 31 * (31 + this.method.hashCode()) + this.target.hashCode();
  }

  public String toString()
  {
    return "[wrapper " + this.method + "]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.EventHandler
 * JD-Core Version:    0.6.2
 */