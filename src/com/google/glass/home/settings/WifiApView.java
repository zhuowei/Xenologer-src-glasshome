package com.google.glass.home.settings;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.home.R.color;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.util.WifiHelper.Encryption;
import com.google.glass.widget.TypophileTextView;

public class WifiApView extends SettingsItemView
{
  protected WifiLevels wifiLevels = new WifiLevels();

  public WifiApView(Context paramContext)
  {
    this(paramContext, null);
  }

  public WifiApView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WifiApView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize();
  }

  protected void initialize()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.wifi_settings_item, this);
  }

  public void onLoad()
  {
  }

  public void setWifiData(int paramInt, WifiHelper.Encryption paramEncryption, String paramString)
  {
    TypophileTextView localTypophileTextView1 = (TypophileTextView)findViewById(R.id.wifi_network_name);
    TypophileTextView localTypophileTextView2 = (TypophileTextView)findViewById(R.id.wifi_data_state);
    TypophileTextView localTypophileTextView3 = (TypophileTextView)findViewById(R.id.wifi_connection_state);
    TypophileTextView localTypophileTextView4 = (TypophileTextView)findViewById(R.id.wifi_other_networks);
    TypophileTextView localTypophileTextView5 = (TypophileTextView)findViewById(R.id.wifi_security);
    localTypophileTextView1.setText(paramString);
    localTypophileTextView3.setText(R.string.wifi_nearby);
    localTypophileTextView3.setTextColor(getResources().getColor(R.color.text_gray));
    localTypophileTextView3.setVisibility(0);
    if (paramEncryption == WifiHelper.Encryption.NONE)
    {
      localTypophileTextView5.setVisibility(8);
      localTypophileTextView2.setVisibility(8);
      localTypophileTextView4.setVisibility(8);
      ((ImageView)findViewById(R.id.wifi_signal_strength)).setImageResource(this.wifiLevels.getImageResourceForStrength(paramInt));
      return;
    }
    switch (1.$SwitchMap$com$google$glass$util$WifiHelper$Encryption[paramEncryption.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      localTypophileTextView5.setVisibility(0);
      break;
      localTypophileTextView5.setText(R.string.wifi_encryption_wep);
      continue;
      localTypophileTextView5.setText(R.string.wifi_encryption_wpa);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiApView
 * JD-Core Version:    0.6.2
 */