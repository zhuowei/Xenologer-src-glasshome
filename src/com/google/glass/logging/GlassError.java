package com.google.glass.logging;

import android.content.Context;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;

public enum GlassError
{
  private static final String TAG = GlassError.class.getSimpleName();
  public final String name;
  public final Feedback.RecoveryAction recoveryAction;
  public final boolean shouldBugreport;
  public final boolean shouldScreenshot;
  public final String signature;
  public final String userEventData;

  static
  {
    MEM_HEAP_ERROR = new GlassError("MEM_HEAP_ERROR", 2, "@@@ ABORTING: HEAP MEMORY CORRUPTION", "Memory heap error", Feedback.RecoveryAction.SHOULD_CONTINUE, true, false, "12");
    HEAP_ADDR_ERROR = new GlassError("HEAP_ADDR_ERROR", 3, "@@@ ABORTING: INVALID HEAP ADDRESS", "Heap address error", Feedback.RecoveryAction.SHOULD_CONTINUE, true, false, "13");
    BLUETOOTH_MEM_HEAP_ERROR = new GlassError("BLUETOOTH_MEM_HEAP_ERROR", 4, ">>> com.google.glass.bluetooth <<<", "Bluetooth memory heap error", Feedback.RecoveryAction.SHOULD_REBOOT, false, false, null);
    GlassError[] arrayOfGlassError = new GlassError[5];
    arrayOfGlassError[0] = CAMERA_ERROR;
    arrayOfGlassError[1] = TOUCHPAD_ERROR;
    arrayOfGlassError[2] = MEM_HEAP_ERROR;
    arrayOfGlassError[3] = HEAP_ADDR_ERROR;
    arrayOfGlassError[4] = BLUETOOTH_MEM_HEAP_ERROR;
  }

  private GlassError(String paramString1, String paramString2, Feedback.RecoveryAction paramRecoveryAction, boolean paramBoolean1, boolean paramBoolean2, String paramString3)
  {
    this.signature = paramString1;
    this.name = paramString2;
    this.recoveryAction = paramRecoveryAction;
    this.shouldBugreport = paramBoolean1;
    this.shouldScreenshot = paramBoolean2;
    this.userEventData = paramString3;
  }

  public static void report(Context paramContext, GlassError paramGlassError)
  {
    Log.d(TAG, "Reporting error: " + paramGlassError.name);
    Feedback.show(paramContext, paramGlassError.name, paramGlassError.recoveryAction, paramGlassError.shouldBugreport, paramGlassError.shouldScreenshot, null);
    if (paramGlassError.userEventData != null)
      GlassApplication.from(paramContext).getUserEventHelper().log(UserEventAction.BUGREPORT_SENT, paramGlassError.userEventData);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.GlassError
 * JD-Core Version:    0.6.2
 */