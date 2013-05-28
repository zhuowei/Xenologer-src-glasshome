package com.google.glass.home.timeline;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableSet;
import com.google.common.io.Files;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.SerialAsyncTask;
import com.google.googlex.glass.common.proto.Attachment;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

public class VideoPlayer
{
  private static final int MAX_STREAM_URL_LENGTH = 65536;
  private static final Executor PLAY_STOP_EXECUTOR = AsyncThreadExecutorManager.getSerialExecutor();
  private static final String TAG = VideoPlayer.class.getSimpleName();
  private static final Set<String> VALID_STREAM_URL_SCHEMES = ImmutableSet.of("http", "https", "rtsp");
  private final CachedBitmapFactory bitmapFactory;
  private final Set<SurfaceTexture> destroyedSurfaces = new HashSet();
  private final VideoPlayerListener listener;
  private SerialAsyncTask<Void, Void, Void> playRequest;
  private boolean shouldCallStartCallback;
  private boolean shouldStartPlayback;
  private final Attachment videoAttachment;
  private MediaPlayer videoPlayer;
  private final TextureView videoView;

  public VideoPlayer(TextureView paramTextureView, CachedBitmapFactory paramCachedBitmapFactory, VideoPlayerListener paramVideoPlayerListener, Attachment paramAttachment)
  {
    Assert.assertUiThread();
    this.videoView = paramTextureView;
    this.bitmapFactory = paramCachedBitmapFactory;
    this.listener = paramVideoPlayerListener;
    this.videoAttachment = paramAttachment;
  }

  private void playInternal()
  {
    Assert.assertUiThread();
    if (this.playRequest != null)
    {
      Log.v(TAG, "Already playing.");
      return;
    }
    this.playRequest = new SerialAsyncTask()
    {
      protected Void serialDoInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        if (isCancelled())
          return null;
        String str1 = VideoPlayer.this.bitmapFactory.getCachedAttachmentPath(VideoPlayer.this.videoAttachment, false);
        if (VideoPlayer.this.bitmapFactory.cacheContainsAttachment(VideoPlayer.this.videoAttachment))
          while (true)
          {
            try
            {
              if ("video/vnd.google-glass.stream-url".equals(VideoPlayer.this.videoAttachment.getContentType()))
              {
                str2 = VideoPlayer.readVideoStreamUrl(str1);
                if (str2 == null)
                  break;
                Log.v(VideoPlayer.TAG, "Setting video source to " + str2);
                VideoPlayer.this.videoPlayer.setDataSource(str2);
                VideoPlayer.this.videoPlayer.setLooping(false);
                VideoPlayer.this.videoPlayer.setAudioStreamType(3);
                VideoPlayer.this.videoPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
                {
                  public void onCompletion(MediaPlayer paramAnonymous2MediaPlayer)
                  {
                    Log.v(VideoPlayer.TAG, "Playback stopped after completion.");
                    VideoPlayer.this.listener.onVideoPlaybackStopped();
                  }
                });
                Log.v(VideoPlayer.TAG, "Preparing player.");
                VideoPlayer.this.videoPlayer.prepare();
                Log.v(VideoPlayer.TAG, "Starting playback.");
                VideoPlayer.this.videoPlayer.start();
                return null;
              }
            }
            catch (IOException localIOException)
            {
              Log.w(VideoPlayer.TAG, "Failed to start playback.", localIOException);
              return null;
            }
            String str2 = str1;
          }
        Log.w(VideoPlayer.TAG, "Failed to load video attachment: " + VideoPlayer.this.videoAttachment.getId());
        return null;
      }

      protected void serialOnPreExecute()
      {
        Assert.assertUiThread();
        if (!VideoPlayer.this.videoView.isAvailable())
        {
          cancel(false);
          return;
        }
        Assert.assertNull(VideoPlayer.this.videoPlayer);
        VideoPlayer.access$702(VideoPlayer.this, new MediaPlayer());
        VideoPlayer.access$002(VideoPlayer.this, true);
        Log.v(VideoPlayer.TAG, "Adding surface.");
        VideoPlayer.this.videoPlayer.setSurface(new Surface(VideoPlayer.this.videoView.getSurfaceTexture()));
      }
    };
    this.playRequest.executeOnExecutor(PLAY_STOP_EXECUTOR, new Void[0]);
  }

  @VisibleForTesting
  static String readVideoStreamUrl(String paramString)
  {
    File localFile = new File(paramString);
    if ((localFile.length() == 0L) || (localFile.length() > 65536L))
    {
      Log.w(TAG, "Could not read file of size " + localFile.length() + " as video URL: " + paramString);
      return null;
    }
    Uri localUri;
    try
    {
      String str = Files.readFirstLine(localFile, Charset.forName("utf8"));
      localUri = Uri.parse(str);
      if (!VALID_STREAM_URL_SCHEMES.contains(localUri.getScheme()))
      {
        Log.w(TAG, "Scheme '" + localUri.getScheme() + "' not supported for streaming.");
        return null;
      }
    }
    catch (IOException localIOException)
    {
      Log.w(TAG, "Unable to read video stream URL: " + paramString);
      return null;
    }
    return localUri.toString();
  }

  private void releaseDestroyedSurfaces()
  {
    Assert.assertUiThread();
    Iterator localIterator = this.destroyedSurfaces.iterator();
    while (localIterator.hasNext())
    {
      SurfaceTexture localSurfaceTexture = (SurfaceTexture)localIterator.next();
      Log.v(TAG, "Releasing surface.");
      localSurfaceTexture.release();
    }
    this.destroyedSurfaces.clear();
  }

  public void play()
  {
    Assert.assertUiThread();
    Log.v(TAG, "Play requested.");
    Assert.assertNull(this.playRequest);
    this.videoView.setVisibility(0);
    this.shouldCallStartCallback = false;
    this.videoView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener()
    {
      public void onSurfaceTextureAvailable(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Assert.assertUiThread();
        Log.v(VideoPlayer.TAG, "Surface texture available now.");
        if (VideoPlayer.this.shouldStartPlayback)
        {
          VideoPlayer.this.playInternal();
          VideoPlayer.access$502(VideoPlayer.this, false);
        }
      }

      public boolean onSurfaceTextureDestroyed(SurfaceTexture paramAnonymousSurfaceTexture)
      {
        Assert.assertUiThread();
        Log.v(VideoPlayer.TAG, "Surface destroyed.");
        VideoPlayer.this.destroyedSurfaces.add(paramAnonymousSurfaceTexture);
        VideoPlayer.this.videoView.setKeepScreenOn(false);
        return false;
      }

      public void onSurfaceTextureSizeChanged(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
      {
      }

      public void onSurfaceTextureUpdated(SurfaceTexture paramAnonymousSurfaceTexture)
      {
        Assert.assertUiThread();
        if (VideoPlayer.this.shouldCallStartCallback)
        {
          VideoPlayer.access$002(VideoPlayer.this, false);
          Log.v(VideoPlayer.TAG, "Playback started.");
          VideoPlayer.this.listener.onVideoPlaybackStarted();
        }
      }
    });
    if (this.videoView.isAvailable())
    {
      Log.v(TAG, "Surface texture already available.");
      this.shouldStartPlayback = false;
      playInternal();
      return;
    }
    this.shouldStartPlayback = true;
  }

  public void stop()
  {
    Assert.assertUiThread();
    Log.v(TAG, "Stop requested.");
    this.shouldStartPlayback = false;
    if (this.playRequest == null)
    {
      Log.v(TAG, "Already stopped.");
      return;
    }
    this.playRequest.cancel(false);
    this.playRequest = null;
    new SerialAsyncTask()
    {
      protected Boolean serialDoInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        if (isCancelled())
          return Boolean.valueOf(false);
        boolean bool1 = VideoPlayer.this.videoPlayer.isPlaying();
        boolean bool2 = false;
        if (bool1)
        {
          Log.v(VideoPlayer.TAG, "Stopping playback.");
          VideoPlayer.this.videoPlayer.stop();
          bool2 = true;
        }
        Log.v(VideoPlayer.TAG, "Removing surface.");
        VideoPlayer.this.videoPlayer.setSurface(null);
        Log.v(VideoPlayer.TAG, "Releasing player.");
        VideoPlayer.this.videoPlayer.release();
        return Boolean.valueOf(bool2);
      }

      protected void serialOnPostExecute(Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean.booleanValue())
        {
          Log.v(VideoPlayer.TAG, "Playback stopped after interruption.");
          VideoPlayer.this.listener.onVideoPlaybackStopped();
        }
        VideoPlayer.this.releaseDestroyedSurfaces();
        VideoPlayer.access$702(VideoPlayer.this, null);
      }

      protected void serialOnPreExecute()
      {
        if (VideoPlayer.this.videoPlayer == null)
        {
          Log.v(VideoPlayer.TAG, "Playback already stopped.");
          cancel(false);
        }
      }
    }
    .executeOnExecutor(PLAY_STOP_EXECUTOR, new Void[0]);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.VideoPlayer
 * JD-Core Version:    0.6.2
 */