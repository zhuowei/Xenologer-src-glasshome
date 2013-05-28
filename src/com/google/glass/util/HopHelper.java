package com.google.glass.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.glass.input.SwipeDirection;

public class HopHelper
{
  private static final long HOP_ANIMATION_DURATION_MS = 150L;
  private static final long PRE_HOP_ANIMATION_Y_TRANSLATION_PX = -60L;

  public static void performHopAnimation(View paramView, SwipeDirection paramSwipeDirection)
  {
    if ((paramSwipeDirection == SwipeDirection.LEFT) || (paramSwipeDirection == SwipeDirection.RIGHT))
      throw new IllegalArgumentException("Only UP and DOWN are allowed swipe directions.");
    long l = -60L;
    if (paramSwipeDirection == SwipeDirection.DOWN)
      l *= -1L;
    paramView.animate().setInterpolator(new DecelerateInterpolator()).setDuration(100L).translationY((float)l).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        this.val$view.animate().setInterpolator(new AccelerateInterpolator()).setDuration(50L).translationY(0.0F).setListener(null);
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HopHelper
 * JD-Core Version:    0.6.2
 */