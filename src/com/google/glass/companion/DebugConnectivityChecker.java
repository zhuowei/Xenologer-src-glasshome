package com.google.glass.companion;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.google.glass.net.NetworkUtil;
import java.util.Date;

public class DebugConnectivityChecker extends BroadcastReceiver
{
  private static final long DELAY_MS = 30000L;
  private static final long INITIAL_DELAY_MS = 5000L;
  private static final String LOG_FILENAME = "connectivity.log";
  private static final String TAG = DebugConnectivityChecker.class.getSimpleName();
  private static PingTask pingTask;
  private static PowerManager.WakeLock wakeLock;

  public static void start(Context paramContext)
  {
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, DebugConnectivityChecker.class), 0);
    paramContext.deleteFile("connectivity.log");
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setRepeating(0, 5000L + System.currentTimeMillis(), 30000L, localPendingIntent);
  }

  public static void stop(Context paramContext)
  {
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, DebugConnectivityChecker.class), 0);
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(localPendingIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (wakeLock == null)
      wakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "");
    if (pingTask != null)
    {
      pingTask.cancel(false);
      wakeLock.release();
    }
    wakeLock.acquire();
    pingTask = new PingTask(paramContext);
    pingTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }

  private class PingTask extends AsyncTask<Void, Void, Void>
  {
    private final ConnectivityManager connMan;
    private final Context context;

    public PingTask(Context arg2)
    {
      Object localObject;
      this.context = localObject;
      this.connMan = ((ConnectivityManager)localObject.getSystemService("connectivity"));
    }

    // ERROR //
    private void writeLog(String paramString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_0
      //   3: getfield 20	com/google/glass/companion/DebugConnectivityChecker$PingTask:context	Landroid/content/Context;
      //   6: ldc 38
      //   8: ldc 39
      //   10: invokevirtual 43	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
      //   13: astore_2
      //   14: aload_2
      //   15: aload_1
      //   16: invokevirtual 49	java/lang/String:getBytes	()[B
      //   19: invokevirtual 55	java/io/FileOutputStream:write	([B)V
      //   22: aload_2
      //   23: ldc 57
      //   25: invokevirtual 49	java/lang/String:getBytes	()[B
      //   28: invokevirtual 55	java/io/FileOutputStream:write	([B)V
      //   31: aload_2
      //   32: ifnull +7 -> 39
      //   35: aload_2
      //   36: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   39: return
      //   40: astore 5
      //   42: invokestatic 66	com/google/glass/companion/DebugConnectivityChecker:access$000	()Ljava/lang/String;
      //   45: ldc 68
      //   47: aload 5
      //   49: invokestatic 74	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   52: pop
      //   53: aload_2
      //   54: ifnull -15 -> 39
      //   57: aload_2
      //   58: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   61: return
      //   62: astore 7
      //   64: return
      //   65: astore_3
      //   66: aload_2
      //   67: ifnull +7 -> 74
      //   70: aload_2
      //   71: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   74: aload_3
      //   75: athrow
      //   76: astore 8
      //   78: return
      //   79: astore 4
      //   81: goto -7 -> 74
      //
      // Exception table:
      //   from	to	target	type
      //   2	31	40	java/io/IOException
      //   57	61	62	java/io/IOException
      //   2	31	65	finally
      //   42	53	65	finally
      //   35	39	76	java/io/IOException
      //   70	74	79	java/io/IOException
    }

    protected Void doInBackground(Void[] paramArrayOfVoid)
    {
      Date localDate = new Date();
      long l1 = System.nanoTime();
      String str1 = localDate.getTime() / 1000L + " ";
      String str2;
      long l2;
      if (this.connMan.getActiveNetworkInfo() != null)
      {
        str2 = str1 + this.connMan.getActiveNetworkInfo().getType() + " ";
        if (!NetworkUtil.pingGoogle())
          break label171;
        l2 = (System.nanoTime() - l1) / 1000000L;
      }
      label171: for (String str3 = str2 + "1 " + l2; ; str3 = str2 + "0 0")
      {
        Log.d(DebugConnectivityChecker.TAG, str3);
        writeLog(str3);
        return null;
        str2 = str1 + "-1 ";
        break;
      }
    }

    protected void onPostExecute()
    {
      DebugConnectivityChecker.wakeLock.release();
      DebugConnectivityChecker.access$202(null);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.DebugConnectivityChecker
 * JD-Core Version:    0.6.2
 */