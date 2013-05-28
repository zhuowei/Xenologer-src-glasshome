package com.google.glass.home.search.results;

import android.content.Context;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TextAppearanceSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.common.R.style;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.DictionaryResult;
import com.google.majel.proto.EcoutezStructuredResponse.Meaning;
import com.google.majel.proto.EcoutezStructuredResponse.PosMeaning;
import com.google.majel.proto.EcoutezStructuredResponse.Synonym;
import java.util.Iterator;
import java.util.List;

public class DictionaryAnswerView extends HorizontalScrollLinearLayout
{
  private DynamicSizeTextView definition;
  private TypophileTextView pronunciation;
  private DynamicSizeTextView word;

  public DictionaryAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public DictionaryAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public DictionaryAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private String buildSynonymsContent(List<EcoutezStructuredResponse.Synonym> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramList.size())
    {
      EcoutezStructuredResponse.Synonym localSynonym = (EcoutezStructuredResponse.Synonym)paramList.get(i);
      if (localSynonym.getSynonymCount() == 0);
      while (true)
      {
        i++;
        break;
        if (localSynonym.hasPartOfSpeech())
          localStringBuilder.append("<i>").append(localSynonym.getPartOfSpeech()).append(".</i> ");
        for (int j = 0; j < localSynonym.getSynonymCount(); j++)
        {
          localStringBuilder.append(localSynonym.getSynonym(j));
          if (j != -1 + localSynonym.getSynonymCount())
            localStringBuilder.append(" - ");
        }
        if (i != paramList.size())
          localStringBuilder.append("<br />");
      }
    }
    return localStringBuilder.toString();
  }

  private SpannableString createGraySpannableString(String paramString)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new TextAppearanceSpan(getContext(), R.style.OverlayGrayText), 0, localSpannableString.length(), 17);
    return localSpannableString;
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_dictionary_answer, this);
    this.word = ((DynamicSizeTextView)findViewById(R.id.word));
    this.pronunciation = ((TypophileTextView)findViewById(R.id.pronunciation));
    this.definition = ((DynamicSizeTextView)findViewById(R.id.definition));
  }

  private void setMeanings(String paramString, EcoutezStructuredResponse.Meaning paramMeaning)
  {
    SpannableString localSpannableString = createGraySpannableString(paramString.replace(":", ""));
    Spanned localSpanned = Html.fromHtml(paramMeaning.getText());
    if (paramMeaning.getExampleCount() == 0);
    for (Object localObject = null; ; localObject = Html.fromHtml(paramMeaning.getExample(0)))
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localSpannableString);
      localSpannableStringBuilder.append("\n");
      localSpannableStringBuilder.append(localSpanned);
      if (localObject != null)
      {
        localSpannableStringBuilder.append(":\"");
        localSpannableStringBuilder.append((CharSequence)localObject);
        localSpannableStringBuilder.append("\".");
      }
      this.definition.setText(localSpannableStringBuilder);
      return;
    }
  }

  private void setWordAndPronunciation(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
  {
    Spanned localSpanned = Html.fromHtml(paramDictionaryResult.getDictionaryWord());
    StyleSpan[] arrayOfStyleSpan = (StyleSpan[])localSpanned.getSpans(0, localSpanned.length(), StyleSpan.class);
    int i = localSpanned.length();
    int j = arrayOfStyleSpan.length;
    for (int k = 0; ; k++)
    {
      int m = 0;
      if (k < j)
      {
        StyleSpan localStyleSpan = arrayOfStyleSpan[k];
        if (localStyleSpan.getStyle() == 1)
        {
          m = localSpanned.getSpanStart(localStyleSpan);
          i = localSpanned.getSpanEnd(localStyleSpan);
        }
      }
      else
      {
        this.word.setText(localSpanned.subSequence(m, i).toString().replace(":", ""));
        String str = paramDictionaryResult.getPronunciation();
        if (TextUtils.isEmpty(str))
          break;
        this.pronunciation.setText(Html.fromHtml(str));
        return;
      }
    }
    this.pronunciation.setVisibility(8);
  }

  public boolean setDictionaryResultPrimary(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
  {
    setWordAndPronunciation(paramDictionaryResult);
    Iterator localIterator = paramDictionaryResult.getPartOfSpeechMeaningList().iterator();
    EcoutezStructuredResponse.PosMeaning localPosMeaning;
    do
    {
      boolean bool1 = localIterator.hasNext();
      bool2 = false;
      if (!bool1)
        break;
      localPosMeaning = (EcoutezStructuredResponse.PosMeaning)localIterator.next();
    }
    while (localPosMeaning.getMeaningCount() == 0);
    setMeanings(localPosMeaning.getPartOfSpeech(), localPosMeaning.getMeaning(0));
    boolean bool2 = true;
    return bool2;
  }

  public boolean setDictionaryResultSecondary(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
  {
    this.word.setVisibility(8);
    this.pronunciation.setVisibility(8);
    this.definition.setMaxLines(6);
    List localList = paramDictionaryResult.getPartOfSpeechMeaningList();
    int i = 1;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      EcoutezStructuredResponse.PosMeaning localPosMeaning = (EcoutezStructuredResponse.PosMeaning)localIterator.next();
      if (localPosMeaning.getMeaningCount() != 0)
      {
        if ((localPosMeaning.getMeaningCount() > 1) && (i != 0))
        {
          setMeanings(localPosMeaning.getPartOfSpeech(), localPosMeaning.getMeaning(1));
          return true;
        }
        if (i != 0)
        {
          i = 0;
        }
        else
        {
          setMeanings(localPosMeaning.getPartOfSpeech(), localPosMeaning.getMeaning(0));
          return true;
        }
      }
    }
    return false;
  }

  public boolean settDictionaryResultSynonyms(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
  {
    if ((!paramDictionaryResult.hasSynonymsHeader()) || (paramDictionaryResult.getSynonymCount() < 1))
      return false;
    this.word.setVisibility(8);
    this.pronunciation.setVisibility(8);
    this.definition.setMaxLines(6);
    SpannableString localSpannableString = createGraySpannableString(paramDictionaryResult.getSynonymsHeader().replace(":", ""));
    String str = buildSynonymsContent(paramDictionaryResult.getSynonymList());
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localSpannableString);
    localSpannableStringBuilder.append("\n");
    localSpannableStringBuilder.append(Html.fromHtml(str));
    this.definition.setText(localSpannableStringBuilder);
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.DictionaryAnswerView
 * JD-Core Version:    0.6.2
 */