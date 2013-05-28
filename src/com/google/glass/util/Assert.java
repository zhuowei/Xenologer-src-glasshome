package com.google.glass.util;

import android.os.Looper;

public class Assert
{
  private static boolean isTest = false;

  public static void assertEquals(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 != paramObject2) && ((paramObject1 == null) || (paramObject2 == null) || (!paramObject1.equals(paramObject2))))
      throw new IllegalStateException("Expected to be equal: " + paramObject1 + " vs " + paramObject2);
  }

  public static void assertFalse(boolean paramBoolean)
  {
    if (paramBoolean)
      throw new IllegalStateException("Expected condition to be false.");
  }

  public static void assertIsTest()
  {
    if (!isTest)
      throw new IllegalStateException("This should only be called in tests.");
  }

  public static <T> T assertNotNull(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static <T> T assertNotNull(String paramString, T paramT)
  {
    if (paramT == null)
      throw new NullPointerException(paramString);
    return paramT;
  }

  public static void assertNotUiThread()
  {
    if ((!BuildHelper.isUser()) && (!isTest) && (Looper.getMainLooper().getThread() == Thread.currentThread()))
      throw new IllegalStateException("This should not be called on the UI thread.");
  }

  public static void assertNull(Object paramObject)
  {
    if (paramObject != null)
      throw new IllegalStateException("Expected null.");
  }

  public static void assertTrue(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException("Expected condition to be true.");
  }

  public static void assertUiThread()
  {
    if ((!BuildHelper.isUser()) && (!isTest) && (Looper.getMainLooper().getThread() != Thread.currentThread()))
      throw new IllegalStateException("This should be called on the UI thread.");
  }

  public static boolean isTest()
  {
    return isTest;
  }

  public static void setIsTest()
  {
    isTest = true;
  }

  public static void unsetIsTest()
  {
    isTest = false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Assert
 * JD-Core Version:    0.6.2
 */