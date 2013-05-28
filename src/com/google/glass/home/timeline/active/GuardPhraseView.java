package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.common.R.dimen;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.BatteryHelper.BatteryState;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.StorageHelper;
import com.google.glass.widget.RobotoTypefaces;
import com.google.glass.widget.RotatingTipsView;
import java.util.concurrent.Executor;

public class GuardPhraseView extends RotatingTipsView
{
  private static final String TAG = GuardPhraseView.class.getSimpleName();
  private final BatteryHelper batteryHelper;
  private final SafeBroadcastReceiver callStateReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return GuardPhraseView.TAG + "/callStateReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Received broadcast: " + paramAnonymousIntent);
      GuardPhraseView.this.updateGuardPhraseText();
    }
  };
  private final SafeBroadcastReceiver companionStateChangeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return GuardPhraseView.TAG + "/companionStateChangeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Got action: " + paramAnonymousIntent.getAction());
      if ("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE".equals(paramAnonymousIntent.getAction()))
      {
        CompanionState localCompanionState = HomeApplication.from(paramAnonymousContext).getCompanionState();
        if ((localCompanionState.isConnected()) && (localCompanionState.isTetheringErrorDetected()))
          GuardPhraseView.this.addMessage(R.string.home_error_check_my_glass);
      }
      else
      {
        return;
      }
      GuardPhraseView.this.removeMessage(R.string.home_error_check_my_glass);
    }
  };
  private final StorageHelper storageHelper;
  private final float textSize;
  private final Typeface typeface;

  public GuardPhraseView(Context paramContext)
  {
    this(paramContext, null);
  }

  public GuardPhraseView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public GuardPhraseView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.storageHelper = new StorageHelper(paramContext);
    this.batteryHelper = new BatteryHelper(paramContext);
    this.textSize = paramContext.getResources().getDimension(R.dimen.medium_text_size);
    this.typeface = RobotoTypefaces.getTypeface(getContext(), 1);
  }

  private boolean checkForErrors()
  {
    Log.d(TAG, "Starting initial error check.");
    CompanionState localCompanionState = HomeApplication.from(getContext()).getCompanionState();
    int i;
    boolean bool;
    if ((localCompanionState.isConnected()) && (localCompanionState.isTetheringErrorDetected()))
    {
      i = 1;
      if (i == 0)
        break label175;
      addMessage(R.string.home_error_check_my_glass);
      bool = true;
      label50: switch (5.$SwitchMap$com$google$glass$util$StorageHelper$State[this.storageHelper.getExternalStorageState().ordinal()])
      {
      default:
        removeMessage(R.string.home_error_storage_low);
        removeMessage(R.string.home_error_storage_full);
        label102: BatteryHelper.BatteryState localBatteryState = this.batteryHelper.getCurrentState();
        if ((localBatteryState.percent <= 10.0F) && (!localBatteryState.isCharging))
        {
          addMessage(R.string.home_error_battery_low);
          bool = true;
        }
        break;
      case 1:
      case 2:
      }
    }
    while (true)
    {
      Log.d(TAG, "Errors found: " + bool);
      return bool;
      i = 0;
      break;
      label175: removeMessage(R.string.home_error_check_my_glass);
      bool = false;
      break label50;
      addMessage(R.string.home_error_storage_full);
      removeMessage(R.string.home_error_storage_low);
      bool = true;
      break label102;
      addMessage(R.string.home_error_storage_low);
      removeMessage(R.string.home_error_storage_full);
      bool = true;
      break label102;
      removeMessage(R.string.home_error_battery_low);
    }
  }

  private void updateGuardPhraseText()
  {
    if (BluetoothHeadset.isInCallOrCallSetup(getContext()))
    {
      setTip(R.string.phone_call_in_call);
      return;
    }
    setTip(R.string.guard_phrase_hint);
  }

  protected float getMessageTextSize()
  {
    return this.textSize;
  }

  protected Typeface getMessageTypeface()
  {
    return this.typeface;
  }

  protected float getTipTextSize()
  {
    return this.textSize;
  }

  protected Typeface getTipTypeface()
  {
    return this.typeface;
  }

  public boolean onConfirm()
  {
    return false;
  }

  public void onLoad()
  {
    updateGuardPhraseText();
    showTip();
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        Context localContext = GuardPhraseView.this.getContext();
        GuardPhraseView.this.callStateReceiver.register(localContext, new String[] { "com.google.glass.action.CALL_STATE", "com.google.glass.action.CALL_SETUP_STATE" });
        GuardPhraseView.this.companionStateChangeReceiver.register(localContext, new String[] { "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE" });
      }
    });
  }

  public void onSettled()
  {
    checkForErrors();
    updateGuardPhraseText();
    startRotating();
  }

  public void onUnload()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        Context localContext = GuardPhraseView.this.getContext();
        GuardPhraseView.this.callStateReceiver.unregister(localContext);
        GuardPhraseView.this.companionStateChangeReceiver.unregister(localContext);
      }
    });
  }

  public void onUnsettled()
  {
    stopRotating();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.GuardPhraseView
 * JD-Core Version:    0.6.2
 */