package com.google.glass.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassApplication;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.common.R.style;
import com.google.glass.input.InputListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.input.TouchDetector;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.voice.VoiceCommand;

public final class MessageDialog extends Dialog
  implements InputListener
{
  private static final long EXPANDED_MESSAGE_DURATION = 2000L;
  private static final long MESSAGE_DURATION = 1000L;
  private static final int MSG_DISMISS = 0;
  private static final int MSG_ON_DONE = 2;
  private static final int MSG_TEMPORARY_MESSAGE_DONE = 1;
  private static final long TEMPORARY_MESSAGE_DURATION = 1000L;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      do
      {
        return;
        MessageDialog.this.dismiss();
        return;
        MessageDialog.this.showNormalContent();
        return;
      }
      while (MessageDialog.Params.access$200(MessageDialog.this.params) == null);
      int i;
      if (paramAnonymousMessage.arg1 == 1)
      {
        i = 1;
        if (paramAnonymousMessage.arg2 != 1)
          break label111;
      }
      label111: for (int j = 1; ; j = 0)
      {
        if ((i == 0) || (j == 0))
          break label116;
        MessageDialog.Params.access$200(MessageDialog.this.params).onDismissed();
        return;
        i = 0;
        break;
      }
      label116: MessageDialog.Params.access$200(MessageDialog.this.params).onDone();
    }
  };
  private final Params params;
  private final TouchDetector touchDetector;

  private MessageDialog(Context paramContext, Params paramParams)
  {
    super(paramContext, getThemeId(paramParams.shouldAnimate));
    this.params = paramParams;
    this.touchDetector = new TouchDetector(paramContext, this);
    setContentView(getLayoutId(paramParams.isExpanded));
    findViewById(R.id.ms_dialog).setKeepScreenOn(paramParams.shouldKeepScreenOn);
  }

  private void cancelTransitions()
  {
    this.handler.removeMessages(0);
    this.handler.removeMessages(1);
  }

  private void checkIsShowing()
  {
    if (!isShowing())
      throw new IllegalStateException("Method not available when the dialog is not showing.");
  }

  private ImageView getIcon()
  {
    return (ImageView)findViewById(R.id.icon);
  }

  private TextView getLabel()
  {
    return (TextView)findViewById(R.id.label);
  }

  private static int getLayoutId(boolean paramBoolean)
  {
    if (paramBoolean)
      return R.layout.message_dialog_expanded;
    return R.layout.message_dialog;
  }

  private TextView getSecondaryLabel()
  {
    return (TextView)findViewById(R.id.secondary_label);
  }

  private SliderView getSlider()
  {
    return (SliderView)findViewById(R.id.slider);
  }

  private static int getThemeId(boolean paramBoolean)
  {
    if (paramBoolean)
      return R.style.ContextualDialogTheme;
    return R.style.ContextualDialogTheme_NoAnimation;
  }

  private boolean hasSlider()
  {
    return getSlider() != null;
  }

  private void setContent(CharSequence paramCharSequence1, CharSequence paramCharSequence2, Drawable paramDrawable)
  {
    if (paramCharSequence1 != null)
    {
      getLabel().setText(paramCharSequence1);
      getLabel().setVisibility(0);
      if (getSecondaryLabel() != null)
      {
        if (paramCharSequence2 == null)
          break label80;
        getSecondaryLabel().setText(paramCharSequence2);
        getSecondaryLabel().setVisibility(0);
      }
    }
    while (true)
    {
      if (paramDrawable == null)
        break label92;
      getIcon().setImageDrawable(paramDrawable);
      getIcon().setVisibility(0);
      return;
      getLabel().setVisibility(8);
      break;
      label80: getSecondaryLabel().setVisibility(8);
    }
    label92: getIcon().setVisibility(8);
  }

  private void showNormalContent()
  {
    if ((this.params.sound != null) && (this.params.soundManager != null))
      this.params.soundManager.playSound(this.params.sound);
    setContent(this.params.message, this.params.secondaryMessage, this.params.icon);
    if (hasSlider())
    {
      if (this.params.shouldShowProgress)
      {
        getSlider().setVisibility(0);
        getSlider().startIndeterminate();
      }
    }
    else if (this.params.shouldAutoHide)
      if (!this.params.isExpanded)
        break label149;
    label149: for (long l = 2000L; ; l = 1000L)
    {
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 0), l);
      return;
      getSlider().setVisibility(8);
      break;
    }
  }

  private void showTemporaryContent()
  {
    setContent(this.params.temporaryMessage, null, this.params.temporaryIcon);
    if (hasSlider())
    {
      getSlider().setVisibility(0);
      getSlider().startProgress(1000L);
    }
    this.handler.sendMessageDelayed(Message.obtain(this.handler, 1), 1000L);
  }

  public void autoHide()
  {
    checkIsShowing();
    this.handler.sendMessageDelayed(Message.obtain(this.handler, 0), 1000L);
  }

  public void cancel()
  {
    GlassApplication.from(getContext()).getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    if (this.handler.hasMessages(1));
    for (int i = 1; ; i = 0)
    {
      cancelTransitions();
      this.handler.sendMessage(Message.obtain(this.handler, 2, 1, i));
      super.dismiss();
      return;
    }
  }

  public void clearAutoHide()
  {
    checkIsShowing();
    this.handler.removeMessages(0);
  }

  public void dismiss()
  {
    cancelTransitions();
    this.handler.sendMessage(Message.obtain(this.handler, 2, 0, 0));
    super.dismiss();
  }

  public boolean onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    if (this.params.shouldHandleConfirm)
    {
      cancelTransitions();
      if ((this.params.listener != null) && (this.params.listener.onConfirmed()))
        super.dismiss();
      return true;
    }
    if (this.handler.hasMessages(1))
    {
      this.handler.removeMessages(1);
      this.handler.sendMessage(Message.obtain(this.handler, 1));
    }
    return false;
  }

  public void onDetachedFromWindow()
  {
    cancelTransitions();
    super.onDetachedFromWindow();
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public boolean onDoubleTap()
  {
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return false;
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  protected void onStart()
  {
    super.onStart();
    setCancelable(this.params.isDismissable);
    if ((this.params.hasTemporaryContent()) && (!this.params.isExpanded))
    {
      showTemporaryContent();
      return;
    }
    showNormalContent();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onSwipeCanceled(int paramInt)
  {
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return onGenericMotionEvent(paramMotionEvent);
  }

  public boolean onVerticalHeadScroll(float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public boolean onVoiceAmplitudeChanged(double paramDouble)
  {
    return false;
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    return false;
  }

  public void onVoiceServiceConnected()
  {
  }

  public void onVoiceServiceDisconnected()
  {
  }

  public void setDismissable(boolean paramBoolean)
  {
    setCancelable(paramBoolean);
  }

  public void setListener(Listener paramListener)
  {
    Params.access$202(this.params, paramListener);
  }

  public void showProgress(boolean paramBoolean)
  {
    if (hasSlider())
    {
      if (paramBoolean)
      {
        getSlider().setVisibility(0);
        getSlider().startIndeterminate();
      }
    }
    else
      return;
    getSlider().setVisibility(8);
  }

  public void updateContent(int paramInt1, int paramInt2)
  {
    checkIsShowing();
    updateContent(getContext().getResources().getString(paramInt1), paramInt2);
  }

  public void updateContent(CharSequence paramCharSequence, int paramInt)
  {
    checkIsShowing();
    setContent(paramCharSequence, null, getContext().getResources().getDrawable(paramInt));
  }

  public static final class Builder
  {
    private final Context context;
    private MessageDialog.Params params;

    public Builder(Context paramContext)
    {
      this.context = paramContext;
      reset();
    }

    private void reset()
    {
      this.params = new MessageDialog.Params(null);
      MessageDialog.Params.access$1502(this.params, true);
      MessageDialog.Params.access$1602(this.params, false);
      MessageDialog.Params.access$302(this.params, true);
      MessageDialog.Params.access$602(this.params, true);
    }

    public MessageDialog build()
    {
      MessageDialog.Params localParams = this.params;
      reset();
      return new MessageDialog(this.context, localParams, null);
    }

    public Builder setAnimated(boolean paramBoolean)
    {
      MessageDialog.Params.access$302(this.params, paramBoolean);
      return this;
    }

    public Builder setAutoHide(boolean paramBoolean)
    {
      MessageDialog.Params.access$1502(this.params, paramBoolean);
      return this;
    }

    public Builder setDismissable(boolean paramBoolean)
    {
      MessageDialog.Params.access$602(this.params, paramBoolean);
      return this;
    }

    public Builder setExpanded(boolean paramBoolean)
    {
      MessageDialog.Params.access$402(this.params, paramBoolean);
      return this;
    }

    public Builder setHandleConfirm(boolean paramBoolean)
    {
      MessageDialog.Params.access$1602(this.params, paramBoolean);
      return this;
    }

    public Builder setIcon(int paramInt)
    {
      return setIcon(this.context.getResources().getDrawable(paramInt));
    }

    public Builder setIcon(Drawable paramDrawable)
    {
      MessageDialog.Params.access$1302(this.params, paramDrawable);
      return this;
    }

    public Builder setKeepScreenOn(boolean paramBoolean)
    {
      MessageDialog.Params.access$502(this.params, paramBoolean);
      return this;
    }

    public Builder setListener(MessageDialog.Listener paramListener)
    {
      MessageDialog.Params.access$202(this.params, paramListener);
      return this;
    }

    public Builder setMessage(int paramInt)
    {
      return setMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1102(this.params, paramCharSequence);
      return this;
    }

    public Builder setSecondaryMessage(int paramInt)
    {
      return setSecondaryMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setSecondaryMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1202(this.params, paramCharSequence);
      return this;
    }

    public Builder setShowProgress(boolean paramBoolean)
    {
      MessageDialog.Params.access$1402(this.params, paramBoolean);
      return this;
    }

    public Builder setSound(SoundManager.SoundId paramSoundId, SoundManager paramSoundManager)
    {
      MessageDialog.Params.access$902(this.params, paramSoundId);
      MessageDialog.Params.access$1002(this.params, paramSoundManager);
      return this;
    }

    public Builder setTemporaryIcon(int paramInt)
    {
      return setTemporaryIcon(this.context.getResources().getDrawable(paramInt));
    }

    public Builder setTemporaryIcon(Drawable paramDrawable)
    {
      MessageDialog.Params.access$802(this.params, paramDrawable);
      return this;
    }

    public Builder setTemporaryMessage(int paramInt)
    {
      return setTemporaryMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setTemporaryMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$702(this.params, paramCharSequence);
      return this;
    }
  }

  public static abstract interface Listener
  {
    public abstract boolean onConfirmed();

    public abstract void onDismissed();

    public abstract void onDone();
  }

  private static class Params
  {
    private Drawable icon;
    private boolean isDismissable;
    private boolean isExpanded;
    private MessageDialog.Listener listener;
    private CharSequence message;
    private CharSequence secondaryMessage;
    private boolean shouldAnimate;
    private boolean shouldAutoHide;
    private boolean shouldHandleConfirm;
    private boolean shouldKeepScreenOn;
    private boolean shouldShowProgress;
    private SoundManager.SoundId sound;
    private SoundManager soundManager;
    private Drawable temporaryIcon;
    private CharSequence temporaryMessage;

    boolean hasTemporaryContent()
    {
      return (this.temporaryMessage != null) || (this.temporaryIcon != null);
    }
  }

  public static class SimpleListener
    implements MessageDialog.Listener
  {
    public boolean onConfirmed()
    {
      return false;
    }

    public void onDismissed()
    {
    }

    public void onDone()
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.MessageDialog
 * JD-Core Version:    0.6.2
 */