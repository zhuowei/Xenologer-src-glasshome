package com.google.glass.home.settings;

import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.util.WifiHelper;
import com.google.glass.util.WifiHelper.Encryption;
import com.google.glass.widget.TypophileTextView;
import java.util.List;

public class WifiScanResultsAdapter extends BaseAdapter
  implements ViewRecycler
{
  public static final Object ADD_NETWORK_MANUALLY = new Object();
  private static final String TAG = WifiScanResultsAdapter.class.getSimpleName();
  private final Context context;
  private List<ScanResult> scannedNetworks;
  private final WifiHelper wifiHelper;

  public WifiScanResultsAdapter(Context paramContext, List<ScanResult> paramList)
  {
    this.context = paramContext;
    this.scannedNetworks = paramList;
    this.wifiHelper = new WifiHelper(paramContext);
  }

  private View getManualScanView(int paramInt, View paramView, LinearLayout paramLinearLayout)
  {
    paramView.findViewById(R.id.timeline_lhs).setBackgroundColor(this.context.getResources().getColor(R.color.background_dark_gray_semitransparent));
    paramView.findViewById(R.id.timeline_rhs).setBackgroundColor(this.context.getResources().getColor(17170445));
    paramLinearLayout.setVisibility(0);
    ((ImageView)paramView.findViewById(R.id.wifi_signal_strength)).setImageResource(R.drawable.ic_wifi4_add_big);
    TypophileTextView localTypophileTextView1 = (TypophileTextView)paramView.findViewById(R.id.wifi_network_name);
    localTypophileTextView1.setText(R.string.wifi_add_network);
    localTypophileTextView1.setVisibility(0);
    TypophileTextView localTypophileTextView2 = (TypophileTextView)paramView.findViewById(R.id.wifi_other_networks);
    if (HomeApplication.from(this.context).getCompanionState().isConnected())
      localTypophileTextView2.setText(R.string.wifi_add_network_via_myglass);
    while (true)
    {
      localTypophileTextView2.setVisibility(0);
      paramView.setTag(R.id.tag_horizontal_scroll_item, ADD_NETWORK_MANUALLY);
      paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return paramView;
      localTypophileTextView2.setText(R.string.wifi_add_network_via_qr_code);
    }
  }

  private View getWifiApView(int paramInt, View paramView, LinearLayout paramLinearLayout)
  {
    paramView.findViewById(R.id.timeline_lhs).setBackgroundColor(this.context.getResources().getColor(R.color.background_dark_gray));
    paramView.findViewById(R.id.timeline_rhs).setBackgroundColor(this.context.getResources().getColor(R.color.background_black));
    paramLinearLayout.setVisibility(8);
    ScanResult localScanResult = (ScanResult)getItem(paramInt);
    int i = WifiManager.calculateSignalLevel(localScanResult.level, 5);
    WifiHelper.Encryption localEncryption = this.wifiHelper.getScanResultSecurity(localScanResult);
    ((WifiApView)paramView).setWifiData(i, localEncryption, localScanResult.SSID);
    paramView.setTag(R.id.tag_horizontal_scroll_item, getItem(paramInt));
    paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    return paramView;
  }

  private boolean isLastView(int paramInt)
  {
    return paramInt == -1 + getCount();
  }

  public int getCount()
  {
    return 1 + this.scannedNetworks.size();
  }

  public Object getItem(int paramInt)
  {
    if (paramInt == this.scannedNetworks.size())
      return ADD_NETWORK_MANUALLY;
    return this.scannedNetworks.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new WifiApView(this.context);
      Log.d(TAG, "Instantiating a new view for position " + paramInt);
    }
    LinearLayout localLinearLayout;
    while (true)
    {
      localLinearLayout = (LinearLayout)paramView.findViewById(R.id.barcode_shade);
      if (!isLastView(paramInt))
        break;
      return getManualScanView(paramInt, paramView, localLinearLayout);
      Log.d(TAG, "Reusing a view for position " + paramInt);
    }
    return getWifiApView(paramInt, paramView, localLinearLayout);
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiScanResultsAdapter
 * JD-Core Version:    0.6.2
 */