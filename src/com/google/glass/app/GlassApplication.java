package com.google.glass.app;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Environment;
import android.speech.tts.UtteranceProgressListener;
import android.util.DisplayMetrics;
import android.util.LruCache;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.entity.EntityHelper;
import com.google.glass.location.GlassLocationManager;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.AndroidHttpRequestDispatcher;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.sound.SoundManager;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.FileSaver;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.TtsHelper;
import java.io.File;
import java.util.concurrent.Executor;

public class GlassApplication extends Application
{
  public static final String CACHED_FILES_DIRECTORY = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "glass_cached_files";
  private static final String DCIM_DIRECTORY = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + Environment.DIRECTORY_DCIM + File.separator + "Camera";
  private static final int MAX_BITMAP_CACHE_SIZE = 64;
  private static final int MAX_NUM_SDCARD_ATTACHMENTS = 10000;
  private static final long MAX_SIZE_SDCARD_FILES = 8589934592L;
  private static final int MAX_URL_CACHE_SIZE = 64;
  private static final String TAG = GlassApplication.class.getSimpleName();
  private CachedBitmapFactory bitmapFactory;
  private InetConnectionState connectionState;
  private LruCache<String, String> profileImageUrlCache;
  private ProtoRequestDispatcher requestDispatcher;
  private int screenHeightPixels;
  private int screenWidthPixels;
  private ProtoRequestDispatcher secondaryRequestDispatcher;
  private SoundManager soundManager;
  protected TtsHelper ttsHelper;
  private UserEventHelper userEventHelper;

  public static GlassApplication from(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if ((localContext instanceof GlassApplication))
      return (GlassApplication)localContext;
    throw new IllegalArgumentException("The context must be a child of the GlassApplication context.");
  }

  @VisibleForTesting
  public void clearLastTextSynthesized()
  {
    this.ttsHelper.clearLastTextSynthesized();
  }

  public CachedBitmapFactory getBitmapFactory()
  {
    return this.bitmapFactory;
  }

  public InetConnectionState getConnectionState()
  {
    return this.connectionState;
  }

  @VisibleForTesting
  public String getLastTextSynthesized()
  {
    return this.ttsHelper.getLastTextSynthesized();
  }

  protected int getMaxBitmapCacheSize()
  {
    return 64;
  }

  protected int getMaxUrlCacheSize()
  {
    return 64;
  }

  public LruCache<String, String> getProfileImageUrlCache()
  {
    return this.profileImageUrlCache;
  }

  public ProtoRequestDispatcher getRequestDispatcher()
  {
    return this.requestDispatcher;
  }

  public int getScreenHeightPixels()
  {
    return this.screenHeightPixels;
  }

  public int getScreenWidthPixels()
  {
    return this.screenWidthPixels;
  }

  public ProtoRequestDispatcher getSecondaryRequestDispatcher()
  {
    return this.secondaryRequestDispatcher;
  }

  public SoundManager getSoundManager()
  {
    return this.soundManager;
  }

  public UserEventHelper getUserEventHelper()
  {
    return this.userEventHelper;
  }

  public void onCreate()
  {
    super.onCreate();
    HiddenApiHelper.setDefaultExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
    this.ttsHelper = new TtsHelper(this);
    this.soundManager = new SoundManager(this);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.screenWidthPixels = localDisplayMetrics.widthPixels;
    this.screenHeightPixels = localDisplayMetrics.heightPixels;
    this.bitmapFactory = new CachedBitmapFactory(getApplicationContext(), this.screenWidthPixels, this.screenHeightPixels, getMaxBitmapCacheSize());
    this.profileImageUrlCache = new LruCache(getMaxUrlCacheSize());
    this.userEventHelper = new UserEventHelper(this);
    AndroidHttpRequestDispatcher localAndroidHttpRequestDispatcher = new AndroidHttpRequestDispatcher();
    this.requestDispatcher = new ProtoRequestDispatcher(getApplicationContext(), localAndroidHttpRequestDispatcher, true, MainThreadExecutorManager.getMainThreadExecutor());
    new Thread(this.requestDispatcher)
    {
    }
    .start();
    this.secondaryRequestDispatcher = new ProtoRequestDispatcher(getApplicationContext(), localAndroidHttpRequestDispatcher, true, MainThreadExecutorManager.getMainThreadExecutor());
    new Thread(this.secondaryRequestDispatcher)
    {
    }
    .start();
    this.connectionState = new InetConnectionState(this);
    GlassLocationManager.init(this);
    setupDcimFileWriter();
    setupCachedFilesManager();
    EntityHelper.setSharedInstance(new EntityHelper());
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        EntityHelper.getSharedInstance().loadEntityDataCache(GlassApplication.this);
      }
    });
    EntityHelper.getSharedInstance().registerSyncChanged(this);
  }

  @VisibleForTesting
  public void setConnectionStateForTest(InetConnectionState paramInetConnectionState)
  {
    Assert.assertIsTest();
    this.connectionState = paramInetConnectionState;
  }

  protected void setupCachedFilesManager()
  {
    CachedFilesManager.setSharedInstance(new CachedFilesManager(CACHED_FILES_DIRECTORY, 8589934592L, 10000));
  }

  protected void setupDcimFileWriter()
  {
    FileSaver.setSharedInstance(new FileSaver(DCIM_DIRECTORY));
  }

  public void speakText(String paramString)
  {
    this.ttsHelper.speakText(paramString);
  }

  public void speakText(String paramString, UtteranceProgressListener paramUtteranceProgressListener)
  {
    this.ttsHelper.speakText(paramString, paramUtteranceProgressListener);
  }

  public void stopSpeaking()
  {
    this.ttsHelper.stopSpeaking();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassApplication
 * JD-Core Version:    0.6.2
 */