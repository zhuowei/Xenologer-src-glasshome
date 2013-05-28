package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.glass.common.R.style;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.AttributionProtos.Attribution;
import com.google.majel.proto.PeanutProtos.Image;
import com.google.protobuf.micro.ByteStringMicro;
import java.util.Iterator;
import java.util.List;

public class TextResponseAnswerView extends HorizontalScrollLinearLayout
{
  private DynamicSizeTextView answerView;
  private TypophileTextView attributionFooterView;
  private TypophileTextView imageAttribution;
  private View imageFrame;
  private ImageView imageView;
  private FrameLayout textLayout;

  public TextResponseAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public TextResponseAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public TextResponseAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private String getAttributionListDisplayString(List<AttributionProtos.Attribution> paramList)
  {
    if (!paramList.isEmpty())
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        AttributionProtos.Attribution localAttribution = (AttributionProtos.Attribution)localIterator.next();
        if (localAttribution.hasPageDomain())
        {
          if (i > 0)
            localStringBuilder.append(", ");
          localStringBuilder.append(localAttribution.getPageDomain());
          i++;
        }
      }
      return localStringBuilder.toString();
    }
    return null;
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_text_response_answer, this);
    this.textLayout = ((FrameLayout)findViewById(R.id.right_text_frame));
    this.answerView = ((DynamicSizeTextView)findViewById(R.id.answer));
    this.attributionFooterView = ((TypophileTextView)findViewById(R.id.answer_attribution));
    this.imageFrame = findViewById(R.id.left_image_frame);
    this.imageView = ((ImageView)this.imageFrame.findViewById(R.id.image));
    this.imageAttribution = ((TypophileTextView)this.imageFrame.findViewById(R.id.attribution));
  }

  private static String removeHtmlTags(String paramString)
  {
    return Html.fromHtml(paramString).toString();
  }

  public void setAnswerData(AnswerData paramAnswerData, boolean paramBoolean)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    String str1 = removeHtmlTags(paramAnswerData.getAnswer());
    if ((paramAnswerData.isMediumConfidence()) && (str1.endsWith("...")))
      str1 = str1.substring(0, -3 + str1.length());
    String str2 = removeHtmlTags(paramAnswerData.getAnswerDescription());
    String str3;
    if (!paramBoolean)
    {
      localSpannableStringBuilder.append(str1);
      if (!TextUtils.isEmpty(str2))
      {
        SpannableString localSpannableString2 = new SpannableString(str2);
        localSpannableString2.setSpan(new TextAppearanceSpan(getContext(), R.style.OverlayGrayText), 0, localSpannableString2.length(), 17);
        localSpannableStringBuilder.append("\n");
        localSpannableStringBuilder.append(localSpannableString2);
      }
      this.answerView.setText(localSpannableStringBuilder);
      str3 = getAttributionListDisplayString(paramAnswerData.getSourceList());
      if (!TextUtils.isEmpty(str3))
        break label308;
      this.attributionFooterView.setVisibility(8);
    }
    while (true)
    {
      PeanutProtos.Image localImage = paramAnswerData.getImage();
      if ((localImage == null) || (!localImage.hasData()))
        break label351;
      byte[] arrayOfByte = localImage.getData().toByteArray();
      Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
      this.imageView.setImageBitmap(localBitmap);
      AttributionProtos.Attribution localAttribution = paramAnswerData.getImageSource();
      if ((localAttribution != null) && (localAttribution.hasPageDomain()))
        this.imageAttribution.setText(localAttribution.getPageDomain());
      return;
      SpannableString localSpannableString1 = new SpannableString(str1);
      localSpannableString1.setSpan(new TextAppearanceSpan(getContext(), R.style.OverlayGrayText), 0, str1.length(), 17);
      localSpannableStringBuilder.append(localSpannableString1);
      localSpannableStringBuilder.append("\n");
      localSpannableStringBuilder.append(str2);
      break;
      label308: if (paramAnswerData.isMediumConfidence())
        str3 = getResources().getString(R.string.voice_search_med_confidence_answer_source, new Object[] { str3 });
      this.attributionFooterView.setText(removeHtmlTags(str3));
    }
    label351: this.imageFrame.setVisibility(8);
    this.textLayout.getLayoutParams().width = -1;
    this.textLayout.setPadding(getResources().getDimensionPixelSize(R.dimen.generic_card_padding), this.textLayout.getPaddingTop(), this.textLayout.getPaddingRight(), this.textLayout.getPaddingBottom());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.TextResponseAnswerView
 * JD-Core Version:    0.6.2
 */