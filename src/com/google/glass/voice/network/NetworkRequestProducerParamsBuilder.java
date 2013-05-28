package com.google.glass.voice.network;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Location;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.WindowManager;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.helper.AuthTokenHelper;
import com.google.android.speech.helper.SpeechLocationHelper;
import com.google.android.speech.params.DeviceParams;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.utils.NetworkInformation;
import com.google.android.voicesearch.speechservice.s3.PinholeParamsBuilder;
import com.google.common.base.Supplier;
import com.google.glass.location.LocationHelper;
import com.google.glass.net.ServerConstants;
import com.google.speech.s3.PinholeStream.PinholeParams;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import location.unified.LocationDescriptorProto.FeatureIdProto;
import location.unified.LocationDescriptorProto.LatLng;
import location.unified.LocationDescriptorProto.LocationDescriptor;

public class NetworkRequestProducerParamsBuilder
{
  private static final String TAG = NetworkRequestProducerParamsBuilder.class.getSimpleName();
  private static String appVersion = null;

  public static NetworkRequestProducerParams create(Context paramContext, SpeechSettings paramSpeechSettings, NetworkInformation paramNetworkInformation)
  {
    return new NetworkRequestProducerParams(new AccountHelperImpl(null), (WindowManager)paramContext.getSystemService("window"), paramNetworkInformation, new PinholeParamsBuilderImpl(null), new SpeechLocationHelperImpl(), paramSpeechSettings, getDeviceParams(paramContext));
  }

  public static String getAppVersion(Context paramContext)
  {
    if (appVersion == null);
    try
    {
      appVersion = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      if (appVersion == null)
        return "";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        Log.e(TAG, localNameNotFoundException.getMessage(), localNameNotFoundException);
    }
    return appVersion;
  }

  private static DeviceParams getDeviceParams(Context paramContext)
  {
    return new DeviceParams()
    {
      public String getApplicationVersion()
      {
        return NetworkRequestProducerParamsBuilder.getAppVersion(this.val$context);
      }

      public String getDeviceCountry()
      {
        return "US";
      }

      public String getSearchDomainCountryCode()
      {
        return "US";
      }

      public String getUserAgent()
      {
        return ServerConstants.getUserAgent();
      }
    };
  }

  private static class AccountHelperImpl
    implements AuthTokenHelper
  {
    public List<String> blockingGetAuthTokens(long paramLong, TimeUnit paramTimeUnit)
    {
      return new ArrayList();
    }

    public String getServiceName()
    {
      return null;
    }

    public void invalidateAuthTokens()
    {
    }
  }

  private static class PinholeParamsBuilderImpl
    implements PinholeParamsBuilder
  {
    public Callable<PinholeStream.PinholeParams> getPinholeParamsCallable(Supplier<String> paramSupplier)
    {
      return null;
    }
  }

  public static class SpeechLocationHelperImpl
    implements SpeechLocationHelper
  {
    private static final double E7 = 10000000.0D;
    private static final String LOCATION_PREFIX = "w ";
    private static final double MILLIMETERS_IN_A_METER = 1000.0D;

    public static String getXGeoLocation(Location paramLocation)
    {
      LocationDescriptorProto.LocationDescriptor localLocationDescriptor = new LocationDescriptorProto.LocationDescriptor();
      LocationDescriptorProto.LatLng localLatLng = new LocationDescriptorProto.LatLng();
      localLocationDescriptor.setRole(1);
      localLocationDescriptor.setProducer(12);
      localLatLng.setLatitudeE7((int)Math.round(10000000.0D * paramLocation.getLatitude()));
      localLatLng.setLongitudeE7((int)Math.round(10000000.0D * paramLocation.getLongitude()));
      localLocationDescriptor.setLatlng(localLatLng);
      long l = paramLocation.getTime();
      localLocationDescriptor.setTimestamp(TimeUnit.MILLISECONDS.toMicros(l));
      if (paramLocation.hasAccuracy())
        localLocationDescriptor.setRadius((float)(1000.0D * paramLocation.getAccuracy()));
      Bundle localBundle = paramLocation.getExtras();
      if (localBundle != null)
      {
        if (localBundle.containsKey("levelId"))
        {
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto = parseFeatureId(localBundle.getString("levelId"));
          if (localFeatureIdProto != null)
            localLocationDescriptor.setLevelFeatureId(localFeatureIdProto);
        }
        if (localBundle.containsKey("levelNumberE3"))
          localLocationDescriptor.setLevelNumber(localBundle.getInt("levelNumberE3") / 1000.0F);
      }
      return "w " + Base64.encodeToString(localLocationDescriptor.toByteArray(), 10);
    }

    private static boolean isFirstBitSet(String paramString)
    {
      int i = paramString.length();
      boolean bool = false;
      if (i == 16)
      {
        int j = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
        bool = false;
        if (j > 7)
          bool = true;
      }
      return bool;
    }

    private static String maskFirstBit(String paramString)
      throws NumberFormatException
    {
      int i = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
      return String.valueOf(i & 0x7) + paramString.substring(1);
    }

    private static LocationDescriptorProto.FeatureIdProto parseFeatureId(String paramString)
    {
      if (paramString == null)
      {
        Log.e(NetworkRequestProducerParamsBuilder.TAG, "null FeatureId");
        return null;
      }
      String[] arrayOfString = paramString.split(":");
      if ((arrayOfString.length == 2) && (arrayOfString[0].startsWith("0x")) && (arrayOfString[1].startsWith("0x")))
        try
        {
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto = new LocationDescriptorProto.FeatureIdProto();
          localFeatureIdProto.setCellId(parseHexUnsignedLong(arrayOfString[0].substring(2)));
          localFeatureIdProto.setFprint(parseHexUnsignedLong(arrayOfString[1].substring(2)));
          return localFeatureIdProto;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          Log.e(NetworkRequestProducerParamsBuilder.TAG, "Invalid FeatureId: " + paramString);
          return null;
        }
      Log.e(NetworkRequestProducerParamsBuilder.TAG, "Invalid FeatureId: " + paramString);
      return null;
    }

    public static long parseHexUnsignedLong(String paramString)
      throws NumberFormatException
    {
      if (isFirstBitSet(paramString))
        return -9223372036854775808L + Long.parseLong(maskFirstBit(paramString), 16);
      return Long.parseLong(paramString, 16);
    }

    public String getXGeoLocation()
    {
      Location localLocation = LocationHelper.getLastKnownLocation();
      if (localLocation != null)
        return getXGeoLocation(localLocation);
      return null;
    }

    public boolean shouldSendLocation()
    {
      return true;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.NetworkRequestProducerParamsBuilder
 * JD-Core Version:    0.6.2
 */