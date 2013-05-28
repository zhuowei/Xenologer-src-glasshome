package com.google.glass.barcode;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.view.TextureView;
import com.google.android.libraries.barhopper.Barcode;
import com.google.glass.app.GlassApplication;
import com.google.glass.camera.SharedCameraClient;
import com.google.glass.camera.SharedCameraConstants;
import com.google.glass.camera.SharedCameraService;
import com.google.glass.camera.SharedCameraService.SharedCamera;
import com.google.glass.camera.Size;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import java.util.concurrent.TimeUnit;

public class BarcodeScanner
{
  private static final String TAG = BarcodeScanner.class.getSimpleName();
  private BarcodeRecognizer barcodeRecognizer;
  private boolean bound;
  private final SharedCameraService.SharedCamera camera = new SharedCameraService.SharedCamera();
  private final SharedCameraClient cameraClient = new SharedCameraClient()
  {
    public String getTag()
    {
      return BarcodeScanner.TAG;
    }

    protected void onCameraError(String paramAnonymousString)
    {
      BarcodeScanner.this.listener.onError(BarcodeScanner.BarcodeError.CAMERA);
    }

    protected void onPreviewFrame(final byte[] paramAnonymousArrayOfByte, long paramAnonymousLong)
    {
      if (BarcodeScanner.this.shouldIgnorePreviewFrames);
      do
      {
        return;
        if (BarcodeScanner.this.previewFrameCount == 0)
          BarcodeScanner.access$202(BarcodeScanner.this, paramAnonymousLong);
      }
      while (BarcodeScanner.access$108(BarcodeScanner.this) % BarcodeScanner.this.cameraFrameModulus != 0);
      if (paramAnonymousLong - BarcodeScanner.this.firstPreviewFrameTimeNanos > BarcodeScanner.this.scanTimeoutNanos)
        BarcodeScanner.this.listener.onError(BarcodeScanner.BarcodeError.TIMEOUT);
      new AsyncTask()
      {
        protected Barcode doInBackground(Void[] paramAnonymous2ArrayOfVoid)
        {
          return BarcodeScanner.this.barcodeRecognizer.recognize(paramAnonymousArrayOfByte, this.val$previewSize.width, this.val$previewSize.height);
        }

        protected void onPostExecute(Barcode paramAnonymous2Barcode)
        {
          if (paramAnonymous2Barcode != null)
          {
            Log.d(BarcodeScanner.1.this.getTag(), "Recognized a barcode!");
            if (BarcodeScanner.this.listener.onBarcodeScanned(paramAnonymous2Barcode))
            {
              BarcodeScanner.this.stopScanning(true, paramAnonymous2Barcode);
              return;
            }
          }
          BarcodeScanner.access$002(BarcodeScanner.this, false);
        }

        protected void onPreExecute()
        {
          BarcodeScanner.access$002(BarcodeScanner.this, true);
        }
      }
      .execute(new Void[0]);
    }
  };
  private final int cameraFrameModulus;
  private final Context context;
  private long firstPreviewFrameTimeNanos;
  private final BarcodeScannerListener listener;
  private int previewFrameCount;
  private final long scanTimeoutNanos;
  private boolean scanning;
  private boolean shouldIgnorePreviewFrames;

  BarcodeScanner(Context paramContext, int paramInt, long paramLong, BarcodeScannerListener paramBarcodeScannerListener)
  {
    this.context = paramContext;
    this.cameraFrameModulus = paramInt;
    this.scanTimeoutNanos = paramLong;
    this.listener = paramBarcodeScannerListener;
  }

  private long getMillisSinceFirstPreview()
  {
    if (this.firstPreviewFrameTimeNanos == 0L)
      return 0L;
    return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.firstPreviewFrameTimeNanos);
  }

  private void log(UserEventAction paramUserEventAction, String paramString)
  {
    GlassApplication.from(this.context).getUserEventHelper().log(paramUserEventAction, paramString);
  }

  private void logFailure()
  {
    UserEventAction localUserEventAction = UserEventAction.BARCODE_FAILED_SCAN;
    Long localLong = Long.valueOf(getMillisSinceFirstPreview());
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "f";
    arrayOfObject[1] = Integer.valueOf(this.previewFrameCount);
    log(localUserEventAction, UserEventHelper.createEventTuple("m", localLong, arrayOfObject));
  }

  private void logSuccess(Barcode paramBarcode)
  {
    UserEventAction localUserEventAction = UserEventAction.BARCODE_SUCCESSFUL_SCAN;
    Long localLong = Long.valueOf(getMillisSinceFirstPreview());
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "f";
    arrayOfObject[1] = Integer.valueOf(this.previewFrameCount);
    arrayOfObject[2] = "s";
    arrayOfObject[3] = Integer.valueOf(paramBarcode.rawValue.length());
    arrayOfObject[4] = "b";
    arrayOfObject[5] = paramBarcode.getBoundingBox().flattenToString().replace(' ', ',');
    log(localUserEventAction, UserEventHelper.createEventTuple("m", localLong, arrayOfObject));
  }

  public static Builder newBuilder()
  {
    return new Builder(1, 9223372036854775807L);
  }

  private void stopScanning(boolean paramBoolean, Barcode paramBarcode)
  {
    if (this.scanning)
      if (paramBoolean)
        logSuccess(paramBarcode);
    while (true)
    {
      this.scanning = false;
      this.shouldIgnorePreviewFrames = true;
      this.camera.stopPreview(this.cameraClient);
      return;
      logFailure();
      continue;
      Log.w(TAG, "Duplicate stopScanning calls.");
    }
  }

  public void bindCamera(Context paramContext)
  {
    this.bound = true;
    paramContext.bindService(new Intent(paramContext, SharedCameraService.class), this.camera, 1);
  }

  protected void finalize()
    throws Throwable
  {
    if (this.bound)
      Log.e(TAG, "BarcodeScanner finalized while bound to camera service!");
    super.finalize();
  }

  public void setViewfinder(TextureView paramTextureView)
  {
    this.cameraClient.setViewfinder(paramTextureView);
  }

  public void startScanning()
  {
    if (!this.bound)
      throw new IllegalStateException("Cannot scan unless bound.");
    if (this.cameraClient.getViewfinder() == null)
      throw new IllegalStateException("Cannot scan without a viewfinder.");
    if (this.scanning)
      Log.w(TAG, "Duplicate startScanning calls.");
    this.scanning = true;
    this.barcodeRecognizer = new BarhopperRecognizer();
    this.previewFrameCount = 0;
    this.firstPreviewFrameTimeNanos = 0L;
    this.shouldIgnorePreviewFrames = false;
    this.camera.startPreview(this.cameraClient);
  }

  public void stopScanning()
  {
    stopScanning(false, null);
  }

  public void unbindCamera(Context paramContext)
  {
    paramContext.unbindService(this.camera);
    this.bound = false;
  }

  public static enum BarcodeError
  {
    static
    {
      CAMERA = new BarcodeError("CAMERA", 1);
      BarcodeError[] arrayOfBarcodeError = new BarcodeError[2];
      arrayOfBarcodeError[0] = TIMEOUT;
      arrayOfBarcodeError[1] = CAMERA;
    }
  }

  public static abstract interface BarcodeScannerListener
  {
    public abstract boolean onBarcodeScanned(Barcode paramBarcode);

    public abstract void onError(BarcodeScanner.BarcodeError paramBarcodeError);
  }

  public static class Builder
  {
    private final int cameraFrameModulus;
    private final long scanTimeoutNanos;

    Builder(int paramInt, long paramLong)
    {
      this.cameraFrameModulus = paramInt;
      this.scanTimeoutNanos = paramLong;
    }

    public BarcodeScanner build(Context paramContext, BarcodeScanner.BarcodeScannerListener paramBarcodeScannerListener)
    {
      return new BarcodeScanner(paramContext, this.cameraFrameModulus, this.scanTimeoutNanos, paramBarcodeScannerListener);
    }

    public Builder withCameraFrameModulus(int paramInt)
    {
      return new Builder(paramInt, this.scanTimeoutNanos);
    }

    public Builder withScanTimeoutNanos(long paramLong)
    {
      return new Builder(this.cameraFrameModulus, paramLong);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarcodeScanner
 * JD-Core Version:    0.6.2
 */