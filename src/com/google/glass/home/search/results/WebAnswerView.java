package com.google.glass.home.search.results;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.common.base.Charsets;
import com.google.common.io.Files;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import java.io.File;
import java.io.IOException;

public class WebAnswerView extends HorizontalScrollLinearLayout
{
  private static final String TAG = WebAnswerView.class.getSimpleName();
  private static String glassCss = null;
  private Context context;
  private WebView webView;

  public WebAnswerView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    init();
  }

  public WebAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
  }

  public WebAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_web_answer, this);
    this.webView = ((WebView)findViewById(R.id.webview));
    loadCss();
  }

  private void loadCss()
  {
    if (glassCss != null)
      return;
    try
    {
      glassCss = Files.toString(new File(this.context.getFilesDir(), "stylesheets/base_style.css"), Charsets.UTF_8);
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to load Glass CSS", localIOException);
    }
  }

  public void loadData(String paramString)
  {
    String str = "<style>" + glassCss + "</style>" + paramString;
    this.webView.setLayerType(1, null);
    this.webView.setBackgroundColor(0);
    this.webView.getSettings().setLoadWithOverviewMode(true);
    this.webView.loadDataWithBaseURL("http://www.google.com", str, "text/html", "UTF-8", null);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.WebAnswerView
 * JD-Core Version:    0.6.2
 */