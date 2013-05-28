package com.google.glass.home.voice;

import android.os.Bundle;
import android.widget.BaseAdapter;
import com.google.glass.app.GlassError;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.input.SwipeDirection;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.widget.SliderView;
import java.util.List;
import java.util.Stack;

public class TouchMainMenuActivity extends MainMenuActivity
{
  private Stack<AdapterStackItem> adapterStack;
  private SliderView sliderView;
  private TouchMenuView touchMenuView;

  private void initCurrentAdapter()
  {
    AdapterStackItem localAdapterStackItem = (AdapterStackItem)this.adapterStack.peek();
    this.touchMenuView.setAdapter(localAdapterStackItem.adapter);
    this.sliderView.setCount(localAdapterStackItem.adapter.getCount());
    this.touchMenuView.setSelection(localAdapterStackItem.currentPosition, false);
    this.touchMenuView.updateViews(true);
  }

  private void popAdapter()
  {
    this.adapterStack.pop();
    if (!this.adapterStack.isEmpty())
      initCurrentAdapter();
  }

  private void pushAdapter(BaseAdapter paramBaseAdapter, int paramInt)
  {
    if (!this.adapterStack.isEmpty())
      ((AdapterStackItem)this.adapterStack.peek()).currentPosition = this.touchMenuView.getSelectedItemPosition();
    this.adapterStack.push(new AdapterStackItem(paramBaseAdapter, paramInt));
    initCurrentAdapter();
  }

  public void onBackPressed()
  {
    popAdapter();
    if (this.adapterStack.isEmpty())
    {
      super.onBackPressed();
      return;
    }
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
  }

  public boolean onConfirm()
  {
    return this.touchMenuView.onConfirm(this, false);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.adapterStack = new Stack();
    this.touchMenuView = ((TouchMenuView)findViewById(R.id.touch_menu));
    this.sliderView = ((SliderView)findViewById(R.id.slider));
    this.sliderView.setScrollView(this.touchMenuView);
    pushAdapter(new TouchMenuAdapter(this, getMainMenuItems()), 0);
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return this.touchMenuView.onFingerCountChanged(paramInt, paramBoolean);
  }

  protected void onPause()
  {
    super.onPause();
    this.touchMenuView.deactivate();
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return this.touchMenuView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
  }

  protected void onResume()
  {
    super.onResume();
    this.touchMenuView.activate();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    this.touchMenuView.onSwipe(paramInt, paramSwipeDirection);
    return false;
  }

  protected int provideContentView()
  {
    return R.layout.touch_menu_activity;
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    if (paramRunnable != null)
      paramRunnable.run();
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, List<? extends VoiceMenuItem> paramList)
  {
    pushAdapter(new TouchMenuAdapter(this, paramList), 0);
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    if (paramRunnable != null)
      paramRunnable.run();
  }

  public void setAnimateOnNextPause(boolean paramBoolean)
  {
  }

  public void showError(GlassError paramGlassError)
  {
  }

  public void showProgressBar()
  {
  }

  private static class AdapterStackItem
  {
    private BaseAdapter adapter;
    int currentPosition;
    private CharSequence title;

    public AdapterStackItem(BaseAdapter paramBaseAdapter, int paramInt)
    {
      this(null, paramBaseAdapter, paramInt);
    }

    public AdapterStackItem(CharSequence paramCharSequence, BaseAdapter paramBaseAdapter, int paramInt)
    {
      this.title = paramCharSequence;
      this.adapter = paramBaseAdapter;
      this.currentPosition = paramInt;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.TouchMainMenuActivity
 * JD-Core Version:    0.6.2
 */