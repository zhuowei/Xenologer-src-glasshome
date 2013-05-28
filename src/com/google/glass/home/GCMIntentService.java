package com.google.glass.home;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gcm.GCMBaseIntentService;
import com.google.glass.hidden.HiddenSystemProperties;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponseHandler;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.net.SimpleProtoResponseHandler;
import com.google.glass.sync.SyncHelper;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.C2DMRegistrationRequest;
import com.google.googlex.glass.common.proto.C2DMRegistrationRequest.Action;
import com.google.googlex.glass.common.proto.C2DMRegistrationRequest.Builder;
import com.google.googlex.glass.common.proto.C2DMRegistrationResponse;
import java.util.Locale;

public class GCMIntentService extends GCMBaseIntentService
{
  public static final String ACTION_RETRY_GCM_REGISTER = "retry_gcm_register";
  private static final String[] ANDROID_ID_PROJECTION = { "value" };
  private static final String ANDROID_ID_SELECTION = "name=?";
  private static final String[] ANDROID_ID_SELECTION_ARGS = { "android_id" };
  private static final String ERROR_AUTHENTICATION_FAILED = "AUTHENTICATION_FAILED";
  private static final String ERROR_PHONE_REGISTRATION_ERROR = "PHONE_REGISTRATION_ERROR";
  public static final String GCM_SENDER_ID = "229668747847";
  private static final Uri GSERVICES_CONTENT_URI;
  private static final String TAG = GCMIntentService.class.getSimpleName();

  static
  {
    GSERVICES_CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
  }

  public GCMIntentService()
  {
    super(new String[] { "229668747847" });
  }

  private static void dispatch(ProtoRequestDispatcher paramProtoRequestDispatcher, C2DMRegistrationRequest paramC2DMRegistrationRequest, ProtoResponseHandler<C2DMRegistrationResponse> paramProtoResponseHandler)
  {
    paramProtoRequestDispatcher.dispatch(ServerConstants.Action.GCM_REGISTRATION, paramC2DMRegistrationRequest, true, C2DMRegistrationResponse.PARSER, paramProtoResponseHandler);
  }

  private static long getGsfDeviceId(Context paramContext)
  {
    long l1 = 0L;
    Cursor localCursor = null;
    try
    {
      localCursor = paramContext.getContentResolver().query(GSERVICES_CONTENT_URI, ANDROID_ID_PROJECTION, "name=?", ANDROID_ID_SELECTION_ARGS, null);
      String str;
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        str = localCursor.getString(localCursor.getColumnIndex(ANDROID_ID_PROJECTION[0]));
        if (str == null)
          break label83;
      }
      try
      {
        long l2 = Long.parseLong(str);
        label83: for (l1 = l2; ; l1 = 0L)
          return l1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          l1 = 0L;
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static void isRegisteredWithGlassServer(ProtoRequestDispatcher paramProtoRequestDispatcher, String paramString, ProtoResponseHandler<C2DMRegistrationResponse> paramProtoResponseHandler)
  {
    Log.v(TAG, "Checking if registered with Glass server.");
    dispatch(paramProtoRequestDispatcher, C2DMRegistrationRequest.newBuilder().setAction(C2DMRegistrationRequest.Action.CHECK_REGISTERED).setRegistrationId(paramString).build(), paramProtoResponseHandler);
  }

  public static void registerWithGlassServer(HomeApplication paramHomeApplication, final String paramString)
  {
    Log.v(TAG, "Registering with Glass server.");
    if (TextUtils.isEmpty(paramString))
    {
      Log.e(TAG, "Cannot make a request without registration ID.");
      return;
    }
    new AsyncTask()
    {
      protected Pair<String, Long> doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        return new Pair(new SettingsSecure(this.val$application.getContentResolver()).getString("android_id"), Long.valueOf(GCMIntentService.getGsfDeviceId(this.val$application)));
      }

      protected void onPostExecute(Pair<String, Long> paramAnonymousPair)
      {
        String str1 = HiddenSystemProperties.get("ro.build.version.glass", this.val$application.getString(R.string.deviceinfo_unknown));
        try
        {
          i = this.val$application.getPackageManager().getPackageInfo(this.val$application.getPackageName(), 0).versionCode;
          String str2 = Build.VERSION.INCREMENTAL;
          String str3 = Build.PRODUCT;
          GCMIntentService.dispatch(this.val$application.getRequestDispatcher(), C2DMRegistrationRequest.newBuilder().setAction(C2DMRegistrationRequest.Action.REGISTER).setRegistrationId(paramString).setDeviceId((String)paramAnonymousPair.first).setLocale(Locale.getDefault().toString()).setGsfDeviceId(((Long)paramAnonymousPair.second).longValue()).setMajorVersion(str1).setVersion(i).setDeviceOsVersion(str2).setDeviceHardware(str3).build(), new SimpleProtoResponseHandler());
          return;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            int i = -1;
        }
      }
    }
    .execute(new Void[0]);
  }

  private static void unregisterWithGlassServer(ProtoRequestDispatcher paramProtoRequestDispatcher, String paramString)
  {
    Log.v(TAG, "Unregistering from Glass server.");
    if (TextUtils.isEmpty(paramString))
    {
      Log.e(TAG, "Cannot make a request without registration ID.");
      return;
    }
    dispatch(paramProtoRequestDispatcher, C2DMRegistrationRequest.newBuilder().setAction(C2DMRegistrationRequest.Action.UNREGISTER).setRegistrationId(paramString).build(), new SimpleProtoResponseHandler());
  }

  protected void onError(Context paramContext, String paramString)
  {
    Log.d(TAG, "An error has occurred: " + paramString);
    if ((paramString != null) && (("AUTHENTICATION_FAILED".equals(paramString)) || ("PHONE_REGISTRATION_ERROR".equals(paramString))))
      sendBroadcast(new Intent("retry_gcm_register"));
  }

  protected void onMessage(Context paramContext, Intent paramIntent)
  {
    Log.d(TAG, "Received message: " + paramIntent.getExtras());
    String str;
    Bundle localBundle;
    if (paramIntent.hasExtra("p"))
    {
      str = paramIntent.getStringExtra("p");
      localBundle = new Bundle();
      localBundle.putBoolean("com.google.glass.sync.GCM_SYNC", true);
      if ((!"timeline_sync".equals(str)) && (!"timeline_sync_ttl".equals(str)))
        break label95;
      SyncHelper.triggerSync(paramContext, "com.google.glass.timeline", localBundle);
    }
    label95: 
    do
    {
      return;
      if ("share_target_sync".equals(str))
      {
        SyncHelper.triggerSync(paramContext, "com.google.glass.entity", localBundle);
        return;
      }
      if ("report_location".equals(str))
      {
        SyncHelper.triggerSync(paramContext, "com.google.glass.location", localBundle);
        return;
      }
    }
    while (!"remote_wipe".equals(str));
    startService(new Intent("com.google.glass.deviceadmin.REMOTE_WIPE"));
  }

  protected void onRegistered(Context paramContext, String paramString)
  {
    registerWithGlassServer(HomeApplication.from(this), paramString);
  }

  protected void onUnregistered(Context paramContext, String paramString)
  {
    unregisterWithGlassServer(HomeApplication.from(this).getRequestDispatcher(), paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.GCMIntentService
 * JD-Core Version:    0.6.2
 */