package com.google.glass.home.timeline.html;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.webkit.WebSettings;
import android.webkit.WebSettings.ZoomDensity;
import android.webkit.WebView;
import android.webkit.WebView.PictureListener;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.maps.MapHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HtmlRenderer
{
  private static final Pattern CSS_URL_ATTACHMENT = Pattern.compile("url\\(['\"]?(attachment:\\d+)['\"]?\\)");

  @VisibleForTesting
  static final boolean FORCE_COMPILED_CSS = false;
  public static final String GLASS_CSS_PATH = "stylesheets/base_style.css";
  private static final int INITIAL_POOL_SIZE = 5;
  private static final int MAX_POOL_SIZE = 10;
  private static final Pattern SRC_ATTACHMENT;
  private static final String TAG = HtmlRenderer.class.getSimpleName();
  private static Pool staticPool;
  private final CachedBitmapFactory bitmapFactory;
  private final Canvas canvas;
  private final Context context;
  private final int height;
  private boolean isAllocated;
  private String itemId;
  private final List<AsyncTask<Void, Void, Void>> resourceLoadTasks = new ArrayList();
  private final Bitmap target;
  private final WebView webView;
  private final int width;

  static
  {
    SRC_ATTACHMENT = Pattern.compile("src=['\"](attachment:\\d+)['\"]");
  }

  private HtmlRenderer(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory)
  {
    Timer localTimer = new Timer();
    this.context = paramContext;
    this.bitmapFactory = paramCachedBitmapFactory;
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.width = localDisplayMetrics.widthPixels;
    this.height = localDisplayMetrics.heightPixels;
    this.target = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
    this.canvas = new Canvas(this.target);
    this.webView = createWebView(paramContext);
    this.webView.post(new Runnable()
    {
      public void run()
      {
        HtmlRenderer.this.doLayout(HtmlRenderer.this.webView, HtmlRenderer.this.width, HtmlRenderer.this.height);
      }
    });
    localTimer.log(TAG, "Created HtmlRenderer");
  }

  @VisibleForTesting
  static HtmlRenderer createForTesting(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory)
  {
    Assert.assertIsTest();
    return new HtmlRenderer(paramContext, paramCachedBitmapFactory);
  }

  private static WebView createWebView(Context paramContext)
  {
    WebView localWebView = new WebView(paramContext);
    localWebView.setBackgroundColor(-16777216);
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setBuiltInZoomControls(false);
    localWebSettings.setSupportZoom(false);
    localWebSettings.setDefaultZoom(WebSettings.ZoomDensity.FAR);
    localWebSettings.setLoadWithOverviewMode(false);
    localWebSettings.setCacheMode(2);
    localWebSettings.setJavaScriptEnabled(true);
    return localWebView;
  }

  private void destroy()
  {
    this.webView.destroy();
  }

  private void doLayout(WebView paramWebView, int paramInt1, int paramInt2)
  {
    Assert.assertUiThread();
    paramWebView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
    paramWebView.layout(0, 0, paramInt1, paramInt2);
  }

  private String getCssUrl(Context paramContext)
  {
    File localFile = new File(paramContext.getFilesDir(), "stylesheets/base_style.css");
    if (localFile.exists())
      return "file://" + localFile.getAbsolutePath();
    return "base_style.css";
  }

  public static void initialize(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory)
  {
    Assert.assertUiThread();
    staticPool = new Pool(paramContext, paramCachedBitmapFactory);
  }

  public static HtmlRenderer obtain()
  {
    return staticPool.obtainRenderer();
  }

  private void render(final TimelineItem paramTimelineItem, final int paramInt, boolean paramBoolean, final OnRenderListener paramOnRenderListener)
  {
    Assert.assertUiThread();
    if (!this.isAllocated)
      throw new IllegalStateException("Called render() on an unallocated renderer!");
    Timer localTimer = new Timer();
    this.itemId = paramTimelineItem.getId();
    this.webView.setWebViewClient(new ResourceLoadingWebViewClient(this.context, paramTimelineItem, this.bitmapFactory, MapHelper.getInstance(this.context), paramBoolean, this.resourceLoadTasks, new ResourceLoadingWebViewClient.ResourceLoadedCallback()
    {
      public void onResourceLoaded()
      {
        Assert.assertUiThread();
        if ((HtmlRenderer.this.isAllocated) && (paramTimelineItem.getId().equals(HtmlRenderer.this.itemId)))
          HtmlRenderer.this.render(paramTimelineItem, paramInt, false, paramOnRenderListener);
      }
    }));
    this.webView.setPictureListener(new WebView.PictureListener()
    {
      public void onNewPicture(WebView paramAnonymousWebView, Picture paramAnonymousPicture)
      {
        if (HtmlRenderer.this.isAllocated)
          HtmlRenderer.this.renderToImage(paramAnonymousWebView, paramOnRenderListener);
      }
    });
    this.webView.loadDataWithBaseURL("file:///android_asset/", generateHtml(paramTimelineItem, paramInt), "text/html", "UTF-8", null);
    localTimer.log(TAG, "Prepare: " + this.itemId);
  }

  private void renderToImage(WebView paramWebView, OnRenderListener paramOnRenderListener)
  {
    Assert.assertUiThread();
    if (this.isAllocated)
    {
      Timer localTimer = new Timer();
      paramWebView.draw(this.canvas);
      paramOnRenderListener.onRender(this, this.target);
      localTimer.log(TAG, "RenderToImage: " + this.itemId);
    }
  }

  private String rewriteAttachmentUrls(String paramString)
  {
    String str = SRC_ATTACHMENT.matcher(paramString).replaceAll("src=\"$1#" + this.itemId + "\"");
    return CSS_URL_ATTACHMENT.matcher(str).replaceAll("url($1#" + this.itemId + ")");
  }

  private void setIsAllocated(boolean paramBoolean)
  {
    this.isAllocated = paramBoolean;
  }

  @VisibleForTesting
  String generateHtml(TimelineItem paramTimelineItem, int paramInt)
  {
    String str = rewriteAttachmentUrls(paramTimelineItem.getHtml());
    if (!str.contains("<article>"))
      str = "<div class=\"card\">" + str + "</div>";
    return "<html><link rel=\"stylesheet\" type=\"text/css\" href=\"" + getCssUrl(this.context) + "\" />" + "<script src=\"cards_compiled.js\"></script>" + "<script>AutoSizer.init();</script>" + "<style>footer {margin-right:" + paramInt + "px;}</style>" + "<body>" + str + "</body></html>";
  }

  public void release()
  {
    Assert.assertUiThread();
    if (!this.isAllocated)
      throw new IllegalStateException("Called release() on an unallocated renderer!");
    this.itemId = null;
    this.webView.setWebViewClient(null);
    this.webView.setPictureListener(null);
    this.webView.loadData("", "text/html", "UTF-8");
    Iterator localIterator = this.resourceLoadTasks.iterator();
    while (localIterator.hasNext())
      ((AsyncTask)localIterator.next()).cancel(true);
    this.resourceLoadTasks.clear();
    staticPool.releaseRenderer(this);
  }

  public void render(TimelineItem paramTimelineItem, int paramInt, OnRenderListener paramOnRenderListener)
  {
    render(paramTimelineItem, paramInt, true, paramOnRenderListener);
  }

  public static abstract interface OnRenderListener
  {
    public abstract void onRender(HtmlRenderer paramHtmlRenderer, Bitmap paramBitmap);
  }

  private static class Pool
  {
    private final ArrayList<HtmlRenderer> availableRenderers = new ArrayList();
    private final CachedBitmapFactory bitmapFactory;
    private final Context context;

    Pool(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory)
    {
      this.context = paramContext;
      this.bitmapFactory = paramCachedBitmapFactory;
      for (int i = 0; i < 5; i++)
        this.availableRenderers.add(new HtmlRenderer(paramContext, paramCachedBitmapFactory, null));
    }

    HtmlRenderer obtainRenderer()
    {
      try
      {
        if (this.availableRenderers.size() > 0);
        for (HtmlRenderer localHtmlRenderer = (HtmlRenderer)this.availableRenderers.remove(-1 + this.availableRenderers.size()); ; localHtmlRenderer = new HtmlRenderer(this.context, this.bitmapFactory, null))
        {
          localHtmlRenderer.setIsAllocated(true);
          return localHtmlRenderer;
        }
      }
      finally
      {
      }
    }

    void releaseRenderer(HtmlRenderer paramHtmlRenderer)
    {
      try
      {
        paramHtmlRenderer.setIsAllocated(false);
        if (this.availableRenderers.size() < 10)
          this.availableRenderers.add(paramHtmlRenderer);
        while (true)
        {
          return;
          paramHtmlRenderer.destroy();
        }
      }
      finally
      {
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.html.HtmlRenderer
 * JD-Core Version:    0.6.2
 */