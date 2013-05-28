package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.DateHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.widget.TypophileTextView;
import java.util.concurrent.Executor;

public class ClockView extends LinearLayout
{
  private static final String TAG = ClockView.class.getSimpleName();
  private final SafeBroadcastReceiver timeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return ClockView.TAG + "/timeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      ClockView.this.updateTime();
    }
  };
  private TypophileTextView timeView;

  public ClockView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ClockView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ClockView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(getContext()).inflate(R.layout.home_clock, this);
    this.timeView = ((TypophileTextView)findViewById(R.id.time));
    updateTime();
    requestLayout();
  }

  private void updateTime()
  {
    setVisibility(4);
    long l = System.currentTimeMillis();
    this.timeView.setText(DateHelper.formattedTime(getContext(), l, true));
    setVisibility(0);
  }

  public void onLoad()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        ClockView.this.timeReceiver.register(ClockView.this.getContext(), new String[] { "android.intent.action.TIME_TICK" });
      }
    });
    updateTime();
  }

  public void onUnload()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        ClockView.this.timeReceiver.unregister(ClockView.this.getContext());
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.ClockView
 * JD-Core Version:    0.6.2
 */