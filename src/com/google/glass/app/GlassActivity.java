package com.google.glass.app;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.StrictMode.VmPolicy.Builder;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.common.R.anim;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.horizontalscroll.HorizontallyTuggableView;
import com.google.glass.input.InputDetectingActivity;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HopHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.SimpleAnimationListener;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.OptionMenuDialog;
import com.google.glass.widget.OptionMenuDialog.Listener;
import java.util.Iterator;
import java.util.List;

public abstract class GlassActivity extends InputDetectingActivity
{
  public static final String EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF = "should_finish_turn_screen_off";
  private static final String TAG = GlassActivity.class.getSimpleName();
  private View contentView;
  private Animation dismissAnimation;
  private List<GlassFragment> glassFragments = Lists.newLinkedList();
  private boolean isOptionsMenuShowing;
  private OptionMenu menu;

  @VisibleForTesting
  protected OptionMenuDialog menuDialog;
  private MessageDialog messageDialog;
  private PowerHelper powerHelper;
  private boolean rebuildMenu;
  private final SafeBroadcastReceiver screenOffReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return GlassActivity.this.getTag() + "/screenOffReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      GlassActivity.this.finish();
    }
  };
  private boolean shouldTurnScreenOff;
  private HorizontallyTuggableView tuggableContentView;

  private void handleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      this.shouldTurnScreenOff = false;
      return;
    }
    this.shouldTurnScreenOff = paramIntent.getBooleanExtra("should_finish_turn_screen_off", false);
  }

  public void closeOptionsMenu()
  {
    if (this.menuDialog != null)
      this.menuDialog.dismiss();
  }

  public View findViewById(int paramInt)
  {
    if (this.tuggableContentView != null)
      return this.tuggableContentView.getView().findViewById(paramInt);
    return super.findViewById(paramInt);
  }

  protected final void finishAndTurnScreenOff()
  {
    if (isFinishing())
    {
      Log.w(getTag(), "Not turning off screen because we're already finishing.");
      return;
    }
    getContentView().startAnimation(this.dismissAnimation);
    this.powerHelper.goToSleep();
  }

  protected final void finishAndTurnScreenOffIfRequested()
  {
    if (shouldFinishTurnScreenOff())
    {
      finishAndTurnScreenOff();
      return;
    }
    finish();
  }

  protected View getContentView()
  {
    return this.contentView;
  }

  protected GlassApplication getGlassApplication()
  {
    return GlassApplication.from(this);
  }

  @VisibleForTesting
  public CharSequence getMessageText()
  {
    if (isMessageShowing())
      return ((TextView)this.messageDialog.findViewById(R.id.label)).getText();
    return null;
  }

  @VisibleForTesting
  public OptionMenu getOptionMenu()
  {
    return this.menu;
  }

  public SoundManager getSoundManager()
  {
    return getGlassApplication().getSoundManager();
  }

  protected UserEventHelper getUserEventHelper()
  {
    return getGlassApplication().getUserEventHelper();
  }

  public void hideMessageDialog()
  {
    if (isMessageShowing())
      this.messageDialog.dismiss();
  }

  public void invalidateOptionsMenu()
  {
    closeOptionsMenu();
    this.menuDialog = null;
    this.rebuildMenu = true;
  }

  public boolean isMessageShowing()
  {
    return (this.messageDialog != null) && (this.messageDialog.isShowing());
  }

  @VisibleForTesting
  public boolean isOptionsMenuShowing()
  {
    return this.isOptionsMenuShowing;
  }

  protected void logUserEvent(UserEventAction paramUserEventAction)
  {
    getUserEventHelper().log(paramUserEventAction);
  }

  protected void logUserEvent(UserEventAction paramUserEventAction, String paramString)
  {
    getUserEventHelper().log(paramUserEventAction, paramString);
  }

  public void onAttachFragment(Fragment paramFragment)
  {
    if ((paramFragment instanceof GlassFragment))
    {
      this.glassFragments.add((GlassFragment)paramFragment);
      return;
    }
    Log.w(TAG, "Adding a non GlassFragment Fragment to GlassActivity");
  }

  public boolean onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onAudioData(paramArrayOfByte, paramInt1, paramInt2)))
        return true;
    }
    return super.onAudioData(paramArrayOfByte, paramInt1, paramInt2);
  }

  public boolean onCameraButtonPressed()
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onCameraButtonPressed()))
        return true;
    }
    return super.onCameraButtonPressed();
  }

  public boolean onConfirm()
  {
    Iterator localIterator = this.glassFragments.iterator();
    GlassFragment localGlassFragment;
    do
    {
      if (!localIterator.hasNext())
        break;
      localGlassFragment = (GlassFragment)localIterator.next();
    }
    while ((!localGlassFragment.isVisible()) || (!localGlassFragment.onConfirm()));
    do
    {
      return true;
      openOptionsMenu();
    }
    while ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null) && (this.tuggableContentView.onConfirm(this, false)));
    if ((this.menuDialog == null) || (!this.menuDialog.isShowing()))
    {
      onDisallowedInput();
      return false;
    }
    getSoundManager().playSound(SoundManager.SoundId.TAP);
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.powerHelper = new PowerHelper(this);
    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
    StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
    Window localWindow = getWindow();
    localWindow.addFlags(524288);
    localWindow.addFlags(4194304);
    int i = provideContentView();
    if (i == -1)
      Log.w(getTag(), "No content view provided.");
    while (true)
    {
      if (shouldScreenOffFinish())
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.screenOffReceiver.register(this, localIntentFilter);
      }
      this.dismissAnimation = AnimationUtils.loadAnimation(this, R.anim.window_exit_down);
      this.dismissAnimation.setAnimationListener(new SimpleAnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          GlassActivity.this.finish();
        }
      });
      handleIntent(getIntent());
      return;
      if (shouldAllowHorizontalTugging())
      {
        Log.d(getTag(), "Inflating content view into tuggable container.");
        super.setContentView(R.layout.glass_activity_tuggable);
        this.tuggableContentView = ((HorizontallyTuggableView)findViewById(R.id.content_view_container));
        this.contentView = LayoutInflater.from(this).inflate(i, null);
        this.tuggableContentView.setView(this.contentView);
      }
      else
      {
        Log.d(getTag(), "Inflating content view to stub.");
        super.setContentView(R.layout.glass_activity);
        ViewStub localViewStub = (ViewStub)findViewById(R.id.content_view_stub);
        localViewStub.setLayoutResource(i);
        this.contentView = localViewStub.inflate();
      }
    }
  }

  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  protected void onDestroy()
  {
    if (shouldScreenOffFinish())
      this.screenOffReceiver.unregister(this);
    super.onDestroy();
  }

  protected void onDisallowedInput()
  {
    getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onDismiss(paramDismissAction)))
        return true;
    }
    if (!shouldAllowDismiss())
    {
      HopHelper.performHopAnimation(getContentView(), SwipeDirection.DOWN);
      return false;
    }
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    finishAndTurnScreenOffIfRequested();
    return true;
  }

  public boolean onDoubleTap()
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onDoubleTap()))
        return true;
    }
    return super.onDoubleTap();
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onFingerCountChanged(paramInt, paramBoolean)))
        return true;
    }
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      return this.tuggableContentView.onFingerCountChanged(paramInt, paramBoolean);
    return super.onFingerCountChanged(paramInt, paramBoolean);
  }

  public void onMenuOpened(int paramInt, OptionMenu paramOptionMenu)
  {
    this.isOptionsMenuShowing = true;
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleIntent(paramIntent);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public void onOptionsMenuClosed(OptionMenu paramOptionMenu)
  {
    this.isOptionsMenuShowing = false;
  }

  protected void onPause()
  {
    closeOptionsMenu();
    if (shouldHideMessageDialogOnPause())
      hideMessageDialog();
    if (this.tuggableContentView != null)
      this.tuggableContentView.deactivate();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3)))
        return true;
    }
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      return this.tuggableContentView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onResampledAudioData(paramArrayOfByte, paramInt1, paramInt2)))
        return true;
    }
    return super.onResampledAudioData(paramArrayOfByte, paramInt1, paramInt2);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.tuggableContentView != null)
      this.tuggableContentView.activate();
  }

  protected void onStart()
  {
    super.onStart();
    this.dismissAnimation.cancel();
    getContentView().setY(0.0F);
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onSwipe(paramInt, paramSwipeDirection)))
        return true;
    }
    if (paramSwipeDirection == SwipeDirection.UP)
    {
      HopHelper.performHopAnimation(getContentView(), SwipeDirection.UP);
      return true;
    }
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      this.tuggableContentView.onSwipe(paramInt, paramSwipeDirection);
    return false;
  }

  public boolean onSwipeCanceled(int paramInt)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onSwipeCanceled(paramInt)))
        return true;
    }
    return super.onSwipeCanceled(paramInt);
  }

  public boolean onVerticalHeadScroll(float paramFloat1, float paramFloat2)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onVerticalHeadScroll(paramFloat1, paramFloat2)))
        return true;
    }
    return super.onVerticalHeadScroll(paramFloat1, paramFloat2);
  }

  public boolean onVoiceAmplitudeChanged(double paramDouble)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onVoiceAmplitudeChanged(paramDouble)))
        return true;
    }
    return super.onVoiceAmplitudeChanged(paramDouble);
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if ((localGlassFragment.isVisible()) && (localGlassFragment.onVoiceCommand(paramVoiceCommand)))
        return true;
    }
    return super.onVoiceCommand(paramVoiceCommand);
  }

  public void onVoiceServiceConnected()
  {
    super.onVoiceServiceConnected();
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if (localGlassFragment.isVisible())
        localGlassFragment.onVoiceServiceConnected();
    }
  }

  public void onVoiceServiceDisconnected()
  {
    super.onVoiceServiceDisconnected();
    Iterator localIterator = this.glassFragments.iterator();
    while (localIterator.hasNext())
    {
      GlassFragment localGlassFragment = (GlassFragment)localIterator.next();
      if (localGlassFragment.isVisible())
        localGlassFragment.onVoiceServiceDisconnected();
    }
  }

  public void openOptionsMenu()
  {
    if ((this.menu == null) || (this.rebuildMenu))
      if (this.menu == null)
        this.menu = new OptionMenu(this);
    while ((!onPrepareOptionsMenu(this.menu)) || (this.menu.getVisibleItemCount() == 0))
    {
      while (!onCreateOptionsMenu(this.menu))
      {
        this.menu = null;
        return;
        if (this.rebuildMenu)
          this.menu.clearItems();
      }
      this.rebuildMenu = false;
    }
    if (this.menuDialog == null)
      this.menuDialog = new OptionMenuDialog(this, getSoundManager(), new OptionMenuDialog.Listener()
      {
        private OptionMenu.Item lastSelectedItem;

        public boolean onCameraButtonPressed()
        {
          return GlassActivity.this.onCameraButtonPressed();
        }

        public void onClosed()
        {
          if (this.lastSelectedItem != null)
          {
            GlassActivity.this.onOptionsItemSelected(this.lastSelectedItem);
            this.lastSelectedItem = null;
          }
          GlassActivity.this.onOptionsMenuClosed(GlassActivity.this.menu);
        }

        public void onDisallowedInput()
        {
          GlassActivity.this.onDisallowedInput();
        }

        public boolean onItemSelected(OptionMenu.Item paramAnonymousItem)
        {
          this.lastSelectedItem = paramAnonymousItem;
          return true;
        }

        public boolean shouldAllowCameraButton()
        {
          return GlassActivity.this.shouldAllowCameraButton();
        }
      });
    this.menuDialog.setMenu(this.menu);
    this.menuDialog.show();
    onMenuOpened(0, this.menu);
  }

  protected int provideContentView()
  {
    return -1;
  }

  @Deprecated
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  @Deprecated
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  @Deprecated
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }

  protected boolean shouldAllowDismiss()
  {
    return true;
  }

  protected boolean shouldAllowHorizontalTugging()
  {
    return false;
  }

  protected boolean shouldFinishTurnScreenOff()
  {
    return this.shouldTurnScreenOff;
  }

  protected boolean shouldHideMessageDialogOnPause()
  {
    return true;
  }

  protected boolean shouldScreenOffFinish()
  {
    return true;
  }

  public void showMessage(int paramInt)
  {
    showMessage(getString(paramInt));
  }

  public void showMessage(MessageDialog paramMessageDialog)
  {
    hideMessageDialog();
    this.messageDialog = paramMessageDialog;
    paramMessageDialog.show();
  }

  public void showMessage(String paramString)
  {
    showMessage(new MessageDialog.Builder(this).setMessage(paramString).setIcon(R.drawable.ic_exclamation_big).build());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassActivity
 * JD-Core Version:    0.6.2
 */