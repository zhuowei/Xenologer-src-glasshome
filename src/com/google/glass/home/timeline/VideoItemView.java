package com.google.glass.home.timeline;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.id;
import com.google.glass.home.R.integer;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.googlex.glass.common.proto.Attachment;
import java.util.concurrent.TimeUnit;

public class VideoItemView extends FrameLayout
  implements HorizontalScrollItem
{
  private static final long START_DELAY_MS = TimeUnit.SECONDS.toMillis(1L);
  private static final String TAG = VideoItemView.class.getSimpleName();
  private CachedBitmapFactory bitmapFactory;
  private final Runnable playVideoRunnable = new Runnable()
  {
    public void run()
    {
      if ((VideoItemView.this.videoPlayer != null) && (VideoItemView.this.videoAttachment != null))
      {
        Log.d(VideoItemView.TAG, "Playing video: " + VideoItemView.this.videoAttachment);
        VideoItemView.this.videoPlayer.play();
      }
    }
  };
  private Attachment videoAttachment;
  private VideoPlayer videoPlayer;

  public VideoItemView(Context paramContext)
  {
    super(paramContext);
  }

  public VideoItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public VideoItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private VideoPlayer createVideoPlayer(final TextureView paramTextureView, final FrameLayout paramFrameLayout, CachedBitmapFactory paramCachedBitmapFactory, Attachment paramAttachment)
  {
    return new VideoPlayer(paramTextureView, paramCachedBitmapFactory, new VideoPlayerListener()
    {
      public void onVideoPlaybackStarted()
      {
        Assert.assertUiThread();
        Log.v(VideoItemView.TAG, "Video playback started.");
        int i = VideoItemView.this.getResources().getInteger(R.integer.play_video_fade_duration_ms);
        paramFrameLayout.setAlpha(1.0F);
        paramFrameLayout.animate().alpha(0.0F).setDuration(i).setListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            VideoItemView.2.this.val$nonVideoView.setVisibility(8);
          }
        }).start();
      }

      public void onVideoPlaybackStopped()
      {
        Assert.assertUiThread();
        Log.v(VideoItemView.TAG, "Video playback stopped.");
        int i = VideoItemView.this.getResources().getInteger(R.integer.play_video_fade_duration_ms);
        paramFrameLayout.setAlpha(0.0F);
        paramFrameLayout.setVisibility(0);
        paramFrameLayout.animate().alpha(1.0F).setDuration(i).setListener(null).start();
        paramTextureView.setKeepScreenOn(false);
      }
    }
    , paramAttachment);
  }

  private void startVideo()
  {
    if ((this.videoPlayer == null) && (this.videoAttachment != null))
    {
      TextureView localTextureView = (TextureView)findViewById(R.id.video);
      this.videoPlayer = createVideoPlayer(localTextureView, (FrameLayout)findViewById(R.id.non_video), this.bitmapFactory, this.videoAttachment);
      removeCallbacks(this.playVideoRunnable);
      postDelayed(this.playVideoRunnable, START_DELAY_MS);
      localTextureView.setKeepScreenOn(true);
    }
  }

  private void stopVideo()
  {
    removeCallbacks(this.playVideoRunnable);
    if (this.videoPlayer != null)
    {
      this.videoPlayer.stop();
      this.videoPlayer = null;
      ((TextureView)findViewById(R.id.video)).setKeepScreenOn(false);
    }
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
    if (isShown())
      startVideo();
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
    stopVideo();
  }

  public void setVideoAttachment(Attachment paramAttachment, CachedBitmapFactory paramCachedBitmapFactory)
  {
    this.videoAttachment = paramAttachment;
    this.bitmapFactory = paramCachedBitmapFactory;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.VideoItemView
 * JD-Core Version:    0.6.2
 */