package com.google.glass.home.voice;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassError;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.voice.menu.VoiceMenuEnvironment;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.util.Assert;
import com.google.glass.util.LogHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.widget.TypophileTextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

public class VoiceMenu extends FrameLayout
{
  private static final float FADE_OUT_ALPHA = 0.2F;
  private static final long MENU_ITEM_ANIMATE_IN_DELAY_MILLIS = 50L;
  private static final long MENU_ITEM_ANIMATE_IN_DURATION_MILLIS = 220L;
  private static final long MENU_ITEM_SELECTION_ANIMATION_DURATION_MILLIS = 100L;
  private static final long MENU_ITEM_SELECTION_DURATION_MILLIS = 1000L;
  private static final int MSG_ANIMATE_IN = 1;
  private static final int MSG_END_SECONDARY_MENU_ITEM_SELECTION = 2;
  private static final String TAG = VoiceMenu.class.getSimpleName();
  private List<? extends VoiceMenuItem> currentItems;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 1:
      case 2:
      }
      while (true)
      {
        return;
        VoiceMenu.this.animateIn((View)paramAnonymousMessage.obj);
        return;
        TypophileTextView localTypophileTextView1 = (TypophileTextView)paramAnonymousMessage.obj;
        Iterator localIterator = VoiceMenu.this.secondaryMenuItemViews.values().iterator();
        while (localIterator.hasNext())
        {
          TypophileTextView localTypophileTextView2 = (TypophileTextView)localIterator.next();
          if (localTypophileTextView2 != localTypophileTextView1)
            localTypophileTextView2.animate().alpha(1.0F).setDuration(100L);
        }
      }
    }
  };
  private LinearLayout mainMenu;
  private final LinkedHashMap<VoiceMenuItem, TypophileTextView> mainMenuItemViews = new LinkedHashMap();
  private OverscrollView mainScrollView;
  private LinearLayout menuItemsLayout;
  private LinkedHashMap<VoiceMenuItem, TypophileTextView> secondaryMenuItemViews;
  private LinearLayout secondaryMenuLayout;
  private OverscrollView secondaryMenuScrollView;
  private TypophileTextView selectedMainMenuItem;
  private TypophileTextView selectedSecondaryMenuItem;
  private OverscrollView visibleScrollView;
  private VoiceMenuListener voiceMenuListener;

  public VoiceMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public VoiceMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(getContext()).inflate(R.layout.voice_menu, this);
    initViews();
    setVisibleScrollView(this.mainScrollView);
  }

  private void addMainMenuItem(VoiceMenuItem paramVoiceMenuItem)
  {
    TypophileTextView localTypophileTextView = newMenuItem(paramVoiceMenuItem.getLabel(getContext()));
    this.mainMenuItemViews.put(paramVoiceMenuItem, localTypophileTextView);
    this.menuItemsLayout.addView(localTypophileTextView);
  }

  private void animateIn(View paramView)
  {
    paramView.setTranslationY(getResources().getDisplayMetrics().heightPixels);
    paramView.setVisibility(0);
    paramView.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L);
  }

  private void initViews()
  {
    this.mainMenu = ((LinearLayout)findViewById(R.id.main_menu));
    this.selectedMainMenuItem = ((TypophileTextView)findViewById(R.id.voice_menu_selected_main_menu_item));
    this.selectedSecondaryMenuItem = ((TypophileTextView)findViewById(R.id.voice_menu_selected_secondary_menu_item));
    this.mainScrollView = ((OverscrollView)findViewById(R.id.voice_menu_main_scroll_view));
    this.menuItemsLayout = ((LinearLayout)findViewById(R.id.voice_menu_items));
    this.secondaryMenuScrollView = ((OverscrollView)findViewById(R.id.voice_menu_secondary_scroll_view));
    this.secondaryMenuLayout = ((LinearLayout)findViewById(R.id.voice_menu_secondary_menu_layout));
  }

  private TypophileTextView newMenuItem(String paramString)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)LayoutInflater.from(getContext()).inflate(R.layout.voice_menu_item, null);
    localTypophileTextView.setText(paramString);
    return localTypophileTextView;
  }

  private LinkedHashMap<VoiceMenuItem, TypophileTextView> populateLayoutWithItems(LinearLayout paramLinearLayout, Collection<VoiceMenuItem> paramCollection)
  {
    Assert.assertUiThread();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(paramCollection.size());
    paramLinearLayout.removeAllViews();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      TypophileTextView localTypophileTextView = newMenuItem(localVoiceMenuItem.getLabel(getContext()));
      localLinkedHashMap.put(localVoiceMenuItem, localTypophileTextView);
      paramLinearLayout.addView(localTypophileTextView);
    }
    return localLinkedHashMap;
  }

  private void promoteMenuItem(final TypophileTextView paramTypophileTextView, final OverscrollView paramOverscrollView, final Runnable paramRunnable)
  {
    selectMainMenuItem(paramTypophileTextView, new Runnable()
    {
      public void run()
      {
        VoiceMenu.this.selectedMainMenuItem.setText(paramTypophileTextView.getText());
        float f = paramTypophileTextView.getY() - paramOverscrollView.getScrollY() + paramOverscrollView.getChildAt(0).getTranslationY();
        VoiceMenu.this.selectedMainMenuItem.setTranslationY(f);
        VoiceMenu.this.selectedMainMenuItem.setVisibility(0);
        VoiceMenu.this.menuItemsLayout.setVisibility(8);
        VoiceMenu.this.selectedMainMenuItem.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L).setListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            if (VoiceMenu.4.this.val$postAnimationRunnable != null)
              VoiceMenu.4.this.val$postAnimationRunnable.run();
            VoiceMenu.this.selectedMainMenuItem.animate().setListener(null);
          }
        });
      }
    });
  }

  private void selectMainMenuItem(TypophileTextView paramTypophileTextView, final Runnable paramRunnable)
  {
    paramTypophileTextView.setEnabled(true);
    ArrayList localArrayList = Lists.newArrayList(this.mainMenuItemViews.values());
    localArrayList.remove(paramTypophileTextView);
    int i = 0;
    if (i < localArrayList.size())
    {
      final TypophileTextView localTypophileTextView = (TypophileTextView)localArrayList.get(i);
      if (i == -1 + localArrayList.size());
      for (AnimatorListenerAdapter local5 = new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (paramRunnable != null)
            paramRunnable.run();
          localTypophileTextView.animate().setListener(null);
        }
      }
      ; ; local5 = null)
      {
        localTypophileTextView.animate().alpha(0.2F).setDuration(100L).setListener(local5);
        i++;
        break;
      }
    }
  }

  private void selectSecondaryMenuItem(TypophileTextView paramTypophileTextView, LinkedHashMap<VoiceMenuItem, TypophileTextView> paramLinkedHashMap)
  {
    Iterator localIterator = paramLinkedHashMap.values().iterator();
    while (localIterator.hasNext())
    {
      TypophileTextView localTypophileTextView = (TypophileTextView)localIterator.next();
      if (localTypophileTextView != paramTypophileTextView)
        localTypophileTextView.animate().alpha(0.2F).setDuration(100L);
    }
    this.handler.sendMessageDelayed(Message.obtain(this.handler, 2, paramTypophileTextView), 1000L);
  }

  private void setVisibleScrollView(OverscrollView paramOverscrollView)
  {
    this.visibleScrollView = paramOverscrollView;
  }

  private void showSecondaryMenu(List<VoiceMenuItem> paramList)
  {
    this.mainMenu.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.mainScrollView.setVisibility(8);
    this.secondaryMenuLayout.setVisibility(0);
    this.secondaryMenuScrollView.setVisibility(0);
    Iterator localIterator = this.secondaryMenuItemViews.values().iterator();
    while (localIterator.hasNext())
      animateIn((TypophileTextView)localIterator.next());
  }

  private void updateEnabledState(LinkedHashMap<? extends VoiceMenuItem, TypophileTextView> paramLinkedHashMap)
  {
    Iterator localIterator = paramLinkedHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      ((TypophileTextView)paramLinkedHashMap.get(localVoiceMenuItem)).setEnabled(localVoiceMenuItem.isEnabled(this.voiceMenuListener));
    }
  }

  public OverscrollView getVisibleScrollView()
  {
    return this.visibleScrollView;
  }

  public boolean onConfirm()
  {
    ((VoiceMenuItem)this.currentItems.get(getVisibleScrollView().getItem())).trigger(this.voiceMenuListener, false);
    return true;
  }

  public void onConnectivityChanged(boolean paramBoolean)
  {
    updateEnabledState(this.mainMenuItemViews);
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    Iterator localIterator = this.currentItems.iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      if (localVoiceMenuItem.matches(paramVoiceCommand))
      {
        localVoiceMenuItem.trigger(this.voiceMenuListener, true);
        return true;
      }
    }
    Log.w(TAG, "No matching menu item found.");
    LogHelper.logPii(5, TAG, "command: " + paramVoiceCommand + "; items: " + this.currentItems);
    return false;
  }

  public void selectMainMenuItem(VoiceMenuItem paramVoiceMenuItem)
  {
    selectMainMenuItem((TypophileTextView)this.mainMenuItemViews.get(paramVoiceMenuItem), null);
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    promoteMenuItem((TypophileTextView)this.mainMenuItemViews.get(paramVoiceMenuItem), this.mainScrollView, paramRunnable);
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, List<? extends VoiceMenuItem> paramList)
  {
    final ArrayList localArrayList = Lists.newArrayList(paramList);
    this.secondaryMenuItemViews = populateLayoutWithItems(this.secondaryMenuLayout, localArrayList);
    this.currentItems = localArrayList;
    updateEnabledState(this.secondaryMenuItemViews);
    setVisibleScrollView(this.secondaryMenuScrollView);
    promoteMenuItem((TypophileTextView)this.mainMenuItemViews.get(paramVoiceMenuItem), this.mainScrollView, new Runnable()
    {
      public void run()
      {
        VoiceMenu.this.showSecondaryMenu(localArrayList);
        if (VoiceMenu.this.voiceMenuListener != null)
          VoiceMenu.this.voiceMenuListener.onShowSecondaryMenu();
      }
    });
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, final Runnable paramRunnable)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)this.secondaryMenuItemViews.get(paramVoiceMenuItem);
    selectSecondaryMenuItem(localTypophileTextView, this.secondaryMenuItemViews);
    this.selectedSecondaryMenuItem.setText(localTypophileTextView.getText());
    this.selectedSecondaryMenuItem.setTranslationY(localTypophileTextView.getY() + this.secondaryMenuScrollView.getChildAt(0).getTranslationY());
    this.selectedSecondaryMenuItem.setVisibility(0);
    this.secondaryMenuScrollView.setVisibility(8);
    this.selectedSecondaryMenuItem.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (paramRunnable != null)
          paramRunnable.run();
        VoiceMenu.this.selectedSecondaryMenuItem.animate().setListener(null);
      }
    });
  }

  public void setListener(VoiceMenuListener paramVoiceMenuListener)
  {
    this.voiceMenuListener = paramVoiceMenuListener;
    this.mainScrollView.setListener(paramVoiceMenuListener);
    this.secondaryMenuScrollView.setListener(paramVoiceMenuListener);
  }

  public void setShouldHighlightSelectedItem(boolean paramBoolean)
  {
    this.secondaryMenuScrollView.setShouldHighlightSelectedItem(false);
    this.mainScrollView.setShouldHighlightSelectedItem(false);
  }

  public void setTopLevelMenuItems(List<? extends VoiceMenuItem> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      addMainMenuItem((VoiceMenuItem)localIterator.next());
    this.currentItems = paramList;
  }

  public void showError(GlassError paramGlassError)
  {
    if (this.voiceMenuListener != null)
      this.voiceMenuListener.onError(paramGlassError);
  }

  public void showMainMenu()
  {
    this.selectedMainMenuItem.setVisibility(8);
    this.secondaryMenuLayout.setVisibility(8);
    long l = 0L;
    Iterator localIterator = this.mainMenuItemViews.values().iterator();
    while (localIterator.hasNext())
    {
      TypophileTextView localTypophileTextView = (TypophileTextView)localIterator.next();
      l += 50L;
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 1, localTypophileTextView), l);
    }
    this.currentItems = Lists.newArrayList(this.mainMenuItemViews.keySet());
  }

  static abstract interface VoiceMenuListener extends OverscrollView.OverscrollViewListener, VoiceMenuEnvironment
  {
    public abstract void onError(GlassError paramGlassError);

    public abstract void onShowSecondaryMenu();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.VoiceMenu
 * JD-Core Version:    0.6.2
 */