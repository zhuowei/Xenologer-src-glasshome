package com.google.glass.home.search.results;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.SnippetResult;

public class SnippetAnswerView extends HorizontalScrollLinearLayout
{
  private TypophileTextView domainView;
  private DynamicSizeTextView snippetView;

  public SnippetAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SnippetAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public SnippetAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_snippet, this);
    this.snippetView = ((DynamicSizeTextView)findViewById(R.id.snippet));
    this.domainView = ((TypophileTextView)findViewById(R.id.domain));
  }

  private static String stripBrs(String paramString)
  {
    return paramString.replaceAll("<br>", "");
  }

  public void setSnippet(EcoutezStructuredResponse.SnippetResult paramSnippetResult)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    Spanned localSpanned1 = Html.fromHtml(stripBrs(paramSnippetResult.getTitle()));
    localSpannableStringBuilder.append(localSpanned1);
    localSpannableStringBuilder.replace(localSpannableStringBuilder.length(), localSpannableStringBuilder.length(), "\n");
    Spanned localSpanned2 = Html.fromHtml(stripBrs(paramSnippetResult.getSnippet()));
    localSpannableStringBuilder.append(localSpanned2.toString());
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#FFBBBBBB")), 1 + localSpanned1.length(), 1 + localSpanned1.length() + localSpanned2.length(), 33);
    this.snippetView.setText(localSpannableStringBuilder);
    this.domainView.setText(paramSnippetResult.getDomain());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.SnippetAnswerView
 * JD-Core Version:    0.6.2
 */