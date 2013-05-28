package com.google.glass.home.voice;

import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.voice.menu.VoiceMenuEnvironment;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public class TouchMenuItemView extends FrameLayout
  implements HorizontalScrollItem
{
  private final VoiceMenuEnvironment environment;
  private ImageView icon;
  private TextView label;
  private VoiceMenuItem voiceMenuItem;

  public TouchMenuItemView(VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    super(paramVoiceMenuEnvironment.getContext());
    this.environment = paramVoiceMenuEnvironment;
    LayoutInflater.from(getContext()).inflate(R.layout.option_menu_item, this);
    this.icon = ((ImageView)findViewById(R.id.icon));
    this.label = ((TextView)findViewById(R.id.label));
  }

  public void bind(VoiceMenuItem paramVoiceMenuItem)
  {
    this.voiceMenuItem = paramVoiceMenuItem;
    if (paramVoiceMenuItem.getContextIconId() != 0)
      this.icon.setImageResource(paramVoiceMenuItem.getContextIconId());
    while (true)
    {
      String str = paramVoiceMenuItem.getContextLabel(getContext());
      if (str == null)
        str = paramVoiceMenuItem.getLabel(getContext());
      this.label.setText(str);
      return;
      this.icon.setImageDrawable(null);
    }
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    this.voiceMenuItem.onTrigger(this.environment, false);
    return true;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.TouchMenuItemView
 * JD-Core Version:    0.6.2
 */