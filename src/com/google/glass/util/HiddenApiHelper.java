package com.google.glass.util;

import android.app.admin.DevicePolicyManager;
import android.app.backup.BackupManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.media.MediaRecorder;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.DynamicLayout;
import android.util.Log;
import android.view.Surface;
import android.widget.TextView;
import com.google.glass.hidden.MethodInvoker;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;

public class HiddenApiHelper
{
  private static final String GLASS_GESTURE_SERVICE_FIELD_NAME = "GLASS_GESTURE_SERVICE";
  private static final String TAG = HiddenApiHelper.class.getSimpleName();

  public static void activateGazeServiceLogging(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "activateGazeLogging", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static boolean beginDonDoffCalibrationInterval(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "beginDonDoffCalibrationInterval").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static Object beginRestoreSession(Object paramObject, String paramString1, String paramString2)
  {
    try
    {
      Object localObject = paramObject.getClass().getDeclaredMethod("beginRestoreSession", new Class[] { String.class, String.class }).invoke(paramObject, new Object[] { null, null });
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to start restore session, pkg=" + paramString1 + ", transport=" + paramString2, localIllegalArgumentException);
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to start restore session, pkg=" + paramString1 + ", transport=" + paramString2, localInvocationTargetException);
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to start restore session, pkg=" + paramString1 + ", transport=" + paramString2, localNoSuchMethodException);
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to start restore session, pkg=" + paramString1 + ", transport=" + paramString2, localIllegalAccessException);
    }
    return null;
  }

  public static boolean clearDonDoffCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "clearDonDoffCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean clearEyeCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "clearEyeCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean doesGlassGestureServiceExist(Context paramContext)
  {
    return getGlassGestureService(paramContext) != null;
  }

  public static boolean enableDonDoff(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "enableDonDoff", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    Boolean localBoolean = (Boolean)localMethodInvoker.invoke(arrayOfObject);
    return (localBoolean != null) && (localBoolean.booleanValue());
  }

  public static void enableDoubleWinkDetector(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "enableDoubleWinkDetector", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static void enableGazeService(Context paramContext, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    Log.d(TAG, "enableGazeService called: enable=" + paramBoolean);
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "enableGazeService", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static void enableGazeServiceGuestMode(Context paramContext, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    Log.d(TAG, "enableGazeServiceGuestMode called: enable=" + paramBoolean);
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "enableGazeServiceGuestMode", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static void enableHeadGesture(Context paramContext, String paramString, boolean paramBoolean)
  {
    Object localObject = getGlassGestureService(paramContext);
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = String.class;
    arrayOfClass[1] = Boolean.TYPE;
    MethodInvoker localMethodInvoker = new MethodInvoker(localObject, "enableHeadGesture", arrayOfClass);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static boolean enableWinkDetector(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "enableWinkDetector", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    Boolean localBoolean = (Boolean)localMethodInvoker.invoke(arrayOfObject);
    return (localBoolean != null) && (localBoolean.booleanValue());
  }

  public static boolean endDonDoffCalibrationInterval(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "endDonDoffCalibrationInterval").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean endEyeCalibrationInterval(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "endEyeCalibrationInterval").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static void endRestoreSession(Object paramObject)
  {
    try
    {
      paramObject.getClass().getDeclaredMethod("endRestoreSession", new Class[0]).invoke(paramObject, new Object[0]);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to end restore session.", localIllegalArgumentException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to end restore session.", localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to end restore session.", localNoSuchMethodException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to end restore session.", localIllegalAccessException);
    }
  }

  public static void forceGlasshubResetHack(Context paramContext)
  {
    Assert.assertNotUiThread();
    Log.d(TAG, "forceGlasshubResetHack() called!  NOTE: A reboot is required!");
    new MethodInvoker(getGlassGestureService(paramContext), "forceGlasshubResetHack").invoke(new Object[0]);
  }

  public static int getAvailableRestoreSets(Object paramObject1, Object paramObject2)
  {
    try
    {
      Class localClass1 = Class.forName("android.app.backup.GlassRestoreObserver");
      Class localClass2 = Class.forName("android.app.backup.IRestoreObserver");
      Constructor localConstructor = localClass1.getDeclaredConstructor(new Class[] { Class.forName("android.app.backup.GlassRestoreObserver$GlassRestoreSetListener") });
      localConstructor.setAccessible(true);
      Object localObject = localConstructor.newInstance(new Object[] { paramObject2 });
      int i = ((Integer)paramObject1.getClass().getDeclaredMethod("getAvailableRestoreSets", new Class[] { localClass2 }).invoke(paramObject1, new Object[] { localObject })).intValue();
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to get available restore sets.", localIllegalArgumentException);
      return -1;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localInvocationTargetException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localNoSuchMethodException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localIllegalAccessException);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localInstantiationException);
    }
  }

  public static Object getBackupManager()
  {
    try
    {
      Method localMethod = BackupManager.class.getDeclaredMethod("checkServiceBinder", new Class[0]);
      localMethod.setAccessible(true);
      localMethod.invoke(null, new Object[0]);
      Field localField = BackupManager.class.getDeclaredField("sService");
      localField.setAccessible(true);
      Object localObject = localField.get(null);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to get IBackupManager.", localIllegalArgumentException);
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to get IBackupManager.", localInvocationTargetException);
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.e(TAG, "Unable to get IBackupManager.", localNoSuchFieldException);
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to get IBackupManager.", localNoSuchMethodException);
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to get IBackupManager.", localIllegalAccessException);
    }
    return null;
  }

  public static String getConnectivityManagerExtraInetCondition()
  {
    return getConstantFromClass("EXTRA_INET_CONDITION", ConnectivityManager.class);
  }

  public static String getConnectivityManagerInetConditionAction()
  {
    return getConstantFromClass("INET_CONDITION_ACTION", ConnectivityManager.class);
  }

  public static String getConnectivityManagerTetherStateChangedAction()
  {
    return getConstantFromClass("ACTION_TETHER_STATE_CHANGED", ConnectivityManager.class);
  }

  private static String getConstantFromClass(String paramString, Class<?> paramClass)
  {
    try
    {
      String str = (String)paramClass.getDeclaredField(paramString).get(null);
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to get " + paramString + " from " + paramClass.getSimpleName(), localIllegalAccessException);
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.e(TAG, "Unable to get " + paramString + " from " + paramClass.getSimpleName(), localNoSuchFieldException);
    }
    return null;
  }

  private static Object getGlassGestureService(Context paramContext)
  {
    String str = getConstantFromClass("GLASS_GESTURE_SERVICE", Context.class);
    if (str == null)
      return null;
    return paramContext.getSystemService(str);
  }

  public static String getIntentExtraKeyConfirm()
  {
    return getConstantFromClass("EXTRA_KEY_CONFIRM", Intent.class);
  }

  public static int getNumWinksInLastCalibrationInterval(Context paramContext)
  {
    Integer localInteger = (Integer)new MethodInvoker(getGlassGestureService(paramContext), "getNumWinksInLastCalibrationInterval").invoke(new Object[0]);
    int i = 0;
    if (localInteger != null)
      i = localInteger.intValue();
    return i;
  }

  private static <FieldType, ClassType> FieldType getPrivateField(String paramString, Class<ClassType> paramClass, ClassType paramClassType)
  {
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      localField.setAccessible(true);
      Object localObject = localField.get(paramClassType);
      return localObject;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.e(TAG, "Unable to get " + paramString + " from " + paramClass.getSimpleName(), localNoSuchFieldException);
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to get " + paramString + " from " + paramClass.getSimpleName(), localIllegalArgumentException);
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to get " + paramString + " from " + paramClass.getSimpleName(), localIllegalAccessException);
    }
    return null;
  }

  public static String getSystemProperty(String paramString1, String paramString2)
  {
    try
    {
      String str = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString1 });
      return str;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e(TAG, "Unable to get string system property '" + paramString1 + "'. Using default value '" + paramString2 + "'", localClassNotFoundException);
      return paramString2;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to get string system property '" + paramString1 + "'. Using default value '" + paramString2 + "'", localNoSuchMethodException);
      return paramString2;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to get string system property '" + paramString1 + "'. Using default value '" + paramString2 + "'", localInvocationTargetException);
      return paramString2;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to get string system property '" + paramString1 + "'. Using default value '" + paramString2 + "'", localIllegalAccessException);
    }
    return paramString2;
  }

  public static boolean getTextViewIncludeFontPadding(TextView paramTextView)
  {
    return ((Boolean)getPrivateField("mIncludePad", TextView.class, paramTextView)).booleanValue();
  }

  public static float getTextViewLineSpacingExtra(TextView paramTextView)
  {
    return ((Float)getPrivateField("mSpacingAdd", TextView.class, paramTextView)).floatValue();
  }

  public static float getTextViewLineSpacingMultiplier(TextView paramTextView)
  {
    return ((Float)getPrivateField("mSpacingMult", TextView.class, paramTextView)).floatValue();
  }

  public static int getTotalNumCalibrationWinks(Context paramContext)
  {
    Integer localInteger = (Integer)new MethodInvoker(getGlassGestureService(paramContext), "getTotalNumCalibrationWinks").invoke(new Object[0]);
    int i = 0;
    if (localInteger != null)
      i = localInteger.intValue();
    return i;
  }

  public static void goToSleepWithGesture(Context paramContext)
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      Method localMethod = PowerManager.class.getMethod("goToSleepWithReason", arrayOfClass);
      PowerManager localPowerManager = (PowerManager)paramContext.getSystemService("power");
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(SystemClock.uptimeMillis());
      arrayOfObject[1] = Integer.valueOf(5);
      localMethod.invoke(localPowerManager, arrayOfObject);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to call goToSleepWithReason", localNoSuchMethodException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to call goToSleepWithReason", localInvocationTargetException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to call goToSleepWithReason", localIllegalAccessException);
    }
  }

  public static boolean isDonDoffDetectorEnabled(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isDonDoffEnabled").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isDoubleWinkDetectorRunning(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isDoubleWinkDetectorRunning").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isGazeServiceGuestMode(Context paramContext)
  {
    Log.d(TAG, "isGazeServiceGuestMode called...");
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isGazeServiceGuestMode").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isGazeServiceLogging(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isGazeLogging").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isGlobalLookUpGestureEnabled(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isGlobalLookUpGestureEnabled").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isWinkDetectorRunning(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "isWinkDetectorRunning").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean loadDonDoffCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "loadDonDoffCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean loadEyeCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "loadEyeCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean needMoreCalibrationWinks(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "needMoreCalibrationWinks").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static Object newGlassRestoreSetListenerInstance(InvocationHandler paramInvocationHandler)
  {
    try
    {
      Class localClass = Class.forName("android.app.backup.GlassRestoreObserver$GlassRestoreSetListener");
      Object localObject = Proxy.newProxyInstance(localClass.getClassLoader(), new Class[] { localClass }, paramInvocationHandler);
      return localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e(TAG, "Unable to find GlassRestoreObserver class.", localClassNotFoundException);
    }
    return null;
  }

  public static boolean previewEnabled(Camera paramCamera)
  {
    try
    {
      boolean bool = ((Boolean)Camera.class.getMethod("previewEnabled", new Class[0]).invoke(paramCamera, new Object[0])).booleanValue();
      return bool;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to call previewEnabled", localNoSuchMethodException);
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to call previewEnabled", localInvocationTargetException);
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to call previewEnabled", localIllegalAccessException);
    }
    return false;
  }

  public static void reflow(DynamicLayout paramDynamicLayout, CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = CharSequence.class;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = Integer.TYPE;
      arrayOfClass[3] = Integer.TYPE;
      Method localMethod = DynamicLayout.class.getDeclaredMethod("reflow", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = paramCharSequence;
      arrayOfObject[1] = Integer.valueOf(paramInt1);
      arrayOfObject[2] = Integer.valueOf(paramInt2);
      arrayOfObject[3] = Integer.valueOf(paramInt3);
      localMethod.invoke(paramDynamicLayout, arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to reflow " + paramDynamicLayout, localIllegalArgumentException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to reflow " + paramDynamicLayout, localIllegalAccessException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to reflow " + paramDynamicLayout, localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to reflow " + paramDynamicLayout, localNoSuchMethodException);
    }
  }

  public static boolean reloadSupplicantConfiguration(WifiManager paramWifiManager)
  {
    try
    {
      boolean bool = ((Boolean)paramWifiManager.getClass().getDeclaredMethod("reloadConfiguration", new Class[0]).invoke(paramWifiManager, new Object[0])).booleanValue();
      return bool;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to reload wpa_supplicant configuration.", localIllegalArgumentException);
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e(TAG, "Unable to reload wpa_supplicant configuration.", localInvocationTargetException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        Log.e(TAG, "Unable to reload wpa_supplicant configuration.", localNoSuchMethodException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e(TAG, "Unable to reload wpa_supplicant configuration.", localIllegalAccessException);
    }
  }

  public static int restoreSome(Object paramObject1, Object paramObject2, long paramLong, String[] paramArrayOfString)
  {
    try
    {
      Class localClass1 = Class.forName("android.app.backup.GlassRestoreObserver");
      Class localClass2 = Class.forName("android.app.backup.IRestoreObserver");
      Constructor localConstructor = localClass1.getDeclaredConstructor(new Class[] { Class.forName("android.app.backup.GlassRestoreObserver$GlassRestoreSetListener") });
      localConstructor.setAccessible(true);
      Object localObject = localConstructor.newInstance(new Object[] { paramObject2 });
      Class localClass3 = paramObject1.getClass();
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = localClass2;
      arrayOfClass[2] = [Ljava.lang.String.class;
      Method localMethod = localClass3.getDeclaredMethod("restoreSome", arrayOfClass);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Long.valueOf(paramLong);
      arrayOfObject[1] = localObject;
      arrayOfObject[2] = paramArrayOfString;
      int i = ((Integer)localMethod.invoke(paramObject1, arrayOfObject)).intValue();
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to get available restore sets.", localIllegalArgumentException);
      return -1;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localInvocationTargetException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localNoSuchMethodException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localIllegalAccessException);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        Log.e(TAG, "Unable to get available restore sets.", localInstantiationException);
    }
  }

  public static boolean saveEyeCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "saveEyeCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static Bitmap screenshot(int paramInt1, int paramInt2)
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Integer.TYPE;
    MethodInvoker localMethodInvoker = new MethodInvoker(Surface.class, "screenshot", arrayOfClass);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    return (Bitmap)localMethodInvoker.invoke(arrayOfObject);
  }

  public static Bitmap screenshot(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    Class[] arrayOfClass = new Class[3];
    arrayOfClass[0] = Bitmap.class;
    arrayOfClass[1] = Integer.TYPE;
    arrayOfClass[2] = Integer.TYPE;
    MethodInvoker localMethodInvoker = new MethodInvoker(Surface.class, "screenshot", arrayOfClass);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramBitmap;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    return (Bitmap)localMethodInvoker.invoke(arrayOfObject);
  }

  public static void selectBackupTransport(Object paramObject, String paramString)
  {
    try
    {
      paramObject.getClass().getDeclaredMethod("selectBackupTransport", new Class[] { String.class }).invoke(paramObject, new Object[] { paramString });
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to set backup transport to " + paramString, localIllegalArgumentException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to set backup transport to " + paramString, localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to set backup transport to " + paramString, localNoSuchMethodException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to set backup transport to " + paramString, localIllegalAccessException);
    }
  }

  public static void setActiveAdmin(DevicePolicyManager paramDevicePolicyManager, ComponentName paramComponentName, boolean paramBoolean)
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = ComponentName.class;
      arrayOfClass[1] = Boolean.TYPE;
      Method localMethod = DevicePolicyManager.class.getMethod("setActiveAdmin", arrayOfClass);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramComponentName;
      arrayOfObject[1] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(paramDevicePolicyManager, arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to enable " + paramComponentName, localIllegalArgumentException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to enable " + paramComponentName, localIllegalAccessException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to enable " + paramComponentName, localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to enable " + paramComponentName, localNoSuchMethodException);
    }
  }

  public static void setBackupEnabled(Object paramObject, boolean paramBoolean)
  {
    try
    {
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getDeclaredMethod("setBackupEnabled", arrayOfClass);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(paramObject, arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to set backups enabled to " + paramBoolean, localIllegalArgumentException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to set backups enabled to " + paramBoolean, localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to set backups enabled to " + paramBoolean, localNoSuchMethodException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to set backups enabled to " + paramBoolean, localIllegalAccessException);
    }
  }

  public static void setDefaultExecutor(Executor paramExecutor)
  {
    try
    {
      AsyncTask.class.getMethod("setDefaultExecutor", new Class[] { Executor.class }).invoke(AsyncTask.class, new Object[] { paramExecutor });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to setDefaultExecutor", localNoSuchMethodException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to setDefaultExecutor", localInvocationTargetException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to setDefaultExecutor", localIllegalAccessException);
    }
  }

  public static void setGlobalLookUpEnabled(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(getGlassGestureService(paramContext), "setGlobalLookUpGestureEnabled", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static boolean setGlobalLookUpGestureParameters(Context paramContext, float paramFloat1, float paramFloat2)
  {
    Object localObject = getGlassGestureService(paramContext);
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Float.TYPE;
    arrayOfClass[1] = Float.TYPE;
    MethodInvoker localMethodInvoker = new MethodInvoker(localObject, "setGlobalLookUpGestureParameters", arrayOfClass);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Float.valueOf(paramFloat1);
    arrayOfObject[1] = Float.valueOf(paramFloat2);
    Boolean localBoolean = (Boolean)localMethodInvoker.invoke(arrayOfObject);
    return (localBoolean != null) && (localBoolean.booleanValue());
  }

  public static void setSurfaceTexture(MediaRecorder paramMediaRecorder, SurfaceTexture paramSurfaceTexture)
  {
    try
    {
      Method localMethod = MediaRecorder.class.getDeclaredMethod("setSurfaceTexture", new Class[] { SurfaceTexture.class });
      localMethod.setAccessible(true);
      localMethod.invoke(paramMediaRecorder, new Object[] { paramSurfaceTexture });
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Unable to setSurfaceTexture " + paramMediaRecorder, localIllegalArgumentException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e(TAG, "Unable to setSurfaceTexture " + paramMediaRecorder, localIllegalAccessException);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e(TAG, "Unable to setSurfaceTexture " + paramMediaRecorder, localInvocationTargetException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e(TAG, "Unable to setSurfaceTexture " + paramMediaRecorder, localNoSuchMethodException);
    }
  }

  public static boolean startEyeCalibrationInterval(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "startEyeCalibrationInterval").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean updateAndSaveDonDoffCalibration(Context paramContext)
  {
    Boolean localBoolean = (Boolean)new MethodInvoker(getGlassGestureService(paramContext), "updateAndSaveDonDoffCalibration").invoke(new Object[0]);
    boolean bool1 = false;
    if (localBoolean != null)
    {
      boolean bool2 = localBoolean.booleanValue();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HiddenApiHelper
 * JD-Core Version:    0.6.2
 */