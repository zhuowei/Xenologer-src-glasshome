package com.google.glass.hidden;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MethodInvoker
{
  private static final String TAG = "HiddenMethodInvoker";
  private Class<?>[] argTypes;
  private Object instance;
  private Exception lastException;
  private Method method;
  private String methodName;

  public MethodInvoker(Object paramObject, String paramString)
  {
    this(paramObject, paramString, (Class[])null);
  }

  public MethodInvoker(Object paramObject, String paramString, Class<?> paramClass)
  {
    this(paramObject, paramString, new Class[] { paramClass });
  }

  public MethodInvoker(Object paramObject, String paramString, Class<?>[] paramArrayOfClass)
  {
    this.instance = paramObject;
    this.methodName = paramString;
    this.argTypes = paramArrayOfClass;
    try
    {
      findMethod();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e("HiddenMethodInvoker", "Can't find the method: " + paramString + " in instance: " + paramObject, localNoSuchMethodException);
    }
  }

  private void clearLastException()
  {
    this.lastException = null;
  }

  private void ensureValidMethod()
    throws NoSuchMethodException
  {
    if (!isMethodValid())
    {
      Log.e("HiddenMethodInvoker", "invoke() called without a valid method!");
      throw new NoSuchMethodException("Didn't bind to method: " + this.methodName + " on instance:" + this.instance);
    }
  }

  private boolean findMethod()
    throws NoSuchMethodException
  {
    if (this.instance == null)
    {
      Log.e("HiddenMethodInvoker", "findMethod() cannot find method named: " + this.methodName + " on a null instance.");
      return false;
    }
    if ((this.instance instanceof Class))
    {
      this.method = ((Class)this.instance).getMethod(this.methodName, this.argTypes);
      if (this.method == null)
        break label110;
    }
    label110: for (boolean bool = true; ; bool = false)
    {
      return bool;
      this.method = this.instance.getClass().getMethod(this.methodName, this.argTypes);
      break;
    }
  }

  private void handleInvocationError(Exception paramException, Object[] paramArrayOfObject)
  {
    this.lastException = paramException;
    StringBuilder localStringBuilder = new StringBuilder(1024);
    localStringBuilder.append("Caught exception invoking method: ").append(this.methodName);
    localStringBuilder.append(" on instance=").append(this.instance);
    localStringBuilder.append(" Args= [\n");
    if (paramArrayOfObject != null)
    {
      int i = 0;
      if (i < paramArrayOfObject.length)
      {
        Object localObject = paramArrayOfObject[i];
        if (localObject == null);
        for (String str = "null"; ; str = localObject.toString())
        {
          localStringBuilder.append(str).append("\n");
          i++;
          break;
        }
      }
    }
    localStringBuilder.append("]\n");
    Log.e("HiddenMethodInvoker", localStringBuilder.toString(), paramException);
  }

  public Exception getLastInvocationException()
  {
    return this.lastException;
  }

  public Object invoke(Object[] paramArrayOfObject)
  {
    clearLastException();
    try
    {
      ensureValidMethod();
      Object localObject = this.method.invoke(this.instance, paramArrayOfObject);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      handleInvocationError(localIllegalArgumentException, paramArrayOfObject);
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      handleInvocationError(localIllegalAccessException, paramArrayOfObject);
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      handleInvocationError(localInvocationTargetException, paramArrayOfObject);
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      handleInvocationError(localNoSuchMethodException, paramArrayOfObject);
    }
    return null;
  }

  public boolean isMethodValid()
  {
    return this.method != null;
  }

  public boolean wasExceptionOnLastInvocation()
  {
    return this.lastException != null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.MethodInvoker
 * JD-Core Version:    0.6.2
 */