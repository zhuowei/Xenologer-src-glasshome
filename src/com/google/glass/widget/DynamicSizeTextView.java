package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint.FontMetrics;
import android.text.DynamicLayout;
import android.text.Layout.Alignment;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LruCache;
import android.util.Pair;
import android.view.ViewPropertyAnimator;
import android.widget.TextView.BufferType;
import com.google.glass.common.R.array;
import com.google.glass.common.R.integer;
import com.google.glass.util.Assert;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.util.HiddenApiHelper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

public class DynamicSizeTextView extends TypophileTextView
{
  private static final int LAYOUT_CACHE_SIZE = 16;
  private static final int SIZING_CACHE_SIZE = 20;
  private static final String TAG = DynamicSizeTextView.class.getSimpleName();
  private static Map<LayoutCacheKey, LinkedBlockingQueue<Pair<MutableCharSequence, DynamicLayout>>> layoutCache = new HashMap();
  private static LruCache<SizingCacheKey, SizingResult> sizingCache = new LruCache(20);
  private boolean isForcedToSmallestSize;
  private boolean shouldUpdateTextSize;
  private boolean sizeTextOnBackgroundThread;
  private TextClipListener textClipListener;
  private DeferredContentLoader.LoadingTask<SizingResult> textSizeTask;
  private TypedArray textSizes;

  public DynamicSizeTextView(Context paramContext)
  {
    super(paramContext);
    initialize();
  }

  public DynamicSizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize();
  }

  private void applyTextSize(SizingResult paramSizingResult)
  {
    Assert.assertUiThread();
    setTextSize(0, 0.0F);
    setTextSize(0, paramSizingResult.textSize);
    setPadding(0, (int)-getPaint().getFontMetrics().bottom, 0, 0);
    setMaxLines(paramSizingResult.numLines);
    setEllipsize(TextUtils.TruncateAt.END);
    if (this.textClipListener != null)
    {
      String str = getText().toString();
      if (paramSizingResult.textEnd < str.length())
        this.textClipListener.onTextClipped(str.substring(paramSizingResult.textEnd));
    }
  }

  private SizingResult calculateTextSize(CharSequence paramCharSequence, int paramInt, float paramFloat1, float paramFloat2, boolean paramBoolean, Layout.Alignment paramAlignment)
  {
    int i = 0;
    int j = -1 + this.textSizes.length();
    float f1 = this.textSizes.getDimensionPixelSize(j, 0);
    if (!this.isForcedToSmallestSize)
    {
      float f2 = f1;
      if (i <= j)
      {
        int i3 = i + j >> 1;
        float f3 = this.textSizes.getDimensionPixelSize(i3, 0);
        LayoutCacheKey localLayoutCacheKey2 = new LayoutCacheKey(paramInt, f3, paramAlignment, paramFloat1, paramFloat2, paramBoolean);
        Pair localPair2 = getLayout(localLayoutCacheKey2);
        reflowWithText(localPair2, paramCharSequence);
        int i4 = ((DynamicLayout)localPair2.second).getHeight();
        getPool(localLayoutCacheKey2).offer(localPair2);
        float f4;
        if (i4 <= getHeight())
        {
          f4 = Math.max(f2, f3);
          j = i3 - 1;
        }
        while (true)
        {
          f2 = f4;
          break;
          i = i3 + 1;
          f4 = f2;
        }
      }
      f1 = f2;
    }
    LayoutCacheKey localLayoutCacheKey1 = new LayoutCacheKey(paramInt, f1, paramAlignment, paramFloat1, paramFloat2, paramBoolean);
    Pair localPair1 = getLayout(localLayoutCacheKey1);
    reflowWithText(localPair1, paramCharSequence);
    int k = ((DynamicLayout)localPair1.second).getHeight();
    int m = ((DynamicLayout)localPair1.second).getLineCount();
    int n = (k - 2 * ((DynamicLayout)localPair1.second).getBottomPadding()) / m;
    int i1 = Math.min(Math.max(1, getHeight() / n), m);
    int i2 = ((DynamicLayout)localPair1.second).getLineEnd(i1 - 1);
    getPool(localLayoutCacheKey1).offer(localPair1);
    SizingResult localSizingResult = new SizingResult(f1, i1, i2);
    SizingCacheKey localSizingCacheKey = new SizingCacheKey(paramCharSequence, paramInt, getHeight(), this.isForcedToSmallestSize);
    sizingCache.put(localSizingCacheKey, localSizingResult);
    return localSizingResult;
  }

  private Pair<MutableCharSequence, DynamicLayout> getLayout(LayoutCacheKey paramLayoutCacheKey)
  {
    Pair localPair = (Pair)getPool(paramLayoutCacheKey).poll();
    if (localPair == null)
    {
      MutableCharSequence localMutableCharSequence = new MutableCharSequence();
      TextPaint localTextPaint = new TextPaint(getPaint());
      localTextPaint.setTextSize(paramLayoutCacheKey.textSizePx);
      localPair = Pair.create(localMutableCharSequence, new DynamicLayout(localMutableCharSequence, localTextPaint, paramLayoutCacheKey.width, paramLayoutCacheKey.alignment, paramLayoutCacheKey.textViewLineSpacingMultiplier, paramLayoutCacheKey.textViewLineSpacingExtra, paramLayoutCacheKey.textViewIncludeFontPadding));
    }
    return localPair;
  }

  private LinkedBlockingQueue<Pair<MutableCharSequence, DynamicLayout>> getPool(LayoutCacheKey paramLayoutCacheKey)
  {
    synchronized (layoutCache)
    {
      LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)layoutCache.get(paramLayoutCacheKey);
      if (localLinkedBlockingQueue == null)
      {
        localLinkedBlockingQueue = new LinkedBlockingQueue(16);
        layoutCache.put(paramLayoutCacheKey, localLinkedBlockingQueue);
      }
      return localLinkedBlockingQueue;
    }
  }

  private void initialize()
  {
    this.textSizes = getResources().obtainTypedArray(R.array.dynamic_text_sizes);
    this.sizeTextOnBackgroundThread = true;
  }

  private void reflowWithText(Pair<MutableCharSequence, DynamicLayout> paramPair, CharSequence paramCharSequence)
  {
    MutableCharSequence localMutableCharSequence = (MutableCharSequence)paramPair.first;
    int i = localMutableCharSequence.length();
    localMutableCharSequence.changeText(paramCharSequence, 0, paramCharSequence.length());
    HiddenApiHelper.reflow((DynamicLayout)paramPair.second, localMutableCharSequence, 0, i, localMutableCharSequence.length());
  }

  private void setMaximumTextSize()
  {
    Assert.assertUiThread();
    int i = getWidth();
    CharSequence localCharSequence = getText();
    float f1 = HiddenApiHelper.getTextViewLineSpacingMultiplier(this);
    float f2 = HiddenApiHelper.getTextViewLineSpacingExtra(this);
    boolean bool = HiddenApiHelper.getTextViewIncludeFontPadding(this);
    Layout.Alignment localAlignment = Layout.Alignment.ALIGN_NORMAL;
    if (this.textSizeTask != null)
    {
      this.textSizeTask.cancel(false);
      this.textSizeTask = null;
    }
    if (!TextUtils.isEmpty(localCharSequence))
    {
      SizingCacheKey localSizingCacheKey = new SizingCacheKey(localCharSequence, i, getHeight(), this.isForcedToSmallestSize);
      SizingResult localSizingResult = (SizingResult)sizingCache.get(localSizingCacheKey);
      if (localSizingResult == null)
        break label116;
      setVisibility(0);
      applyTextSize(localSizingResult);
    }
    while (true)
    {
      this.sizeTextOnBackgroundThread = false;
      return;
      label116: if (this.sizeTextOnBackgroundThread)
      {
        setVisibility(4);
        sizeTextOnBackgroundThread(i, localCharSequence, f1, f2, bool, localAlignment);
      }
      else
      {
        setVisibility(0);
        applyTextSize(calculateTextSize(localCharSequence, i, f1, f2, bool, localAlignment));
      }
    }
  }

  private void sizeTextOnBackgroundThread(final int paramInt, final CharSequence paramCharSequence, final float paramFloat1, final float paramFloat2, final boolean paramBoolean, final Layout.Alignment paramAlignment)
  {
    this.textSizeTask = new DeferredContentLoader.LoadingTask()
    {
      protected void bindContent(DynamicSizeTextView.SizingResult paramAnonymousSizingResult)
      {
        if (isCancelled())
          return;
        if (DynamicSizeTextView.this.textSizeTask != this)
        {
          Log.d(DynamicSizeTextView.TAG, "Failed to cancel text sizing task, ignoring result.");
          return;
        }
        DynamicSizeTextView.this.applyTextSize(paramAnonymousSizingResult);
        DynamicSizeTextView.this.setAlpha(0.0F);
        DynamicSizeTextView.this.setVisibility(0);
        int i = DynamicSizeTextView.this.getResources().getInteger(R.integer.horizontal_scroll_deferred_load_animation_duration_ms);
        DynamicSizeTextView.this.animate().alpha(1.0F).setDuration(i).start();
      }

      protected DynamicSizeTextView.SizingResult loadContent()
      {
        if (isCancelled())
          return null;
        return DynamicSizeTextView.this.calculateTextSize(paramCharSequence, paramInt, paramFloat1, paramFloat2, paramBoolean, paramAlignment);
      }

      protected void prepareContent()
      {
      }
    };
    DeferredContentLoader.loadForScrollItemSubview(this, this.textSizeTask);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.sizeTextOnBackgroundThread = true;
    if (this.textSizeTask != null)
    {
      this.textSizeTask.cancel(false);
      this.textSizeTask = null;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.shouldUpdateTextSize)
    {
      this.shouldUpdateTextSize = false;
      setMaximumTextSize();
    }
  }

  public void setForcedToSmallestSize(boolean paramBoolean)
  {
    this.isForcedToSmallestSize = paramBoolean;
  }

  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    super.setText(paramCharSequence, paramBufferType);
    this.shouldUpdateTextSize = true;
    requestLayout();
  }

  public void setTextClipListener(TextClipListener paramTextClipListener)
  {
    this.textClipListener = paramTextClipListener;
  }

  private static final class LayoutCacheKey
  {
    final Layout.Alignment alignment;
    final float textSizePx;
    final boolean textViewIncludeFontPadding;
    final float textViewLineSpacingExtra;
    final float textViewLineSpacingMultiplier;
    final int width;

    LayoutCacheKey(int paramInt, float paramFloat1, Layout.Alignment paramAlignment, float paramFloat2, float paramFloat3, boolean paramBoolean)
    {
      this.width = paramInt;
      this.textSizePx = paramFloat1;
      this.alignment = paramAlignment;
      this.textViewLineSpacingMultiplier = paramFloat2;
      this.textViewLineSpacingExtra = paramFloat3;
      this.textViewIncludeFontPadding = paramBoolean;
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof LayoutCacheKey;
      boolean bool2 = false;
      if (bool1)
      {
        LayoutCacheKey localLayoutCacheKey = (LayoutCacheKey)paramObject;
        int i = this.width;
        int j = localLayoutCacheKey.width;
        bool2 = false;
        if (i == j)
        {
          boolean bool3 = this.textSizePx < localLayoutCacheKey.textSizePx;
          bool2 = false;
          if (!bool3)
          {
            Layout.Alignment localAlignment1 = this.alignment;
            Layout.Alignment localAlignment2 = localLayoutCacheKey.alignment;
            bool2 = false;
            if (localAlignment1 == localAlignment2)
            {
              boolean bool4 = this.textViewLineSpacingMultiplier < localLayoutCacheKey.textViewLineSpacingMultiplier;
              bool2 = false;
              if (!bool4)
              {
                boolean bool5 = this.textViewLineSpacingExtra < localLayoutCacheKey.textViewLineSpacingExtra;
                bool2 = false;
                if (!bool5)
                {
                  boolean bool6 = this.textViewIncludeFontPadding;
                  boolean bool7 = localLayoutCacheKey.textViewIncludeFontPadding;
                  bool2 = false;
                  if (bool6 == bool7)
                    bool2 = true;
                }
              }
            }
          }
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (31 * (31 * this.width ^ Float.floatToIntBits(this.textSizePx)) ^ this.alignment.hashCode()) ^ Float.floatToIntBits(this.textViewLineSpacingMultiplier)) ^ Float.floatToIntBits(this.textViewLineSpacingExtra));
      if (this.textViewIncludeFontPadding);
      for (int j = 1; ; j = 0)
        return i ^ j;
    }
  }

  private static final class MutableCharSequence
    implements CharSequence
  {
    int end;
    int start;
    CharSequence str;

    MutableCharSequence()
    {
      changeText("", 0, 0);
    }

    MutableCharSequence(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      changeText(paramCharSequence, paramInt1, paramInt2);
    }

    void changeText(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      this.str = paramCharSequence;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public char charAt(int paramInt)
    {
      return this.str.charAt(paramInt + this.start);
    }

    public int length()
    {
      return this.end - this.start;
    }

    public CharSequence subSequence(int paramInt1, int paramInt2)
    {
      return new MutableCharSequence(this.str, paramInt1 + this.start, paramInt2 + this.start);
    }
  }

  private static final class SizingCacheKey
  {
    final int height;
    final boolean isForcedToSmallestSize;
    final String text;
    final int width;

    SizingCacheKey(CharSequence paramCharSequence, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.text = paramCharSequence.toString();
      this.width = paramInt1;
      this.height = paramInt2;
      this.isForcedToSmallestSize = paramBoolean;
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof SizingCacheKey;
      boolean bool2 = false;
      if (bool1)
      {
        SizingCacheKey localSizingCacheKey = (SizingCacheKey)paramObject;
        boolean bool3 = this.text.equals(localSizingCacheKey.text);
        bool2 = false;
        if (bool3)
        {
          int i = this.width;
          int j = localSizingCacheKey.width;
          bool2 = false;
          if (i == j)
          {
            int k = this.height;
            int m = localSizingCacheKey.height;
            bool2 = false;
            if (k == m)
            {
              boolean bool4 = this.isForcedToSmallestSize;
              boolean bool5 = localSizingCacheKey.isForcedToSmallestSize;
              bool2 = false;
              if (bool4 == bool5)
                bool2 = true;
            }
          }
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * this.text.hashCode() ^ this.width) ^ this.height);
      if (this.isForcedToSmallestSize);
      for (int j = 1; ; j = 0)
        return i ^ j;
    }
  }

  private static final class SizingResult
  {
    final int numLines;
    final int textEnd;
    final float textSize;

    SizingResult(float paramFloat, int paramInt1, int paramInt2)
    {
      this.textSize = paramFloat;
      this.numLines = paramInt1;
      this.textEnd = paramInt2;
    }
  }

  public static abstract interface TextClipListener
  {
    public abstract void onTextClipped(String paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.DynamicSizeTextView
 * JD-Core Version:    0.6.2
 */