package com.google.glass.home.settings;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.libraries.barhopper.Barcode;
import com.google.android.libraries.barhopper.Barcode.WiFi;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.barcode.BarcodeScanner;
import com.google.glass.barcode.BarcodeScanner.BarcodeError;
import com.google.glass.barcode.BarcodeScanner.BarcodeScannerListener;
import com.google.glass.barcode.BarcodeScanner.Builder;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.integer;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.menu;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionService;
import com.google.glass.home.companion.CompanionService.CompanionBinder;
import com.google.glass.home.companion.CompanionService.CompanionListener;
import com.google.glass.home.companion.CompanionService.SimpleCompanionListener;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.GlassError;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.SettingsHelper;
import com.google.glass.util.SetupHelper;
import com.google.glass.util.SetupHelper.WifiSetupInfo;
import com.google.glass.util.WifiHelper;
import com.google.glass.util.WifiHelper.Encryption;
import com.google.glass.util.WifiHelper.WifiConnectionCallback;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.OptionMenu.ItemState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WifiSettingsMenuActivity extends GlassActivity
{
  public static final String EXTRA_JOIN = "join";
  public static final String EXTRA_SCAN_RESULTS = "scan_results";
  private static final int NEW_NETWORK_ID = -1;
  private WifiHorizontalScrollView apsView;
  private ViewGroup barcodeScanLayout;
  private final BarcodeScanner barcodeScanner = BarcodeScanner.newBuilder().build(this, new BarcodeScanner.BarcodeScannerListener()
  {
    public boolean onBarcodeScanned(Barcode paramAnonymousBarcode)
    {
      return WifiSettingsMenuActivity.this.handleBarcode(paramAnonymousBarcode);
    }

    public void onError(BarcodeScanner.BarcodeError paramAnonymousBarcodeError)
    {
      if (paramAnonymousBarcodeError == BarcodeScanner.BarcodeError.CAMERA)
      {
        GlassError.report(WifiSettingsMenuActivity.this, GlassError.CAMERA_ERROR);
        WifiSettingsMenuActivity.this.setResult(0);
        WifiSettingsMenuActivity.this.finish();
        return;
      }
      Log.w(WifiSettingsMenuActivity.this.getTag(), "Unexpected barcode error:" + paramAnonymousBarcodeError);
    }
  });
  private final CompanionService.CompanionListener companionListener = new WifiSettingsCompanionListener(null);
  private CompanionService companionService;
  private final ServiceConnection companionServiceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      WifiSettingsMenuActivity.access$302(WifiSettingsMenuActivity.this, ((CompanionService.CompanionBinder)paramAnonymousIBinder).getService());
      WifiSettingsMenuActivity.this.addCompanionListener();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      WifiSettingsMenuActivity.access$302(WifiSettingsMenuActivity.this, null);
    }
  };
  private MessageDialog currentConnectionDialog;
  private List<ScanResult> scannedNetworks;
  private boolean wasMenuOptionSelected;
  private WifiHelper wifiHelper;
  private WifiManager wifiManager;

  private void addCompanionListener()
  {
    this.companionService.addCompanionListener(this.companionListener);
  }

  private void animate(View paramView, boolean paramBoolean, Animator.AnimatorListener paramAnimatorListener)
  {
    ViewPropertyAnimator localViewPropertyAnimator = paramView.animate();
    if (paramBoolean);
    for (int i = -1; ; i = 1)
    {
      localViewPropertyAnimator.translationYBy(i * paramView.getHeight()).setDuration(getResources().getInteger(R.integer.activity_animation_duration_ms)).setInterpolator(getTransitionInterpolator()).setListener(paramAnimatorListener).start();
      return;
    }
  }

  private void bindCompanionService()
  {
    bindService(new Intent(this, CompanionService.class), this.companionServiceConnection, 1);
  }

  private void connectToConfiguredNetwork(int paramInt)
  {
    logUserEvent(UserEventAction.WIFI_SCAN_RESULT_TAPPED);
    connectToNetwork(paramInt, null, null, null);
  }

  private void connectToNetwork(int paramInt, String paramString1, WifiHelper.Encryption paramEncryption, String paramString2)
  {
    Log.d(getTag(), "Connecting to ssid=" + paramString1 + ", encryption=" + paramEncryption);
    if ((this.currentConnectionDialog != null) && (this.currentConnectionDialog.isShowing()))
      this.currentConnectionDialog.dismiss();
    final MessageDialog localMessageDialog = new MessageDialog.Builder(this).setMessage(R.string.wifi_menu_connecting).setIcon(R.drawable.ic_wifi_medium).setAutoHide(false).setShowProgress(true).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        Log.d(WifiSettingsMenuActivity.this.getTag(), "connect canceled");
      }

      public void onDone()
      {
        Log.d(WifiSettingsMenuActivity.this.getTag(), "connect confirmed");
        WifiSettingsMenuActivity.this.apsView.setVisibility(0);
      }
    }).build();
    this.currentConnectionDialog = localMessageDialog;
    localMessageDialog.show();
    getContentView().setKeepScreenOn(true);
    WifiHelper.WifiConnectionCallback local5 = new WifiHelper.WifiConnectionCallback()
    {
      private void updateDialog(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (!localMessageDialog.isShowing())
          return;
        localMessageDialog.setListener(new MessageDialog.SimpleListener()
        {
          public void onDone()
          {
            WifiSettingsMenuActivity.this.closeOptionsMenu();
            WifiSettingsMenuActivity.this.goBackToTimeline();
          }
        });
        localMessageDialog.updateContent(paramAnonymousInt1, paramAnonymousInt2);
        localMessageDialog.autoHide();
        WifiSettingsMenuActivity.this.getContentView().setKeepScreenOn(false);
      }

      public void onConnected()
      {
        WifiSettingsMenuActivity.this.getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
        updateDialog(R.string.wifi_menu_connected, R.drawable.ic_done_medium);
      }

      public void onConnectionFailed()
      {
        WifiSettingsMenuActivity.this.getSoundManager().playSound(SoundManager.SoundId.ERROR);
        updateDialog(R.string.wifi_menu_failed, R.drawable.ic_fail_medium);
      }
    };
    if ((paramString1 == null) && (paramEncryption == null) && (paramString2 == null))
    {
      this.wifiHelper.connectToNetworkId(paramInt, local5);
      return;
    }
    this.wifiHelper.connect(paramString1, paramEncryption, paramString2, local5);
  }

  private void connectToOpenNetwork(ScanResult paramScanResult)
  {
    logUserEvent(UserEventAction.WIFI_SCAN_RESULT_TAPPED);
    connectToNetwork(-1, paramScanResult.SSID, WifiHelper.Encryption.NONE, null);
  }

  private void forgetCurrentNetwork()
  {
    int i = this.wifiManager.getConnectionInfo().getNetworkId();
    this.wifiManager.removeNetwork(i);
    this.wifiManager.saveConfiguration();
    Log.d(getTag(), "Forgot network " + i);
  }

  private static WifiHelper.Encryption getEncryption(Barcode paramBarcode)
  {
    switch (paramBarcode.wifi.encryptionType)
    {
    default:
      return WifiHelper.Encryption.NONE;
    case 3:
      return WifiHelper.Encryption.WEP;
    case 2:
    }
    return WifiHelper.Encryption.WPA;
  }

  private Interpolator getTransitionInterpolator()
  {
    return AnimationUtils.loadInterpolator(this, 17432582);
  }

  private void goBackToTimeline()
  {
    new SettingsHelper(this).goToSettings(0);
    finish();
  }

  private boolean handleBarcode(Barcode paramBarcode)
  {
    if ((9 != paramBarcode.format) || (paramBarcode.valueFormat != 9))
    {
      Log.w(getTag(), "Not a WiFi QR code: " + paramBarcode);
      return false;
    }
    SetupHelper.WifiSetupInfo localWifiSetupInfo = new SetupHelper.WifiSetupInfo(paramBarcode.wifi.ssid, getEncryption(paramBarcode), paramBarcode.wifi.password);
    logUserEvent(UserEventAction.WIFI_BARCODE_SCANNED);
    hideBarcodeViewfinder();
    this.apsView.setVisibility(8);
    connectToNetwork(-1, localWifiSetupInfo.ssid, localWifiSetupInfo.encryption, localWifiSetupInfo.key);
    return true;
  }

  private void hideBarcodeViewfinder()
  {
    this.apsView.setVisibility(0);
    animate(this.apsView, false, null);
    this.barcodeScanLayout.setTranslationY(0.0F);
    animate(this.barcodeScanLayout, false, new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        WifiSettingsMenuActivity.this.barcodeScanLayout.setVisibility(4);
      }
    });
  }

  private void setWifiScanResults(List<ScanResult> paramList)
  {
    List localList = this.wifiManager.getConfiguredNetworks();
    this.scannedNetworks = new LinkedList();
    Collections.sort(paramList, WifiHelper.SCAN_RESULT_COMPARATOR);
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      ScanResult localScanResult = (ScanResult)localIterator1.next();
      Iterator localIterator2 = this.scannedNetworks.iterator();
      while (true)
        if (localIterator2.hasNext())
          if (((ScanResult)localIterator2.next()).SSID.equals(localScanResult.SSID))
          {
            Log.d(getTag(), "Skipping already scanned result: " + localScanResult.SSID);
            break;
          }
      WifiInfo localWifiInfo = this.wifiManager.getConnectionInfo();
      if ((localWifiInfo != null) && (!TextUtils.isEmpty(localWifiInfo.getSSID())) && (localWifiInfo.getSSID().contentEquals(localScanResult.SSID)))
      {
        Log.d(getTag(), "Skipping currently connected network: " + localScanResult.SSID);
      }
      else if (this.wifiHelper.getScanResultSecurity(localScanResult) != WifiHelper.Encryption.NONE)
      {
        int i = 0;
        Iterator localIterator3 = localList.iterator();
        while (localIterator3.hasNext())
          if (((WifiConfiguration)localIterator3.next()).SSID.contentEquals('"' + localScanResult.SSID + '"'))
          {
            Log.d(getTag(), "Allowing encrypted configured network: " + localScanResult.SSID);
            i = 1;
          }
        if (i == 0)
          Log.d(getTag(), "Skipping unknown encrypted network: " + localScanResult.SSID);
      }
      else
      {
        Log.d(getTag(), "Adding ssid=" + localScanResult.SSID + ", level=" + localScanResult.level);
        this.scannedNetworks.add(localScanResult);
      }
    }
  }

  private void showBarcodeViewfinder()
  {
    animate(this.apsView, true, new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        WifiSettingsMenuActivity.this.apsView.setVisibility(4);
      }
    });
    this.barcodeScanLayout.setTranslationY(this.barcodeScanLayout.getHeight());
    this.barcodeScanLayout.setVisibility(0);
    animate(this.barcodeScanLayout, true, null);
    this.barcodeScanner.startScanning();
  }

  private void showScannedNetworks()
  {
    Object localObject = (List)getIntent().getSerializableExtra("scan_results");
    if (localObject == null)
      localObject = new ArrayList();
    setWifiScanResults((List)localObject);
    this.apsView.setNetworks(this.scannedNetworks);
    this.apsView.show();
    this.apsView.setSelection(0);
  }

  private void unbindCompanionService()
  {
    if (this.companionService != null)
      this.companionService.removeCompanionListener(this.companionListener);
    unbindService(this.companionServiceConnection);
  }

  @VisibleForTesting
  protected boolean isShowingViewfinder()
  {
    return this.barcodeScanLayout.getVisibility() == 0;
  }

  public boolean onConfirm()
  {
    if (this.barcodeScanLayout.getVisibility() == 0)
    {
      getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
      return false;
    }
    if (this.apsView.getVisibility() == 0)
    {
      if (this.apsView.getSelectedItem() == WifiScanResultsAdapter.ADD_NETWORK_MANUALLY)
      {
        if (HomeApplication.from(this).getCompanionState().isConnected())
        {
          Log.d(getTag(), "Confirm not allowed when suggesting connection via MyGlass.");
          getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
          return false;
        }
        showBarcodeViewfinder();
      }
      while (true)
      {
        getSoundManager().playSound(SoundManager.SoundId.TAP);
        return true;
        ScanResult localScanResult = (ScanResult)this.apsView.getSelectedItem();
        if (this.wifiHelper.getScanResultSecurity(localScanResult) != WifiHelper.Encryption.NONE)
        {
          Iterator localIterator = this.wifiManager.getConfiguredNetworks().iterator();
          while (localIterator.hasNext())
          {
            WifiConfiguration localWifiConfiguration = (WifiConfiguration)localIterator.next();
            if (localWifiConfiguration.SSID.contentEquals('"' + localScanResult.SSID + '"'))
            {
              Log.d(getTag(), "Found encrypted configured network: " + localScanResult.SSID);
              connectToConfiguredNetwork(localWifiConfiguration.networkId);
            }
          }
        }
        else
        {
          connectToOpenNetwork(localScanResult);
        }
      }
    }
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.wifiManager = ((WifiManager)getSystemService("wifi"));
    this.wifiHelper = new WifiHelper(this);
    this.apsView = ((WifiHorizontalScrollView)findViewById(R.id.wifi_aps));
  }

  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.wifi_settings_menu);
    if (getIntent().getBooleanExtra("join", false))
    {
      paramOptionMenu.findItem(R.id.wifi_menu_join).setVisible(true);
      paramOptionMenu.findItem(R.id.wifi_menu_switch).setVisible(false);
    }
    while (true)
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getNetworkInfo(1);
      OptionMenu.Item localItem = paramOptionMenu.findItem(R.id.wifi_menu_forget_network);
      boolean bool1 = false;
      if (localNetworkInfo != null)
      {
        boolean bool2 = localNetworkInfo.isConnected();
        bool1 = false;
        if (bool2)
          bool1 = true;
      }
      localItem.setVisible(bool1);
      return true;
      paramOptionMenu.findItem(R.id.wifi_menu_join).setVisible(false);
      paramOptionMenu.findItem(R.id.wifi_menu_switch).setVisible(true);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.wifiHelper.release();
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (this.barcodeScanLayout.getVisibility() == 0)
    {
      hideBarcodeViewfinder();
      this.barcodeScanner.stopScanning();
      return true;
    }
    if (this.apsView.getVisibility() == 0)
    {
      this.apsView.hide();
      getSoundManager().playSound(SoundManager.SoundId.DISMISS);
      openOptionsMenu();
      return true;
    }
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return this.apsView.onFingerCountChanged(paramInt, paramBoolean);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    Log.d(getTag(), "onMenuOptionConfirmed item=" + paramItem.getCurrentState().getName());
    this.wasMenuOptionSelected = true;
    int i = paramItem.getItemId();
    if ((i == R.id.wifi_menu_join) || (i == R.id.wifi_menu_switch))
    {
      showScannedNetworks();
      return true;
    }
    if (i == R.id.wifi_menu_forget_network)
    {
      new MessageDialog.Builder(this).setTemporaryMessage(R.string.wifi_menu_forgetting).setTemporaryIcon(R.drawable.ic_delete_medium).setMessage(R.string.wifi_menu_forgotten).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setAnimated(false).setListener(new MessageDialog.SimpleListener()
      {
        public void onDismissed()
        {
          Log.d(WifiSettingsMenuActivity.this.getTag(), "forget canceled");
          WifiSettingsMenuActivity.this.goBackToTimeline();
        }

        public void onDone()
        {
          Log.d(WifiSettingsMenuActivity.this.getTag(), "forget confirmed");
          WifiSettingsMenuActivity.this.forgetCurrentNetwork();
          WifiSettingsMenuActivity.this.goBackToTimeline();
        }
      }).build().show();
      return true;
    }
    return false;
  }

  public void onOptionsMenuClosed(OptionMenu paramOptionMenu)
  {
    if (!this.wasMenuOptionSelected)
      goBackToTimeline();
  }

  protected void onPause()
  {
    super.onPause();
    if ((this.currentConnectionDialog != null) && (this.currentConnectionDialog.isShowing()))
      this.currentConnectionDialog.dismiss();
    if (isShowingViewfinder())
      hideBarcodeViewfinder();
    this.barcodeScanner.stopScanning();
    this.barcodeScanner.unbindCamera(this);
    this.apsView.setVisibility(8);
    this.apsView.deactivate();
    unbindCompanionService();
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    this.wasMenuOptionSelected = false;
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    this.apsView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  public void onResume()
  {
    super.onResume();
    this.barcodeScanner.bindCamera(this);
    this.apsView.activate();
    this.apsView.setVisibility(8);
    this.barcodeScanLayout = ((ViewGroup)findViewById(R.id.qr_scan));
    this.barcodeScanner.setViewfinder((TextureView)this.barcodeScanLayout.findViewById(R.id.viewfinder));
    if (!this.wasMenuOptionSelected)
      openOptionsMenu();
    SetupHelper.WifiSetupInfo localWifiSetupInfo;
    while (true)
    {
      String str = getIntent().getStringExtra("wifi_setup_string");
      if (str == null)
        break label154;
      getIntent().removeExtra("wifi_setup_string");
      localWifiSetupInfo = SetupHelper.getWifiSetupInfo(str);
      if (localWifiSetupInfo != null)
        break;
      Log.w(getTag(), "Can't parse the companion wifi setup string");
      return;
      this.apsView.setVisibility(0);
    }
    logUserEvent(UserEventAction.WIFI_SETUP_VIA_COMPANION);
    connectToNetwork(-1, localWifiSetupInfo.ssid, localWifiSetupInfo.encryption, localWifiSetupInfo.key);
    label154: bindCompanionService();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (super.onSwipe(paramInt, paramSwipeDirection))
      return true;
    this.apsView.onSwipe(paramInt, paramSwipeDirection);
    return true;
  }

  protected int provideContentView()
  {
    return R.layout.wifi_menu_activity;
  }

  private class WifiSettingsCompanionListener extends CompanionService.SimpleCompanionListener
  {
    private WifiSettingsCompanionListener()
    {
    }

    private void onConnectionStatusChanged(final boolean paramBoolean)
    {
      WifiSettingsMenuActivity.this.runOnUiThread(new Runnable()
      {
        public void run()
        {
          WifiSettingsMenuActivity.this.apsView.onCompanionConnectionStatusChanged(paramBoolean);
        }
      });
    }

    public void onCompanionConnected(BluetoothDevice paramBluetoothDevice)
    {
      onConnectionStatusChanged(true);
    }

    public void onCompanionConnectionFailed()
    {
      onConnectionStatusChanged(false);
    }

    public void onCompanionDisconnected()
    {
      onConnectionStatusChanged(false);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiSettingsMenuActivity
 * JD-Core Version:    0.6.2
 */