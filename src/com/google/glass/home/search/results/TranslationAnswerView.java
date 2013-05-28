package com.google.glass.home.search.results;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.common.base.Joiner;
import com.google.glass.common.R.style;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.majel.proto.CommonStructuredResponse.TranslationResult;
import java.text.Normalizer;
import java.text.Normalizer.Form;

public class TranslationAnswerView extends HorizontalScrollLinearLayout
{
  private DynamicSizeTextView answerView;

  public TranslationAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public TranslationAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public TranslationAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_translation_answer, this);
    this.answerView = ((DynamicSizeTextView)findViewById(R.id.answer));
  }

  public void setTranslationResult(CommonStructuredResponse.TranslationResult paramTranslationResult)
  {
    String str1 = paramTranslationResult.getTranslatedText();
    if (!Normalizer.isNormalized(str1, Normalizer.Form.NFC))
      str1 = Normalizer.normalize(str1, Normalizer.Form.NFC);
    String str2 = paramTranslationResult.getTranslatedTextTransliteration();
    String str3 = paramTranslationResult.getTextToTranslate();
    String str4 = paramTranslationResult.getTranslatedTextLanguageDisplay();
    String str5 = Joiner.on(", ").skipNulls().join(str3, str4, new Object[0]);
    SpannableString localSpannableString = new SpannableString(str5);
    localSpannableString.setSpan(new TextAppearanceSpan(getContext(), R.style.OverlayGrayText), 0, str5.length(), 17);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(str1);
    if (!TextUtils.isEmpty(str2))
    {
      localSpannableStringBuilder.append(" (");
      localSpannableStringBuilder.append(str2);
      localSpannableStringBuilder.append(")\n");
    }
    while (true)
    {
      localSpannableStringBuilder.append(localSpannableString);
      this.answerView.setText(localSpannableStringBuilder);
      return;
      localSpannableStringBuilder.append("\n");
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.TranslationAnswerView
 * JD-Core Version:    0.6.2
 */