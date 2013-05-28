package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.googlex.glass.common.proto.Entity;

public class HangoutHelper
{
  public static final String ACTION_EXIT_HANGOUTS = "com.google.glass.action.EXIT_HANGOUTS";
  public static final String ACTION_HANGOUTS = "com.google.glass.action.HANGOUTS";
  public static final String ACTION_HANGOUT_STATUS = "com.google.glass.action.HANGOUT_STATUS";
  public static final String EXTRA_FOREGROUND = "foreground";
  public static final String EXTRA_HANGOUT_INVITEE = "_invitee";
  public static final String EXTRA_HANGOUT_INVITER = "inviter";
  public static final String EXTRA_INCOMING_ACTION = "hangoutAction";
  public static final String EXTRA_INCOMING_SOURCE = "hangoutSource";
  public static final String EXTRA_INCOMING_TYPE = "hangoutType";
  public static final String EXTRA_INVITED = "invited";
  public static final String EXTRA_PARTICIPATING = "participating";
  public static final String EXTRA_ROOM_ID = "room_id";
  private static final String HANGOUT_BASE_URL = "https://plus.google.com/hangouts/_/";
  private static final String TAG = HangoutHelper.class.getSimpleName();
  protected final Context context;

  public HangoutHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public static String buildHangoutUrl(String paramString)
  {
    return "https://plus.google.com/hangouts/_/" + paramString;
  }

  private Intent generateIntent(Entity paramEntity, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.HANGOUTS");
    localIntent.putExtra("_invitee", paramEntity);
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean);
    localIntent.addFlags(335544320);
    return localIntent;
  }

  public void bringHangoutToForeground()
  {
    Log.d(TAG, "Bringing hangout to foreground");
    Intent localIntent = new Intent("com.google.glass.action.HANGOUTS");
    localIntent.putExtra("foreground", true);
    localIntent.addFlags(335544320);
    this.context.startActivity(localIntent);
  }

  public void broadcastHangoutExited()
  {
    Intent localIntent = new Intent("com.google.glass.action.HANGOUT_STATUS");
    this.context.removeStickyBroadcast(localIntent);
    this.context.sendBroadcast(localIntent);
  }

  public void broadcastHangoutJoined()
  {
    this.context.sendStickyBroadcast(new Intent("com.google.glass.action.HANGOUT_STATUS").putExtra("participating", true));
  }

  public void exitOngoingHangout()
  {
    Log.d(TAG, "Exiting hangout.");
    Intent localIntent = new Intent("com.google.glass.action.EXIT_HANGOUTS");
    localIntent.putExtra("foreground", true);
    localIntent.addFlags(335544320);
    this.context.startActivity(localIntent);
  }

  public boolean isInHangout()
  {
    Intent localIntent = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.HANGOUT_STATUS"));
    boolean bool1 = false;
    if (localIntent != null)
    {
      boolean bool2 = localIntent.getBooleanExtra("participating", false);
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public void joinHangout(String paramString, Entity paramEntity, boolean paramBoolean)
  {
    joinHangout(paramString, paramEntity, paramBoolean, false);
  }

  public void joinHangout(String paramString, Entity paramEntity, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str = "Joining Hangout roomId=" + paramString;
    if (paramEntity != null)
      str = str + " with " + paramEntity.getDisplayName() + ", id=" + paramEntity.getId();
    LogHelper.logPii(3, TAG, str);
    Intent localIntent = generateIntent(paramEntity, paramBoolean1);
    localIntent.putExtra("room_id", paramString);
    localIntent.putExtra("invited", paramBoolean2);
    this.context.startActivity(localIntent);
  }

  public void startHangout(Entity paramEntity, boolean paramBoolean)
  {
    LogHelper.logPii(3, TAG, "Hanging out with " + paramEntity.getDisplayName() + ", id=" + paramEntity.getId());
    this.context.startActivity(generateIntent(paramEntity, paramBoolean));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HangoutHelper
 * JD-Core Version:    0.6.2
 */