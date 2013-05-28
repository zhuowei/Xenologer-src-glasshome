package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.LeadingMarginSpan.LeadingMarginSpan2;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.google.glass.common.R.styleable;

public class TypophileTextView extends TextView
{
  private static final int MASK_CONDENSED = 256;
  private static final int MASK_ITALIC = 16;
  private static final int MASK_WEIGHT = 15;
  private float firstLineIndent;
  private float hangingIndent;

  public TypophileTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TypophileTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TypophileTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TypophileTextView);
    int i;
    int j;
    if (localTypedArray.hasValue(0))
    {
      i = localTypedArray.getInt(0, 0);
      j = i & 0xF;
      if ((i & 0x10) == 0)
        break label141;
    }
    label141: for (boolean bool1 = true; ; bool1 = false)
    {
      int k = i & 0x100;
      boolean bool2 = false;
      if (k != 0)
        bool2 = true;
      Typeface localTypeface = RobotoTypefaces.getTypeface(paramContext, j, bool1, bool2);
      if (localTypeface != null)
        setTypeface(localTypeface);
      if (localTypedArray.hasValue(1))
        this.firstLineIndent = localTypedArray.getDimension(1, 0.0F);
      if (localTypedArray.hasValue(2))
        this.hangingIndent = localTypedArray.getDimension(2, 0.0F);
      localTypedArray.recycle();
      return;
    }
  }

  public void setFirstLineIndent(float paramFloat)
  {
    setFirstLineIndent(2, paramFloat);
  }

  public void setFirstLineIndent(int paramInt, float paramFloat)
  {
    this.firstLineIndent = TypedValue.applyDimension(paramInt, paramFloat, getResources().getDisplayMetrics());
    setText(getText());
  }

  public void setHangingIndent(float paramFloat)
  {
    setHangingIndent(2, paramFloat);
  }

  public void setHangingIndent(int paramInt, float paramFloat)
  {
    this.hangingIndent = TypedValue.applyDimension(paramInt, paramFloat, getResources().getDisplayMetrics());
    setText(getText());
  }

  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    if (((this.firstLineIndent != 0.0F) || (this.hangingIndent != 0.0F)) && (paramCharSequence != null))
    {
      SpannableString localSpannableString = new SpannableString(paramCharSequence);
      localSpannableString.setSpan(new LeadingMarginSpan.LeadingMarginSpan2()
      {
        public void drawLeadingMargin(Canvas paramAnonymousCanvas, Paint paramAnonymousPaint, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, CharSequence paramAnonymousCharSequence, int paramAnonymousInt6, int paramAnonymousInt7, boolean paramAnonymousBoolean, Layout paramAnonymousLayout)
        {
        }

        public int getLeadingMargin(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean);
          for (float f = TypophileTextView.this.firstLineIndent; ; f = TypophileTextView.this.hangingIndent)
            return (int)f;
        }

        public int getLeadingMarginLineCount()
        {
          return 1;
        }
      }
      , 0, localSpannableString.length(), 0);
      super.setText(localSpannableString, paramBufferType);
      return;
    }
    super.setText(paramCharSequence, paramBufferType);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.TypophileTextView
 * JD-Core Version:    0.6.2
 */