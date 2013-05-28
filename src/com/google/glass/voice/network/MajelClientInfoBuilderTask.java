package com.google.glass.voice.network;

import com.google.android.speech.network.request.BaseRequestBuilderTask;
import com.google.android.speech.params.DeviceParams;
import com.google.majel.proto.ClientInfoProtos.BrowserParams;
import com.google.majel.proto.ClientInfoProtos.PreviewParams;
import com.google.majel.proto.ClientInfoProtos.ScreenParams;
import com.google.speech.speech.s3.Majel.MajelClientInfo;
import java.util.TimeZone;

public class MajelClientInfoBuilderTask extends BaseRequestBuilderTask<Majel.MajelClientInfo>
{
  private static final int GLASS_MAJEL_CLIENT_ID = 15;
  private final DeviceParams deviceParams;

  public MajelClientInfoBuilderTask(DeviceParams paramDeviceParams)
  {
    super("MajelClientInfoBuilderTask");
    this.deviceParams = paramDeviceParams;
  }

  private static String getTimeZone()
  {
    return TimeZone.getDefault().getID();
  }

  protected Majel.MajelClientInfo build()
  {
    return new Majel.MajelClientInfo().addCapabilities(0).addCapabilities(1).addCapabilities(2).addCapabilities(4).addCapabilities(7).addCapabilities(8).addCapabilities(9).addCapabilities(16).addCapabilities(10).addCapabilities(11).addCapabilities(20).addCapabilities(14).setPreviewParams(new ClientInfoProtos.PreviewParams()).setScreenParams(new ClientInfoProtos.ScreenParams()).setBrowserParams(new ClientInfoProtos.BrowserParams()).setTimeZone(getTimeZone()).setSystemTimeMs(System.currentTimeMillis()).setClient(15).setGservicesCountryCode(this.deviceParams.getDeviceCountry());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.MajelClientInfoBuilderTask
 * JD-Core Version:    0.6.2
 */