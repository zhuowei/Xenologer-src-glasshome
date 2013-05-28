package com.google.glass.horizontalscroll;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.input.ItemScroller;
import com.google.glass.input.ItemScroller.Scrollable;
import com.google.glass.input.SwipeDirection;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public abstract class BaseHorizontalScrollView<I, T> extends AdapterView<Adapter>
{
  private static final int MAX_CARD_SPACING_PX = 10;
  private static final int MIN_CARD_SPACING_PX = 2;
  private static final int NUM_VIEWS_TO_LOAD = 5;
  private static final int SCREEN_WIDTH = 640;
  private static final String TAG = BaseHorizontalScrollView.class.getSimpleName();
  private static final int VIEW_INDEX_CARD = 0;
  private static final int VIEW_INDEX_SHEEN = 1;
  private Adapter adapter;
  private final List<ImageView> cardSheenCache = new ArrayList();
  private float currentScale = 1.0F;
  private int currentTranslation;
  private final Runnable focusSoundRunnable = new Runnable()
  {
    public void run()
    {
      BaseHorizontalScrollView.this.soundManager.playSound(SoundManager.SoundId.FOCUS);
    }
  };
  private final List<FrameLayout> frameLayoutCache = new ArrayList();
  private boolean isActivated;
  private final ItemScroller itemScroller;
  private final SparseBooleanArray loadedPositions = new SparseBooleanArray();
  private PositionListener positionListener;
  private final List<View> rebindViews = new ArrayList();
  private float scrollVelocity = 0.0F;
  private final ItemScroller.Scrollable scrollable;
  private float scrollerPosition = this.selectedPosition;
  private double scrollerPositionUpdateTime = 0.0D;
  private int selectedPosition;
  private int selectedViewIndex;
  private final Drawable sheenDrawable;
  private final boolean shouldShowCardSheen;
  private final SoundManager soundManager;
  private boolean viewUpdatePending;

  public BaseHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
    this.shouldShowCardSheen = paramBoolean;
    this.sheenDrawable = paramContext.getResources().getDrawable(R.drawable.card_sheen);
    this.scrollable = new ItemScroller.Scrollable()
    {
      public float getItem()
      {
        return BaseHorizontalScrollView.this.scrollerPosition;
      }

      public int getNumberOfItems()
      {
        if (!BaseHorizontalScrollView.this.hasData())
          return 0;
        return BaseHorizontalScrollView.this.getItemCount();
      }

      public float getScale()
      {
        return BaseHorizontalScrollView.this.currentScale;
      }

      public void setItem(float paramAnonymousFloat)
      {
        if (!BaseHorizontalScrollView.this.isActivated)
          Log.w(BaseHorizontalScrollView.TAG, "setItem(" + paramAnonymousFloat + ") while deactivated.");
        label409: label427: 
        while (true)
        {
          return;
          float f = BaseHorizontalScrollView.this.scrollerPosition;
          double d1 = BaseHorizontalScrollView.this.scrollerPositionUpdateTime;
          boolean bool = BaseHorizontalScrollView.this.isSettled();
          double d2 = System.nanoTime() / 1000000000.0D;
          BaseHorizontalScrollView.access$102(BaseHorizontalScrollView.this, paramAnonymousFloat);
          BaseHorizontalScrollView.access$402(BaseHorizontalScrollView.this, d2);
          if ((d1 > 0.0D) && (d2 > d1))
            BaseHorizontalScrollView.access$602(BaseHorizontalScrollView.this, (float)((BaseHorizontalScrollView.this.scrollerPosition - f) / (d2 - d1)));
          int i = Math.round(BaseHorizontalScrollView.this.scrollerPosition);
          int k;
          if (BaseHorizontalScrollView.this.hasData())
          {
            k = BaseHorizontalScrollView.this.getItemCount();
            if ((i < 0) || (i >= k))
            {
              Log.w(BaseHorizontalScrollView.TAG, "Invalid position reported from item scroller; item count: " + k + "; reported position: " + paramAnonymousFloat + " (rounded to " + i + ")");
              if (i < 0)
                i = 0;
            }
            else
            {
              int j = (int)(640.0F * (i - BaseHorizontalScrollView.this.scrollerPosition));
              if (BaseHorizontalScrollView.this.selectedPosition != i)
              {
                BaseHorizontalScrollView.this.internalSetSelectedPosition(i, true);
                Assert.assertTrue(BaseHorizontalScrollView.this.updateViewsInternal(false));
                if (bool)
                  BaseHorizontalScrollView.this.onSettledInternal();
              }
              if (BaseHorizontalScrollView.this.currentTranslation != j)
                BaseHorizontalScrollView.this.setTranslationAndScale(j, BaseHorizontalScrollView.this.currentScale);
              if (!bool)
                break label409;
              if (!BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onUnsettledInternal();
            }
          }
          while (true)
          {
            if ((BaseHorizontalScrollView.this.positionListener == null) || (BaseHorizontalScrollView.this.scrollerPosition == f))
              break label427;
            BaseHorizontalScrollView.this.positionListener.onScrollPositionChanged(BaseHorizontalScrollView.this.scrollerPosition);
            return;
            i = k - 1;
            break;
            if (i == 0)
              break;
            i = 0;
            break;
            if (BaseHorizontalScrollView.this.isSettled())
              BaseHorizontalScrollView.this.onSettledInternal();
          }
        }
      }

      public void setScale(float paramAnonymousFloat)
      {
        if (!BaseHorizontalScrollView.this.isActivated)
          Log.w(BaseHorizontalScrollView.TAG, "setScale(" + paramAnonymousFloat + ") while deactivated.");
        while (true)
        {
          return;
          if (BaseHorizontalScrollView.this.currentScale != paramAnonymousFloat)
          {
            boolean bool = BaseHorizontalScrollView.this.isSettled();
            BaseHorizontalScrollView.this.setTranslationAndScale(BaseHorizontalScrollView.this.currentTranslation, paramAnonymousFloat);
            if (bool)
              if (!BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onUnsettledInternal();
            while (BaseHorizontalScrollView.this.positionListener != null)
            {
              BaseHorizontalScrollView.this.positionListener.onScaleChanged(paramAnonymousFloat);
              return;
              if (BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onSettledInternal();
            }
          }
        }
      }
    };
    this.itemScroller = new ItemScroller(paramContext, this.scrollable);
  }

  public BaseHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramContext, paramAttributeSet, 0, paramBoolean);
  }

  public BaseHorizontalScrollView(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, null, 0, paramBoolean);
  }

  private void addChildView(int paramInt)
  {
    int i = 0;
    int j = getChildCount();
    if (i < j)
      if (paramInt != ((Integer)getCard(i).getTag(R.id.tag_horizontal_scroll_item_position)).intValue());
    label105: View localView1;
    do
    {
      return;
      i++;
      break;
      int k = 0;
      int m = getChildCount();
      while (true)
      {
        if (k >= m)
          break label105;
        if (((Integer)getCard(k).getTag(R.id.tag_horizontal_scroll_item_position)).intValue() > paramInt)
        {
          View localView2 = loadView(paramInt);
          if (localView2 == null)
            break;
          constructFrame(k, localView2);
          return;
        }
        k++;
      }
      localView1 = loadView(paramInt);
    }
    while (localView1 == null);
    constructFrame(-1, localView1);
  }

  private int calculateCardSpacingPx()
  {
    return (int)Math.max(2.0F, 10.0F * getZoomOutFactor());
  }

  private void constructFrame(int paramInt, View paramView)
  {
    FrameLayout localFrameLayout = createFrame();
    localFrameLayout.addView(paramView);
    ImageView localImageView = createCardSheen();
    localFrameLayout.addView(localImageView);
    localImageView.setVisibility(8);
    paramView.setTag(R.id.tag_horizontal_scroll_card_sheen, localImageView);
    addViewInLayout(localFrameLayout, paramInt, getDefaultLayoutParams(), true);
    getStateManager(paramView).onLoad();
  }

  private ImageView createCardSheen()
  {
    if (this.cardSheenCache.isEmpty());
    for (ImageView localImageView = new ImageView(getContext()); ; localImageView = (ImageView)this.cardSheenCache.remove(-1 + this.cardSheenCache.size()))
    {
      localImageView.setImageDrawable(this.sheenDrawable);
      return localImageView;
    }
  }

  private FrameLayout createFrame()
  {
    if (this.frameLayoutCache.isEmpty())
      return new FrameLayout(getContext());
    return (FrameLayout)this.frameLayoutCache.remove(-1 + this.frameLayoutCache.size());
  }

  private ImageView getCardSheen(int paramInt)
  {
    return (ImageView)((ViewGroup)getChildAt(paramInt)).getChildAt(1);
  }

  private static FrameLayout.LayoutParams getDefaultLayoutParams()
  {
    return new FrameLayout.LayoutParams(-1, -1);
  }

  private int getItemCount()
  {
    if (this.adapter == null)
      return 0;
    return this.adapter.getCount();
  }

  private int getNumViewsToLoadInternal()
  {
    return Math.max(0, getNumViewsToLoad());
  }

  private HorizontalScrollItemStateManager getStateManager(View paramView)
  {
    return (HorizontalScrollItemStateManager)paramView.getTag(R.id.tag_horizontal_scroll_item_state_manager);
  }

  private boolean hasData()
  {
    return (this.adapter != null) && (!this.adapter.isEmpty());
  }

  private void internalSetSelectedPosition(int paramInt, boolean paramBoolean)
  {
    if (paramInt != this.selectedPosition)
    {
      this.selectedPosition = paramInt;
      if (paramBoolean)
        AsyncThreadExecutorManager.getThreadPoolExecutor().execute(this.focusSoundRunnable);
      onFocused(this.selectedPosition);
      if (this.positionListener != null)
        this.positionListener.onFocused(this.selectedPosition);
    }
  }

  private boolean isSettled()
  {
    return (this.scrollerPosition == this.selectedPosition) && (this.currentScale == 1.0F);
  }

  private View loadView(int paramInt)
  {
    View localView = null;
    if (paramInt >= 0)
    {
      int i = getItemCount();
      localView = null;
      if (paramInt < i)
      {
        localView = getViewForPosition(paramInt);
        Assert.assertNotNull(localView);
        if (localView.getTag(R.id.tag_horizontal_scroll_item_view_recycler) == null)
          throw new IllegalStateException("Recycler must be set, position: " + paramInt);
        localView.setTag(R.id.tag_horizontal_scroll_item_state_manager, new HorizontalScrollItemStateManager(localView));
        localView.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(paramInt));
      }
    }
    return localView;
  }

  private void onSettledInternal()
  {
    if (getChildCount() > 0)
      getStateManager(getSelectedView()).onSettled();
    onSettled();
    resetScrollVelocity();
    if (this.positionListener != null)
      this.positionListener.onSettled(this.selectedPosition);
  }

  private void onUnsettledInternal()
  {
    if (getChildCount() > 0)
      getStateManager(getSelectedView()).onUnsettled();
    onUnsettled();
    if (this.positionListener != null)
      this.positionListener.onUnsettled(this.selectedPosition);
  }

  private void removeChildView(int paramInt)
  {
    if (paramInt == this.selectedViewIndex)
    {
      getStateManager(getSelectedView()).onUnfocus();
      this.selectedViewIndex = -1;
    }
    while (true)
    {
      View localView = getCard(paramInt);
      ImageView localImageView = getCardSheen(paramInt);
      FrameLayout localFrameLayout = (FrameLayout)getChildAt(paramInt);
      localFrameLayout.removeAllViews();
      removeViewInLayout(localFrameLayout);
      unloadView(localView);
      localView.setTag(R.id.tag_horizontal_scroll_card_sheen, null);
      this.frameLayoutCache.add(localFrameLayout);
      this.cardSheenCache.add(localImageView);
      return;
      if (paramInt < this.selectedViewIndex)
        this.selectedViewIndex = (-1 + this.selectedViewIndex);
    }
  }

  private void resetScrollVelocity()
  {
    this.scrollVelocity = 0.0F;
    this.scrollerPositionUpdateTime = 0.0D;
  }

  private void setTranslationAndScale(int paramInt, float paramFloat)
  {
    this.currentTranslation = paramInt;
    this.currentScale = paramFloat;
    invalidate();
    int i = calculateCardSpacingPx();
    int j = 0;
    int k = getChildCount();
    while (j < k)
    {
      translateAndScaleChild(getChildAt(j), j, i);
      j++;
    }
  }

  private void translateAndScaleChild(View paramView, int paramInt1, int paramInt2)
  {
    float f1 = 640.0F * this.currentScale;
    float f2 = (f1 + paramInt2) * (this.scrollerPosition - Math.round(this.scrollerPosition));
    float f3 = (paramInt1 - this.selectedViewIndex) * (f1 + paramInt2) - f2;
    float f4 = f3 + 320.0F * (1.0F - this.currentScale);
    if ((f4 > 640.0F) || (f4 < -(640.0F * this.currentScale)))
      paramView.setVisibility(4);
    ImageView localImageView;
    while (true)
    {
      if (this.shouldShowCardSheen)
      {
        localImageView = getCardSheen(paramInt1);
        if (this.currentScale >= 1.0F)
          break;
        localImageView.setVisibility(0);
        localImageView.setAlpha(getZoomOutFactor());
      }
      return;
      paramView.setVisibility(0);
      paramView.setTranslationX(Math.round(f3));
      paramView.setScaleX(this.currentScale);
      paramView.setScaleY(this.currentScale);
    }
    localImageView.setVisibility(8);
  }

  private void unloadView(View paramView)
  {
    getStateManager(paramView).onUnload();
    paramView.setTag(R.id.tag_horizontal_scroll_item_state_manager, null);
    Integer localInteger = (Integer)paramView.getTag(R.id.tag_horizontal_scroll_item_position);
    Assert.assertNotNull(localInteger);
    if (localInteger.intValue() != -1);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      paramView.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(-1));
      ((ViewRecycler)paramView.getTag(R.id.tag_horizontal_scroll_item_view_recycler)).recycleView(paramView);
      return;
    }
  }

  private boolean updateViewsInternal(boolean paramBoolean)
  {
    int i = getItemCount();
    if (!this.isActivated)
    {
      this.viewUpdatePending = (paramBoolean | this.viewUpdatePending);
      return false;
    }
    if (paramBoolean)
    {
      int i3 = getChildCount();
      int i4 = 0;
      if (i3 > 0)
      {
        Object localObject2 = getSelectedItem();
        i4 = 0;
        if (localObject2 != null)
        {
          int i11 = findItemPosition(localObject2);
          if (i11 == -1)
            break label264;
          i4 = 1;
          if (i4 != 0)
          {
            Integer localInteger2 = (Integer)getSelectedView().getTag(R.id.tag_horizontal_scroll_item_position);
            if (i11 != localInteger2.intValue())
            {
              int i12 = i11 - localInteger2.intValue();
              internalSetSelectedPosition(i11, false);
              this.scrollerPosition += i12;
              resetScrollVelocity();
            }
          }
        }
      }
      if ((i4 == 0) && (this.selectedPosition >= i))
      {
        int i9 = Math.max(0, i - 1);
        int i10 = i9 - this.selectedPosition;
        internalSetSelectedPosition(i9, false);
        this.scrollerPosition += i10;
        resetScrollVelocity();
      }
      Assert.assertTrue(this.rebindViews.isEmpty());
      int i5 = -1 + getChildCount();
      label210: if (i5 >= 0)
      {
        View localView4 = getCard(i5);
        Object localObject1 = localView4.getTag(R.id.tag_horizontal_scroll_item);
        int i8;
        if (localObject1 != null)
        {
          i8 = findItemPosition(localObject1);
          if (i8 == -1)
            removeChildView(i5);
        }
        while (true)
        {
          i5--;
          break label210;
          i4 = 0;
          break;
          localView4.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(i8));
          this.rebindViews.add(localView4);
          continue;
          removeChildView(i5);
        }
      }
      label264: if (!this.rebindViews.isEmpty())
      {
        int i6 = 0;
        int i7 = this.rebindViews.size();
        while (i6 < i7)
        {
          View localView3 = (View)this.rebindViews.get(i6);
          rebindView(((Integer)localView3.getTag(R.id.tag_horizontal_scroll_item_position)).intValue(), localView3);
          i6++;
        }
        this.rebindViews.clear();
      }
    }
    View localView1 = getSelectedView();
    this.loadedPositions.clear();
    if (hasData())
    {
      int n = getNumViewsToLoadInternal();
      int i1 = this.selectedPosition - n / 2;
      for (int i2 = 0; i2 < n; i2++)
      {
        this.loadedPositions.put(i1, true);
        addChildView(i1);
        i1++;
      }
    }
    this.selectedViewIndex = -1;
    int j = 0;
    int k = getChildCount();
    boolean bool1;
    label536: View localView2;
    int m;
    if (j < k)
    {
      if (((Integer)getCard(j).getTag(R.id.tag_horizontal_scroll_item_position)).intValue() == this.selectedPosition)
        this.selectedViewIndex = j;
    }
    else
    {
      if ((getChildCount() != 0) && (i != 0) && (this.selectedViewIndex == -1))
        break label663;
      bool1 = true;
      Assert.assertTrue(bool1);
      localView2 = getSelectedView();
      if (localView2 != localView1)
      {
        if (localView1 != null)
          getStateManager(localView1).onUnfocus();
        if (localView2 != null)
          getStateManager(localView2).onFocus();
      }
      m = -1 + getChildCount();
      label587: if (m < 0)
        break label675;
      Integer localInteger1 = (Integer)getCard(m).getTag(R.id.tag_horizontal_scroll_item_position);
      if (!this.loadedPositions.get(localInteger1.intValue()))
        if ((m == this.selectedViewIndex) && (i != 0))
          break label669;
    }
    label663: label669: for (boolean bool3 = true; ; bool3 = false)
    {
      Assert.assertTrue(bool3);
      removeChildView(m);
      m--;
      break label587;
      j++;
      break;
      bool1 = false;
      break label536;
    }
    label675: if (getSelectedView() == localView2);
    for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      requestLayout();
      if (localView1 == localView2)
        break;
      return true;
    }
    return false;
  }

  public final void activate()
  {
    Log.d(TAG, "Activating.");
    Assert.assertUiThread();
    Assert.assertFalse(this.isActivated);
    onPreActivate();
    this.isActivated = true;
    int i = getChildCount();
    if (i == 0)
      updateViews(false);
    while (true)
    {
      this.viewUpdatePending = false;
      return;
      if (i > 0)
      {
        for (int j = 0; j < i; j++)
          getStateManager(getCard(j)).onLoad();
        getStateManager(getSelectedView()).onFocus();
        if (getChildCount() > 0)
          onSettledInternal();
        if (this.viewUpdatePending)
          updateViews(true);
      }
    }
  }

  public final void deactivate()
  {
    Log.d(TAG, "Deactivating.");
    Assert.assertUiThread();
    Assert.assertTrue(this.isActivated);
    onPreDeactivate();
    int i = getChildCount();
    if (i > 0)
    {
      this.itemScroller.snapToNearest(false);
      getStateManager(getSelectedView()).onUnfocus();
      for (int j = 0; j < i; j++)
        getStateManager(getCard(j)).onUnload();
    }
    this.isActivated = false;
  }

  public abstract int findIdPosition(I paramI);

  public abstract int findItemPosition(T paramT);

  public final Adapter getAdapter()
  {
    return this.adapter;
  }

  public int getAnticipatedSettlePosition()
  {
    if (this.scrollVelocity == 0.0F)
      return this.selectedPosition;
    int i = this.itemScroller.getAnticipatedSettlePosition(this.scrollVelocity);
    if (((i >= this.selectedPosition) && (this.scrollVelocity > 0.0F)) || ((i <= this.selectedPosition) && (this.scrollVelocity < 0.0F)));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return i;
    }
  }

  protected View getCard(int paramInt)
  {
    return ((ViewGroup)getChildAt(paramInt)).getChildAt(0);
  }

  public abstract int getHomePosition();

  public final T getItemForChildAt(int paramInt)
  {
    return getCard(paramInt).getTag(R.id.tag_horizontal_scroll_item);
  }

  public final View getItemViewForChildAt(int paramInt)
  {
    return getCard(paramInt);
  }

  protected int getNumViewsToLoad()
  {
    return 5;
  }

  public final float getScrollPosition()
  {
    return this.scrollerPosition;
  }

  public final float getScrollVelocity()
  {
    return this.scrollVelocity;
  }

  public ItemScroller.Scrollable getScrollable()
  {
    return this.scrollable;
  }

  public final T getSelectedItem()
  {
    View localView = getSelectedView();
    if (localView != null)
      return localView.getTag(R.id.tag_horizontal_scroll_item);
    return null;
  }

  public T getSelectedItemParent()
  {
    return getSelectedItem();
  }

  public final int getSelectedItemPosition()
  {
    return this.selectedPosition;
  }

  public final View getSelectedView()
  {
    if (getChildCount() == 0);
    while (this.selectedViewIndex < 0)
      return null;
    return getCard(this.selectedViewIndex);
  }

  public abstract View getViewForPosition(int paramInt);

  public float getZoomOutFactor()
  {
    return 1.0F - (this.currentScale - 0.33F) / 0.67F;
  }

  public float getZoomScale()
  {
    return this.currentScale;
  }

  public final boolean isActivated()
  {
    return this.isActivated;
  }

  public final boolean onConfirm(GlassActivity paramGlassActivity, boolean paramBoolean)
  {
    if (!this.isActivated)
      Log.w(TAG, "onConfirm while deactivated.");
    HorizontalScrollItem localHorizontalScrollItem;
    do
    {
      do
      {
        return false;
        if (this.itemScroller.onConfirm())
          return true;
      }
      while (getChildCount() <= 0);
      localHorizontalScrollItem = (HorizontalScrollItem)getSelectedView();
      if (paramBoolean)
      {
        TimelineItemId localTimelineItemId = localHorizontalScrollItem.getBundleId();
        if (localTimelineItemId != null)
        {
          paramGlassActivity.getSoundManager().playSound(SoundManager.SoundId.TAP);
          TimelineHelper.goToBundle(paramGlassActivity, localTimelineItemId, false);
          return true;
        }
      }
    }
    while (!localHorizontalScrollItem.onConfirm(paramGlassActivity));
    if (!localHorizontalScrollItem.shouldSuppressSingleTapSound())
      paramGlassActivity.getSoundManager().playSound(SoundManager.SoundId.TAP);
    return true;
  }

  public final boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    if (!this.isActivated)
      Log.w(TAG, "onDoubleTap while deactivated.");
    while ((getChildCount() <= 0) || (!((HorizontalScrollItem)getSelectedView()).onDoubleTap(paramGlassActivity)))
      return false;
    paramGlassActivity.getSoundManager().playSound(SoundManager.SoundId.TAP);
    return true;
  }

  public final boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (!this.isActivated)
      Log.w(TAG, "onFingerCountChanged while deactivated.");
    do
    {
      return false;
      this.itemScroller.onFingerCountChanged(paramInt, paramBoolean);
    }
    while ((!paramBoolean) || (paramInt != 1));
    resetScrollVelocity();
    return true;
  }

  protected void onFocused(int paramInt)
  {
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    int k = calculateCardSpacingPx();
    int m = 0;
    int n = getChildCount();
    while (m < n)
    {
      View localView = getChildAt(m);
      translateAndScaleChild(localView, m, k);
      localView.measure(i, j);
      localView.layout(0, 0, localView.getMeasuredWidth(), localView.getMeasuredHeight());
      m++;
    }
  }

  protected void onPreActivate()
  {
  }

  protected void onPreDeactivate()
  {
  }

  public final boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (!this.isActivated)
    {
      Log.w(TAG, "onPrepareSwipe while deactivated.");
      return false;
    }
    this.itemScroller.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return true;
  }

  protected void onSettled()
  {
  }

  public final void onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (!this.isActivated)
    {
      Log.w(TAG, "onSwipe while deactivated.");
      return;
    }
    this.itemScroller.onSwipe(paramInt, paramSwipeDirection);
  }

  protected void onUnsettled()
  {
  }

  public abstract void rebindView(int paramInt, View paramView);

  public void setAdapter(Adapter paramAdapter)
  {
    this.adapter = paramAdapter;
  }

  public final void setPositionListener(PositionListener paramPositionListener)
  {
    this.positionListener = paramPositionListener;
  }

  public final void setSelection(int paramInt)
  {
    setSelection(paramInt, false);
  }

  public final void setSelection(int paramInt, boolean paramBoolean)
  {
    if (!hasData());
    do
    {
      do
      {
        return;
        if ((paramInt >= 0) && (paramInt < this.adapter.getCount()))
          break;
      }
      while (paramBoolean);
      setTranslationAndScale(0, this.currentScale);
      return;
      if (paramInt != this.scrollerPosition)
        this.itemScroller.setItem(paramInt);
    }
    while (paramBoolean);
    setTranslationAndScale(0, this.currentScale);
  }

  public final boolean setSelection(I paramI, boolean paramBoolean)
  {
    if (!hasData());
    int i;
    do
    {
      return false;
      i = findIdPosition(paramI);
      Log.d(TAG, "Searched for ID " + paramI + "; result position: " + i);
    }
    while (i == -1);
    setSelection(i, paramBoolean);
    return true;
  }

  public final boolean shouldSuppressSingleTapSound()
  {
    if (!this.isActivated);
    while (getChildCount() <= 0)
      return false;
    return ((HorizontalScrollItem)getSelectedView()).shouldSuppressSingleTapSound();
  }

  public final void updateViews(boolean paramBoolean)
  {
    if ((updateViewsInternal(paramBoolean)) && (isSettled()) && (getChildCount() > 0))
      onSettledInternal();
  }

  public static abstract interface PositionListener
  {
    public abstract void onFocused(int paramInt);

    public abstract void onScaleChanged(float paramFloat);

    public abstract void onScrollPositionChanged(float paramFloat);

    public abstract void onSettled(int paramInt);

    public abstract void onUnsettled(int paramInt);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.horizontalscroll.BaseHorizontalScrollView
 * JD-Core Version:    0.6.2
 */