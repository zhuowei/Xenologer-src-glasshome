package com.google.glass.home.settings;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.widget.Adapter;
import com.google.glass.common.R.anim;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.util.AnimationUtils;
import com.google.glass.util.SimpleAnimationListener;
import java.util.LinkedList;
import java.util.List;

public class WifiHorizontalScrollView extends BaseHorizontalScrollView<String, Object>
{
  private static final String TAG = WifiHorizontalScrollView.class.getSimpleName();
  private Animation hideAnimation;
  private List<ScanResult> scannedNetworks;
  private Animation showAnimation;

  public WifiHorizontalScrollView(Context paramContext)
  {
    this(paramContext, null);
  }

  public WifiHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WifiHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
    this.showAnimation = AnimationUtils.loadAnimation(paramContext, R.anim.show_contextual);
    this.hideAnimation = AnimationUtils.loadAnimation(paramContext, R.anim.hide_contextual);
    this.hideAnimation.setAnimationListener(new SimpleAnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        WifiHorizontalScrollView.this.setVisibility(8);
      }
    });
    this.scannedNetworks = new LinkedList();
    setAdapter(new WifiScanResultsAdapter(paramContext, this.scannedNetworks));
  }

  public int findIdPosition(String paramString)
  {
    for (int i = 0; i < this.scannedNetworks.size(); i++)
      if (((ScanResult)this.scannedNetworks.get(i)).SSID.equals(paramString))
        return i;
    return -1;
  }

  public int findItemPosition(Object paramObject)
  {
    if (paramObject == WifiScanResultsAdapter.ADD_NETWORK_MANUALLY)
      return -1 + getAdapter().getCount();
    return this.scannedNetworks.indexOf(paramObject);
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getViewForPosition(int paramInt)
  {
    return getAdapter().getView(paramInt, null, this);
  }

  public void hide()
  {
    if (!isShown())
      return;
    setVisibility(8);
    AnimationUtils.startAnimation(this, this.hideAnimation);
  }

  public void onCompanionConnectionStatusChanged(boolean paramBoolean)
  {
    updateViews(true);
  }

  public void rebindView(int paramInt, View paramView)
  {
    getAdapter().getView(paramInt, paramView, this);
  }

  public void setNetworks(List<ScanResult> paramList)
  {
    Log.d(TAG, "Given " + paramList.size() + " scan results.");
    this.scannedNetworks.clear();
    this.scannedNetworks.addAll(paramList);
    updateViews(true);
  }

  public void show()
  {
    if (isShown())
      return;
    setVisibility(0);
    AnimationUtils.startAnimation(this, this.showAnimation);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiHorizontalScrollView
 * JD-Core Version:    0.6.2
 */