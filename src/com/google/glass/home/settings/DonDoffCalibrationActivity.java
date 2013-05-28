package com.google.glass.home.settings;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.VideoView;
import com.google.glass.app.GlassActivity;
import com.google.glass.gesture.EyeGestureUtils;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.raw;
import com.google.glass.home.R.string;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.IconProvider;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import java.util.concurrent.TimeUnit;

public class DonDoffCalibrationActivity extends GlassActivity
{
  private static final long MAXIMUM_CALIBRATION_TIME_MS = TimeUnit.SECONDS.toMillis(60L);
  private VideoView backgroundVideoView;
  private Runnable doCalibrationTimeout = new Runnable()
  {
    public void run()
    {
      DonDoffCalibrationActivity.this.showErrorDialogAndFinish(R.string.don_doff_calibration_failure);
    }
  };
  private Handler handler;
  private boolean isCalibrating;

  private boolean beginDonDoffCalibrationInterval()
  {
    Log.i(getTag(), "Begin don/doff calibration interval...");
    boolean bool = HiddenApiHelper.beginDonDoffCalibrationInterval(this);
    Log.i(getTag(), "... done beginning don/doff calibration interval!");
    this.isCalibrating = bool;
    return bool;
  }

  private boolean endDonDoffCalibrationInterval()
  {
    if (!this.isCalibrating)
      return true;
    Log.i(getTag(), "End don/doff calibration interval...");
    HiddenApiHelper.endDonDoffCalibrationInterval(this);
    Log.i(getTag(), "... done ending don/doff calibration interval!");
    return true;
  }

  private void pauseBackgroundVideo()
  {
    this.backgroundVideoView.pause();
  }

  private void showConfirmationMessageThenFinish()
  {
    stopCalibrationTimeoutClock();
    pauseBackgroundVideo();
    showMessage(new MessageDialog.Builder(this).setMessage(R.string.don_doff_calibrated_confirmation).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setListener(new MessageDialog.SimpleListener()
    {
      public void onDone()
      {
        DonDoffCalibrationActivity.this.finish();
      }
    }).build());
  }

  private void showErrorDialogAndFinish(int paramInt)
  {
    pauseBackgroundVideo();
    showMessage(new MessageDialog.Builder(this).setMessage(paramInt).setIcon(R.drawable.ic_warning_large).setSound(SoundManager.SoundId.ERROR, getSoundManager()).setListener(new MessageDialog.SimpleListener()
    {
      public void onDone()
      {
        DonDoffCalibrationActivity.this.finish();
      }
    }).build());
  }

  private void startBackgroundVideo()
  {
    this.backgroundVideoView.start();
  }

  private void startCalibrationTimeoutClock()
  {
    this.handler.postDelayed(this.doCalibrationTimeout, MAXIMUM_CALIBRATION_TIME_MS);
  }

  private void stopCalibrationTimeoutClock()
  {
    this.handler.removeCallbacks(this.doCalibrationTimeout);
  }

  private boolean updateAndSaveDonDoffCalibration()
  {
    Log.i(getTag(), "Update and save don/doff calibration data...");
    boolean bool = HiddenApiHelper.updateAndSaveDonDoffCalibration(this);
    Log.i(getTag(), "... done updating and save don/doff calibration data!");
    return bool;
  }

  public boolean onConfirm()
  {
    Log.i(getTag(), "End don doff calibration interval.");
    if (!endDonDoffCalibrationInterval())
    {
      Log.e(getTag(), "Failed to end don/doff calibration interval.");
      showErrorDialogAndFinish(R.string.don_doff_calibration_failure);
      return true;
    }
    if (!updateAndSaveDonDoffCalibration())
    {
      Log.e(getTag(), "Failed to update and save don doff calibration.");
      showErrorDialogAndFinish(R.string.don_doff_calibration_failure);
      return true;
    }
    if (!DonDoffSettingsItemView.setDonDoffDetectionEnabled(this, true))
    {
      Log.e(getTag(), "Failed to enable the don doff detector.");
      showErrorDialogAndFinish(R.string.don_doff_calibration_failure);
      return true;
    }
    getSoundManager().playSound(SoundManager.SoundId.TAP);
    showConfirmationMessageThenFinish();
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.handler = new Handler();
    this.backgroundVideoView = ((VideoView)findViewById(R.id.don_doff_background_video_view));
    this.backgroundVideoView.setVisibility(0);
    this.backgroundVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
    {
      public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
      {
        paramAnonymousMediaPlayer.setLooping(true);
      }
    });
    Uri localUri = Uri.parse(IconProvider.buildDrawableUri(this, R.raw.don_doff_background));
    this.backgroundVideoView.setVideoURI(localUri);
    this.isCalibrating = false;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    super.onDismiss(paramDismissAction);
    return true;
  }

  protected void onPause()
  {
    super.onPause();
    pauseBackgroundVideo();
    endDonDoffCalibrationInterval();
    stopCalibrationTimeoutClock();
  }

  protected void onResume()
  {
    super.onResume();
    EyeGestureUtils.enableGazeServiceAsync(this, true);
    Log.i(getTag(), "Starting don doff calibration interval...");
    this.isCalibrating = false;
    if (!beginDonDoffCalibrationInterval())
    {
      Log.e(getTag(), "Failed to start wink calibration interval.");
      showErrorDialogAndFinish(R.string.don_doff_calibration_failure);
      return;
    }
    startBackgroundVideo();
    startCalibrationTimeoutClock();
  }

  protected int provideContentView()
  {
    return R.layout.don_doff_calibration_activity;
  }

  protected boolean shouldAllowCameraButton()
  {
    return false;
  }

  protected boolean shouldAllowVoiceInput()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.DonDoffCalibrationActivity
 * JD-Core Version:    0.6.2
 */