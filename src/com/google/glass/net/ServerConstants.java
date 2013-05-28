package com.google.glass.net;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.hidden.HiddenSystemProperties;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class ServerConstants
{
  private static final String AUTOPUSH_DOMAIN = "glass.sandbox.google.com";
  private static final String AUTOPUSH_PATH_COMPONENT = "autopush";
  private static final String CHECK_SETUP_ACCESS_SUFFIX = "_/checksetupaccess";
  private static final String CLIENT_PROXY_PATH_COMPONENT = "cp";
  private static final String DEV_DOMAIN = "glass.sandbox.google.com";
  private static final String DEV_PATH_COMPONENT = "dev";
  private static final String GLASS_USER_AGENT = String.format("Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Glass 1 Build/IMM76L; %s) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30", arrayOfObject);
  public static final String HELP_LINK = "https://support.google.com/glass";
  private static final String MY_GLASS_PAGE_SUFFIX = "myglass";
  private static final String PROD_DOMAIN = "clients2.google.com";
  private static final String PROD_FRONTEND_PREFIX = "https://glass.google.com/";
  private static final String PROD_PATH_COMPONENT = "glass";
  private static final String SETUP_PAGE_SUFFIX = "ml2";
  private static final String STAGING_DOMAIN = "glass.sandbox.google.com";
  private static final String STAGING_FRONTEND_PREFIX = "https://glass.sandbox.google.com/staging/fe/";
  private static final String STAGING_PATH_COMPONENT = "staging";
  private static final String TAG = ServerConstants.class.getSimpleName();

  static
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = HiddenSystemProperties.get("ro.build.version.glass", "");
  }

  public static String getBatchUrl()
  {
    return makeClientProxyUrl("b");
  }

  public static String getCheckSetupAccessUrl()
  {
    return getFrontendPrefix() + "_/checksetupaccess";
  }

  private static String getFrontendPrefix()
  {
    return "https://glass.google.com/";
  }

  public static String getMyGlassUrl()
  {
    return getFrontendPrefix() + "myglass";
  }

  public static String getResumableUploadUrl()
  {
    return makeUrl("uploads");
  }

  public static String getRootUrl()
  {
    String str1;
    String str2;
    if (Labs.isEnabled(Labs.Feature.PRODUCTION_SERVERS))
    {
      str1 = "clients2.google.com";
      str2 = "glass";
    }
    while (true)
    {
      String str3 = "https://" + str1 + "/" + str2;
      Log.d(TAG, str3);
      return str3;
      if (Labs.isEnabled(Labs.Feature.STAGING_SERVERS))
      {
        str1 = "glass.sandbox.google.com";
        str2 = "staging";
      }
      else if (Labs.isEnabled(Labs.Feature.TESTING_SERVERS))
      {
        str1 = "glass.sandbox.google.com";
        str2 = "autopush";
      }
      else if (Labs.isEnabled(Labs.Feature.DEV_SERVERS))
      {
        str1 = "glass.sandbox.google.com";
        str2 = "dev";
      }
      else
      {
        str1 = "clients2.google.com";
        str2 = "glass";
      }
    }
  }

  public static String getSetupPageUrl()
  {
    return getFrontendPrefix() + "ml2";
  }

  public static String getUserAgent()
  {
    return GLASS_USER_AGENT;
  }

  @VisibleForTesting
  static String makeClientProxyUrl(String paramString)
  {
    return getRootUrl() + "/" + "cp" + "/" + paramString;
  }

  @VisibleForTesting
  static String makeUrl(String paramString)
  {
    return getRootUrl() + "/" + paramString;
  }

  public static enum Action
  {
    public final String path;

    static
    {
      GET_SESSION_ID = new Action("GET_SESSION_ID", 1, "gsi");
      REPORT_USER_EVENT = new Action("REPORT_USER_EVENT", 2, "rue");
      GCM_REGISTRATION = new Action("GCM_REGISTRATION", 3, "c2dm");
      REPORT_LOCATION = new Action("REPORT_LOCATION", 4, "loc");
      ENTITY_SYNC = new Action("ENTITY_SYNC", 5, "es");
      TIMELINE_SYNC = new Action("TIMELINE_SYNC", 6, "sync");
      REMOTE_WIPE_CONFIRMATION = new Action("REMOTE_WIPE_CONFIRMATION", 7, "rwc");
      DOWNLOAD_IMAGE = new Action("DOWNLOAD_IMAGE", 8, "di");
      TIMEZONE = new Action("TIMEZONE", 9, "tz");
      ATTACHMENT_GET = new Action("ATTACHMENT_GET", 10, "ag");
      ATTACHMENT_INSERT = new Action("ATTACHMENT_INSERT", 11, "ai");
      RESOURCE = new Action("RESOURCE", 12, "res");
      Action[] arrayOfAction = new Action[13];
      arrayOfAction[0] = SETUP_USER_ACCOUNT;
      arrayOfAction[1] = GET_SESSION_ID;
      arrayOfAction[2] = REPORT_USER_EVENT;
      arrayOfAction[3] = GCM_REGISTRATION;
      arrayOfAction[4] = REPORT_LOCATION;
      arrayOfAction[5] = ENTITY_SYNC;
      arrayOfAction[6] = TIMELINE_SYNC;
      arrayOfAction[7] = REMOTE_WIPE_CONFIRMATION;
      arrayOfAction[8] = DOWNLOAD_IMAGE;
      arrayOfAction[9] = TIMEZONE;
      arrayOfAction[10] = ATTACHMENT_GET;
      arrayOfAction[11] = ATTACHMENT_INSERT;
      arrayOfAction[12] = RESOURCE;
    }

    private Action(String paramString)
    {
      this.path = paramString;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ServerConstants
 * JD-Core Version:    0.6.2
 */