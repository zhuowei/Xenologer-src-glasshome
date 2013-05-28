package com.google.glass.home.camera;

import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.barhopper.Barcode;
import com.google.glass.barcode.QrHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public class QrReceiver extends SafeBroadcastReceiver
{
  protected String getTag()
  {
    return getClass().getSimpleName();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.google.glass.action.PROCESS_BARCODE".equals(paramIntent.getAction()))
    {
      Barcode localBarcode = new QrHelper(paramContext).fromIntent(paramIntent);
      new QrCodeHandler(paramContext).handle(localBarcode);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.camera.QrReceiver
 * JD-Core Version:    0.6.2
 */