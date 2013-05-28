package com.google.glass.share;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.Adapter;
import com.google.glass.common.R.anim;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.util.AnimationUtils;
import com.google.glass.util.SimpleAnimationListener;
import com.google.googlex.glass.common.proto.Entity;
import java.util.Iterator;
import java.util.List;

public class ShareHorizontalScrollView extends BaseHorizontalScrollView<String, Entity>
{
  private Animation hideShareAnimation;
  protected Listener listener;
  private List<Entity> shareTargets;
  private Animation showShareAnimation;

  public ShareHorizontalScrollView(Context paramContext)
  {
    super(paramContext, true);
  }

  public ShareHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, true);
  }

  public ShareHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
  }

  public int findIdPosition(String paramString)
  {
    Iterator localIterator = this.shareTargets.iterator();
    while (localIterator.hasNext())
    {
      Entity localEntity = (Entity)localIterator.next();
      if (localEntity.getId().equals(paramString))
        return this.shareTargets.indexOf(localEntity);
    }
    return -1;
  }

  public int findItemPosition(Entity paramEntity)
  {
    return this.shareTargets.indexOf(paramEntity);
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
    AnimationUtils.startAnimation(this, this.hideShareAnimation);
  }

  public void init(Listener paramListener)
  {
    this.listener = paramListener;
    this.showShareAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.show_contextual);
    this.hideShareAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.hide_contextual);
    this.hideShareAnimation.setAnimationListener(new SimpleAnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        ShareHorizontalScrollView.this.setVisibility(8);
      }
    });
  }

  public void rebindView(int paramInt, View paramView)
  {
  }

  public void setShareTargets(List<Entity> paramList)
  {
    this.shareTargets = paramList;
    setAdapter(new ShareTargetAdapter(getContext(), paramList, this.listener));
    updateViews(true);
  }

  public void show()
  {
    if (isShown())
      return;
    setVisibility(0);
    AnimationUtils.startAnimation(this, this.showShareAnimation);
  }

  public static abstract interface Listener
  {
    public abstract boolean onShareTargetConfirm(Entity paramEntity);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareHorizontalScrollView
 * JD-Core Version:    0.6.2
 */