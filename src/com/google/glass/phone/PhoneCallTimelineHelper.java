package com.google.glass.phone;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.string;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;

public class PhoneCallTimelineHelper
{
  private static final String TAG = PhoneCallTimelineHelper.class.getSimpleName();
  private static final long WAKE_LOCK_TIMEOUT_MS = 10000L;
  private final Context context;
  private final TimelineHelper timelineHelper = new TimelineHelper();

  public PhoneCallTimelineHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private static void addMenuItems(TimelineItem.Builder paramBuilder, String paramString)
  {
    paramBuilder.addMenuItemBuilder().setAction(MenuItem.Action.VOICE_CALL).setId(paramString);
    paramBuilder.addMenuItemBuilder().setAction(MenuItem.Action.DELETE);
  }

  @VisibleForTesting
  protected String formatDuration(long paramLong)
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = paramLong / 1000L;
    if (l3 >= 60L)
    {
      l2 = l3 / 60L;
      l3 -= 60L * l2;
    }
    long l4 = l3;
    if (l2 >= 60L)
    {
      l1 = l2 / 60L;
      l2 -= 60L * l1;
    }
    if (l1 > 0L)
    {
      Context localContext3 = this.context;
      int k = R.string.phone_call_duration_hours_minutes_seconds;
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Long.valueOf(l1);
      arrayOfObject3[1] = Long.valueOf(l2);
      arrayOfObject3[2] = Long.valueOf(l4);
      return localContext3.getString(k, arrayOfObject3);
    }
    if (l2 > 0L)
    {
      Context localContext2 = this.context;
      int j = R.string.phone_call_duration_minutes_seconds;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(l2);
      arrayOfObject2[1] = Long.valueOf(l4);
      return localContext2.getString(j, arrayOfObject2);
    }
    Context localContext1 = this.context;
    int i = R.string.phone_call_duration_seconds;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Long.valueOf(l4);
    return localContext1.getString(i, arrayOfObject1);
  }

  public String getNameFromEntity(Entity paramEntity)
  {
    Entity localEntity = sanitizeEntity(paramEntity);
    if (!TextUtils.isEmpty(localEntity.getDisplayName()))
      return localEntity.getDisplayName();
    if (!TextUtils.isEmpty(localEntity.getPhoneNumber()))
      return localEntity.getPhoneNumber();
    return this.context.getString(R.string.phone_call_unknown_caller);
  }

  @VisibleForTesting
  protected TimelineHelper getTimelineHelper()
  {
    return new TimelineHelper();
  }

  @VisibleForTesting
  protected Entity getUnkownEntity()
  {
    return Entity.newBuilder().setDisplayName(this.context.getString(R.string.phone_call_unknown_caller)).build();
  }

  public void insertCallAsync(final PhoneCall paramPhoneCall)
  {
    new AsyncTask()
    {
      PowerManager.WakeLock wakeLock;

      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        String str1 = PhoneCallTimelineHelper.TAG;
        StringBuilder localStringBuilder = new StringBuilder().append("Inserting an ");
        String str2;
        TimelineItem.Builder localBuilder;
        if (paramPhoneCall.isIncomingCall())
        {
          str2 = "incoming";
          Log.d(str1, str2 + " call item.");
          localBuilder = PhoneCallTimelineHelper.this.timelineHelper.createTimelineItemBuilder(PhoneCallTimelineHelper.this.context, new SettingsSecure(PhoneCallTimelineHelper.this.context.getContentResolver()));
          Entity localEntity = PhoneCallTimelineHelper.this.sanitizeEntity(paramPhoneCall.getCallerId());
          localBuilder.setCreator(localEntity);
          String str3 = paramPhoneCall.getPhoneNumber();
          if (TextUtils.isEmpty(str3))
            str3 = localEntity.getPhoneNumber();
          PhoneCallTimelineHelper.addMenuItems(localBuilder, str3);
          if (!paramPhoneCall.isMissedCall())
            break label222;
          Log.d(PhoneCallTimelineHelper.TAG, "This is a missed call.");
        }
        label222: Context localContext;
        int i;
        Object[] arrayOfObject;
        for (String str4 = PhoneCallTimelineHelper.this.context.getString(R.string.phone_call_missed_call); ; str4 = localContext.getString(i, arrayOfObject))
        {
          localBuilder.setText(str4);
          PhoneCallTimelineHelper.this.getTimelineHelper().insertTimelineItem(PhoneCallTimelineHelper.this.context.getApplicationContext(), localBuilder.build(), UserEventAction.TimelineItemInserted.PHONE_CALL, null);
          return null;
          str2 = "outgoing";
          break;
          localContext = PhoneCallTimelineHelper.this.context;
          i = R.string.phone_call_total_time;
          arrayOfObject = new Object[1];
          arrayOfObject[0] = PhoneCallTimelineHelper.this.formatDuration(paramPhoneCall.getCallRunTime());
        }
      }

      protected void onPostExecute(Void paramAnonymousVoid)
      {
        super.onPostExecute(paramAnonymousVoid);
        if ((this.wakeLock != null) && (this.wakeLock.isHeld()))
        {
          Log.d(PhoneCallTimelineHelper.TAG, "Releasing wake lock.");
          this.wakeLock.release();
        }
      }

      protected void onPreExecute()
      {
        super.onPreExecute();
        Log.d(PhoneCallTimelineHelper.TAG, "Acquiring wake lock.");
        this.wakeLock = ((PowerManager)PhoneCallTimelineHelper.this.context.getSystemService("power")).newWakeLock(1, PhoneCallTimelineHelper.TAG);
        this.wakeLock.acquire(10000L);
      }
    }
    .executeOnExecutor(AsyncThreadExecutorManager.getSerialExecutor(), new Void[0]);
  }

  @VisibleForTesting
  protected Entity sanitizeEntity(Entity paramEntity)
  {
    if ((paramEntity != null) && ((paramEntity.hasDisplayName()) || (paramEntity.hasPhoneNumber())))
      return paramEntity;
    return getUnkownEntity();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCallTimelineHelper
 * JD-Core Version:    0.6.2
 */