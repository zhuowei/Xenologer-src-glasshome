package com.google.glass.home.search;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.google.glass.home.R.drawable;
import com.google.glass.voice.network.VoiceSearchUi.SpeechLevelSource;
import java.util.Timer;
import java.util.TimerTask;

public class BitmapSoundLevelsView extends View
{
  private static final boolean DEBUG;
  private static final String TAG = BitmapSoundLevelsView.class.getSimpleName();
  private int currentVolume;
  private Rect destRect = new Rect();
  private final Paint emptyPaint = new Paint();
  private final Matrix identityMatrix = new Matrix();
  private final Runnable invalidateRunnable = new Runnable()
  {
    public void run()
    {
      BitmapSoundLevelsView.this.invalidate();
    }
  };
  private boolean isTimerCancelled;
  private int levelSize = this.primaryLevel.getWidth();
  private VoiceSearchUi.SpeechLevelSource levelSource;
  private Bitmap maxPrimaryLevel;
  private Bitmap maxTrailLevel;
  private int peakLevel;
  private int peakLevelCountDown;
  private final Bitmap primaryLevel = BitmapFactory.decodeResource(getResources(), R.drawable.voice_search_reactive_dark);
  private Timer timer;
  private TimerTask timerTask;
  private final Bitmap trailLevel = BitmapFactory.decodeResource(getResources(), R.drawable.voice_search_reactive_light);

  public BitmapSoundLevelsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public BitmapSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BitmapSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.emptyPaint.setFilterBitmap(true);
    this.timerTask = createTimerTask();
    this.timer = createTimer();
  }

  private Timer createTimer()
  {
    this.isTimerCancelled = false;
    return new Timer();
  }

  private TimerTask createTimerTask()
  {
    return new TimerTask()
    {
      public void run()
      {
        ((Activity)BitmapSoundLevelsView.this.getContext()).runOnUiThread(BitmapSoundLevelsView.this.invalidateRunnable);
      }
    };
  }

  private void drawLevel(Canvas paramCanvas, Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramBitmap2 != null))
    {
      paramCanvas.drawBitmap(paramBitmap2, this.identityMatrix, null);
      return;
    }
    this.destRect.set(paramInt1, paramInt1, paramInt1 + paramInt2, paramInt1 + paramInt2);
    paramCanvas.drawBitmap(paramBitmap1, null, this.destRect, this.emptyPaint);
  }

  private void startAnimator()
  {
    try
    {
      if (this.isTimerCancelled)
      {
        this.timer = createTimer();
        this.timerTask = createTimerTask();
      }
      if (this.timerTask.scheduledExecutionTime() <= 0L)
        this.timer.scheduleAtFixedRate(this.timerTask, 0L, 10L);
      return;
    }
    finally
    {
    }
  }

  private void stopAnimator()
  {
    try
    {
      this.timerTask.cancel();
      this.timer.cancel();
      this.isTimerCancelled = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void updateAnimatorState()
  {
    if (isEnabled())
    {
      startAnimator();
      return;
    }
    stopAnimator();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    updateAnimatorState();
  }

  protected void onDetachedFromWindow()
  {
    stopAnimator();
    super.onDetachedFromWindow();
  }

  public void onDraw(Canvas paramCanvas)
  {
    int i;
    if (isEnabled())
    {
      if (this.levelSource != null)
        break label176;
      i = 0;
      if (i <= this.peakLevel)
        break label189;
      this.peakLevel = i;
      this.peakLevelCountDown = 30;
      label35: if (i <= this.currentVolume)
        break label227;
    }
    label176: label189: label227: for (this.currentVolume += (i - this.currentVolume) / 2; ; this.currentVolume = ((int)(0.9F * this.currentVolume)))
    {
      if (this.trailLevel != null)
      {
        int m = (getWidth() - this.levelSize) * this.peakLevel / 100 + this.levelSize;
        int n = (getWidth() - m) / 2;
        drawLevel(paramCanvas, this.trailLevel, this.maxTrailLevel, n, m);
      }
      if (this.primaryLevel != null)
      {
        int j = (getWidth() - this.levelSize) * this.currentVolume / 100 + this.levelSize;
        int k = (getWidth() - j) / 2;
        drawLevel(paramCanvas, this.primaryLevel, this.maxPrimaryLevel, k, j);
      }
      return;
      i = this.levelSource.getSpeechLevel();
      break;
      if (this.peakLevelCountDown == 0)
      {
        this.peakLevel = Math.max(0, -5 + this.peakLevel);
        break label35;
      }
      this.peakLevelCountDown = (-1 + this.peakLevelCountDown);
      break label35;
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 <= 0) || (paramInt2 <= 0));
    do
    {
      return;
      if (this.primaryLevel != null)
        this.maxPrimaryLevel = Bitmap.createScaledBitmap(this.primaryLevel, paramInt1, paramInt2, true);
    }
    while (this.trailLevel == null);
    this.maxTrailLevel = Bitmap.createScaledBitmap(this.trailLevel, paramInt1, paramInt2, true);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      updateAnimatorState();
      return;
    }
    stopAnimator();
  }

  public void setEnabled(boolean paramBoolean)
  {
    if (paramBoolean == isEnabled())
    {
      Log.d(TAG, "Ignoring setEnabled call; already in requested state.");
      return;
    }
    super.setEnabled(paramBoolean);
    updateAnimatorState();
  }

  public void setLevelSource(VoiceSearchUi.SpeechLevelSource paramSpeechLevelSource)
  {
    this.levelSource = paramSpeechLevelSource;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.BitmapSoundLevelsView
 * JD-Core Version:    0.6.2
 */