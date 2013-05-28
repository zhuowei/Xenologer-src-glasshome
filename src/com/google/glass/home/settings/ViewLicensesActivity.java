package com.google.glass.home.settings;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ViewSwitcher;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.TypophileTextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ViewLicensesActivity extends GlassActivity
{
  private static final String ACTIVITY_NAME_LIGHTCYCLE = "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity";
  private static final String DEFAULT_LICENSE_PATH = "/system/etc/NOTICE.html.gz";
  private static final int FLING_VELOCITY_SCALE = 50;
  private static final String LIGHTCYCLE_EXTRA_REQUIRED_STRING = "required_string";
  private static final int MENU_ID_MEET_THE_TEAM = 1;
  private static final int MIN_FLING_VELOCITY = 12;
  private static final String PACKAGE_NAME_LIGHTCYCLE = "com.google.android.apps.lightcycle.glass";
  private static final String TAG = ViewLicensesActivity.class.getSimpleName();
  private float lastAccumulatorX;
  private boolean licenseHasLoaded;
  private TypophileTextView licenseMessage;
  private ViewSwitcher licenseSwitcher;
  private WebView licenseWebView;
  private Intent lightcycleIntent;
  private SliderView progressSlider;
  private float swipeDelta;
  private int tapCount;
  private SoundManager.SoundId[] tapSounds;

  public ViewLicensesActivity()
  {
    SoundManager.SoundId[] arrayOfSoundId = new SoundManager.SoundId[9];
    arrayOfSoundId[0] = SoundManager.SoundId.SCALE1;
    arrayOfSoundId[1] = SoundManager.SoundId.SCALE2;
    arrayOfSoundId[2] = SoundManager.SoundId.SCALE3;
    arrayOfSoundId[3] = SoundManager.SoundId.SCALE4;
    arrayOfSoundId[4] = SoundManager.SoundId.SCALE5;
    arrayOfSoundId[5] = SoundManager.SoundId.SCALE6;
    arrayOfSoundId[6] = SoundManager.SoundId.SCALE7;
    arrayOfSoundId[7] = SoundManager.SoundId.SCALE8;
    arrayOfSoundId[8] = SoundManager.SoundId.SCALE_RESOLVE;
    this.tapSounds = arrayOfSoundId;
  }

  private void showError()
  {
    this.licenseMessage.setText(R.string.deviceinfo_licenses_error);
    this.progressSlider.stopIndeterminate();
    this.licenseSwitcher.setDisplayedChild(0);
  }

  private void showHtml(String paramString)
  {
    String str = Pattern.compile("<head>.*</head>", 32).matcher(paramString).replaceFirst("<head><link rel=\"stylesheet\" type=\"text/css\" href=\"licenses.css\" /></head>");
    this.licenseWebView.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        ViewLicensesActivity.this.licenseSwitcher.setDisplayedChild(1);
        ViewLicensesActivity.access$402(ViewLicensesActivity.this, true);
      }
    });
    this.licenseWebView.loadDataWithBaseURL("file:///android_asset/", str, "text/html", "utf-8", null);
  }

  public boolean onConfirm()
  {
    if (!this.licenseHasLoaded)
    {
      getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
      return false;
    }
    SoundManager localSoundManager = getSoundManager();
    SoundManager.SoundId[] arrayOfSoundId = this.tapSounds;
    int i = this.tapCount;
    this.tapCount = (i + 1);
    localSoundManager.playSound(arrayOfSoundId[i]);
    if (this.tapCount == this.tapSounds.length)
    {
      this.tapCount = 0;
      openOptionsMenu();
    }
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.licenseSwitcher = ((ViewSwitcher)findViewById(R.id.license_switcher));
    this.licenseMessage = ((TypophileTextView)findViewById(R.id.license_message));
    this.licenseWebView = ((WebView)findViewById(R.id.license_web_view));
    this.progressSlider = ((SliderView)findViewById(R.id.license_slider));
    this.licenseWebView.setLayerType(1, null);
    this.licenseWebView.setBackgroundColor(-16777216);
    this.licenseHasLoaded = false;
    new LicenseFileLoader("/system/etc/NOTICE.html.gz").execute(new Void[0]);
    this.progressSlider.startIndeterminate();
    this.lightcycleIntent = new Intent();
    this.lightcycleIntent.setClassName("com.google.android.apps.lightcycle.glass", "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity");
    this.lightcycleIntent.putExtra("required_string", Build.VERSION.RELEASE);
  }

  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.addItem(1, getString(R.string.meet_the_team), R.drawable.ic_sphere_pano_medium);
    return true;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if ((paramInt == 0) && (Math.abs(this.swipeDelta) > 12.0F))
      this.licenseWebView.flingScroll(0, 50 * Math.round(this.swipeDelta));
    this.swipeDelta = 0.0F;
    return super.onFingerCountChanged(paramInt, paramBoolean);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    if (paramItem.getItemId() == 1)
    {
      startActivity(this.lightcycleIntent);
      finish();
      return true;
    }
    return false;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (paramFloat1 == 0.0F)
    {
      this.lastAccumulatorX = 0.0F;
      return true;
    }
    this.swipeDelta = (paramFloat1 - this.lastAccumulatorX);
    this.lastAccumulatorX = paramFloat1;
    int i = Math.max(this.licenseWebView.getScrollY() + (int)this.swipeDelta, 0);
    this.licenseWebView.scrollTo(0, i);
    return true;
  }

  public void onResume()
  {
    super.onResume();
    this.tapCount = 0;
  }

  protected int provideContentView()
  {
    return R.layout.view_licenses_activity;
  }

  private final class LicenseFileLoader extends AsyncTask<Void, Void, Boolean>
  {
    private final String fileName;
    private String html;

    LicenseFileLoader(String arg2)
    {
      Object localObject;
      this.fileName = localObject;
    }

    // ERROR //
    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 27	java/lang/StringBuilder
      //   5: dup
      //   6: sipush 2048
      //   9: invokespecial 30	java/lang/StringBuilder:<init>	(I)V
      //   12: astore_3
      //   13: sipush 2048
      //   16: newarray char
      //   18: astore 15
      //   20: aload_0
      //   21: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   24: ldc 32
      //   26: invokevirtual 38	java/lang/String:endsWith	(Ljava/lang/String;)Z
      //   29: istore 16
      //   31: aconst_null
      //   32: astore_2
      //   33: iload 16
      //   35: ifeq +109 -> 144
      //   38: new 40	java/io/InputStreamReader
      //   41: dup
      //   42: new 42	java/util/zip/GZIPInputStream
      //   45: dup
      //   46: new 44	java/io/FileInputStream
      //   49: dup
      //   50: aload_0
      //   51: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   54: invokespecial 47	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
      //   57: invokespecial 50	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
      //   60: invokespecial 51	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   63: astore_2
      //   64: aload_2
      //   65: aload 15
      //   67: invokevirtual 55	java/io/InputStreamReader:read	([C)I
      //   70: istore 17
      //   72: iload 17
      //   74: iflt +89 -> 163
      //   77: aload_3
      //   78: aload 15
      //   80: iconst_0
      //   81: iload 17
      //   83: invokevirtual 59	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
      //   86: pop
      //   87: goto -23 -> 64
      //   90: astore 11
      //   92: invokestatic 65	com/google/glass/home/settings/ViewLicensesActivity:access$000	()Ljava/lang/String;
      //   95: new 27	java/lang/StringBuilder
      //   98: dup
      //   99: invokespecial 66	java/lang/StringBuilder:<init>	()V
      //   102: ldc 68
      //   104: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   107: aload_0
      //   108: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   111: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   114: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   117: aload 11
      //   119: invokestatic 80	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   122: pop
      //   123: iconst_0
      //   124: invokestatic 86	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   127: astore 13
      //   129: aload 13
      //   131: astore 9
      //   133: aload_2
      //   134: ifnull +7 -> 141
      //   137: aload_2
      //   138: invokevirtual 89	java/io/InputStreamReader:close	()V
      //   141: aload 9
      //   143: areturn
      //   144: new 91	java/io/FileReader
      //   147: dup
      //   148: aload_0
      //   149: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   152: invokespecial 92	java/io/FileReader:<init>	(Ljava/lang/String;)V
      //   155: astore 21
      //   157: aload 21
      //   159: astore_2
      //   160: goto -96 -> 64
      //   163: aload_2
      //   164: ifnull +7 -> 171
      //   167: aload_2
      //   168: invokevirtual 89	java/io/InputStreamReader:close	()V
      //   171: aload_3
      //   172: invokestatic 98	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   175: ifeq +114 -> 289
      //   178: invokestatic 65	com/google/glass/home/settings/ViewLicensesActivity:access$000	()Ljava/lang/String;
      //   181: new 27	java/lang/StringBuilder
      //   184: dup
      //   185: invokespecial 66	java/lang/StringBuilder:<init>	()V
      //   188: ldc 100
      //   190: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   193: aload_0
      //   194: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   197: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   200: ldc 102
      //   202: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   205: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   208: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   211: pop
      //   212: iconst_0
      //   213: invokestatic 86	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   216: areturn
      //   217: astore 6
      //   219: invokestatic 65	com/google/glass/home/settings/ViewLicensesActivity:access$000	()Ljava/lang/String;
      //   222: new 27	java/lang/StringBuilder
      //   225: dup
      //   226: invokespecial 66	java/lang/StringBuilder:<init>	()V
      //   229: ldc 107
      //   231: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   234: aload_0
      //   235: getfield 19	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:fileName	Ljava/lang/String;
      //   238: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   241: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   244: aload 6
      //   246: invokestatic 80	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   249: pop
      //   250: iconst_0
      //   251: invokestatic 86	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   254: astore 8
      //   256: aload 8
      //   258: astore 9
      //   260: aload_2
      //   261: ifnull -120 -> 141
      //   264: aload_2
      //   265: invokevirtual 89	java/io/InputStreamReader:close	()V
      //   268: aload 9
      //   270: areturn
      //   271: astore 10
      //   273: aload 9
      //   275: areturn
      //   276: astore 4
      //   278: aload_2
      //   279: ifnull +7 -> 286
      //   282: aload_2
      //   283: invokevirtual 89	java/io/InputStreamReader:close	()V
      //   286: aload 4
      //   288: athrow
      //   289: aload_0
      //   290: aload_3
      //   291: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   294: putfield 109	com/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader:html	Ljava/lang/String;
      //   297: iconst_1
      //   298: invokestatic 86	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   301: areturn
      //   302: astore 20
      //   304: goto -133 -> 171
      //   307: astore 14
      //   309: aload 9
      //   311: areturn
      //   312: astore 5
      //   314: goto -28 -> 286
      //
      // Exception table:
      //   from	to	target	type
      //   13	31	90	java/io/FileNotFoundException
      //   38	64	90	java/io/FileNotFoundException
      //   64	72	90	java/io/FileNotFoundException
      //   77	87	90	java/io/FileNotFoundException
      //   144	157	90	java/io/FileNotFoundException
      //   13	31	217	java/io/IOException
      //   38	64	217	java/io/IOException
      //   64	72	217	java/io/IOException
      //   77	87	217	java/io/IOException
      //   144	157	217	java/io/IOException
      //   264	268	271	java/io/IOException
      //   13	31	276	finally
      //   38	64	276	finally
      //   64	72	276	finally
      //   77	87	276	finally
      //   92	129	276	finally
      //   144	157	276	finally
      //   219	256	276	finally
      //   167	171	302	java/io/IOException
      //   137	141	307	java/io/IOException
      //   282	286	312	java/io/IOException
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      if (paramBoolean.booleanValue())
      {
        ViewLicensesActivity.this.showHtml(this.html);
        return;
      }
      ViewLicensesActivity.this.showError();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.ViewLicensesActivity
 * JD-Core Version:    0.6.2
 */