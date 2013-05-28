package com.google.glass.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.http.AndroidHttpClient;
import android.util.Log;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class NetworkUtil
{
  private static final String PING_URI = "https://www.google.com";
  private static final String TAG = NetworkUtil.class.getSimpleName();
  private static final int TIMEOUT_MS = 8000;
  private static CompanionNetworkWorker companionNetworkWorker;

  public static void checkNetwork()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.check();
  }

  public static boolean hasTetheredConnectivity(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo != null)
    {
      int i = arrayOfNetworkInfo.length;
      for (int j = 0; j < i; j++)
      {
        NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
        if ((localNetworkInfo.getType() == 7) && (localNetworkInfo.isConnected()))
          return true;
      }
    }
    return false;
  }

  public static boolean pingGoogle()
  {
    AndroidHttpClient localAndroidHttpClient = AndroidHttpClient.newInstance(ServerConstants.getUserAgent());
    try
    {
      HttpParams localHttpParams = localAndroidHttpClient.getParams();
      HttpConnectionParams.setConnectionTimeout(localHttpParams, 8000);
      HttpConnectionParams.setSoTimeout(localHttpParams, 8000);
      HttpResponse localHttpResponse = localAndroidHttpClient.execute(new HttpHead("https://www.google.com"));
      StatusLine localStatusLine = localHttpResponse.getStatusLine();
      Header[] arrayOfHeader = localHttpResponse.getAllHeaders();
      if ((localStatusLine == null) || (arrayOfHeader == null))
      {
        Log.i(TAG, "Unable to reach https://www.google.com.");
        return false;
      }
      Log.d(TAG, "Fetch of https://www.google.com returned status: " + localStatusLine.getStatusCode());
      int i = localStatusLine.getStatusCode();
      boolean bool = false;
      if (i < 400)
        bool = true;
      return bool;
    }
    catch (IOException localIOException)
    {
      Log.i(TAG, "Unable to reach https://www.google.com: ", localIOException);
      return false;
    }
    finally
    {
      localAndroidHttpClient.close();
    }
  }

  public static void reportNetworkError()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.reportError();
  }

  public static void reportNetworkOK()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.reportOK();
  }

  public static void setNetworkChecker(CompanionNetworkWorker paramCompanionNetworkWorker)
  {
    companionNetworkWorker = paramCompanionNetworkWorker;
  }

  public static abstract interface CompanionNetworkWorker
  {
    public abstract void check();

    public abstract void reportError();

    public abstract void reportOK();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.NetworkUtil
 * JD-Core Version:    0.6.2
 */