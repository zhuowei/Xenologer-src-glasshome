package com.google.glass.location;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import java.util.Iterator;

public class GpsBackgroundService extends Service
{
  public static final String EXTRA_EXPECTED_STATE = "expected_state";
  private static final long FULL_CHECK_TIME_MS = 300000L;
  private static final long RESTART_TIME_ON_FAILURE_MS = 7200000L;
  private static final long RESTART_TIME_ON_SUCCESS_MS = 14400000L;
  private static final String TAG = GpsBackgroundService.class.getSimpleName();
  private boolean fix;
  private final LocationListener locationListener = new LocationListener()
  {
    public void onLocationChanged(Location paramAnonymousLocation)
    {
    }

    public void onProviderDisabled(String paramAnonymousString)
    {
    }

    public void onProviderEnabled(String paramAnonymousString)
    {
    }

    public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
    }
  };
  private LocationManager locationManager;
  private int numSatellites;

  @VisibleForTesting
  State state = State.UNSTARTED;
  private final GpsStatus.Listener statusListener = new GpsStatus.Listener()
  {
    public void onGpsStatusChanged(int paramAnonymousInt)
    {
      switch (paramAnonymousInt)
      {
      default:
      case 3:
      case 4:
      }
      do
      {
        return;
        GpsBackgroundService.access$002(GpsBackgroundService.this, true);
        return;
        GpsStatus localGpsStatus = GpsBackgroundService.this.locationManager.getGpsStatus(null);
        Iterator localIterator = GpsBackgroundService.this.getSatellites(localGpsStatus).iterator();
        GpsBackgroundService.access$202(GpsBackgroundService.this, 0);
        while (localIterator.hasNext())
        {
          GpsBackgroundService.access$208(GpsBackgroundService.this);
          localIterator.next();
        }
      }
      while (!GpsBackgroundService.this.fix);
      GpsBackgroundService.this.scheduleNextTask(0L);
    }
  };
  private PowerManager.WakeLock wakeLock;

  private State expectedState(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("expected_state")))
      return State.values()[paramBundle.getInt("expected_state")];
    return State.START;
  }

  private void init()
  {
    this.state = State.START;
    this.wakeLock = ((PowerManager)getSystemService("power")).newWakeLock(1, TAG);
    this.wakeLock.setReferenceCounted(false);
    this.locationManager = ((LocationManager)getSystemService("location"));
    this.fix = false;
    this.numSatellites = 0;
  }

  private void nextState()
  {
    Log.d(TAG, "Running GPS background service, state:" + this.state + ", fix:" + this.fix + ", #satellites:" + this.numSatellites);
    long l = 0L;
    switch (3.$SwitchMap$com$google$glass$location$GpsBackgroundService$State[this.state.ordinal()])
    {
    default:
    case 5:
    case 1:
    case 2:
    case 3:
    case 4:
      while (true)
      {
        scheduleNextTask(l);
        return;
        startGPS();
        this.state = State.PEEK1;
        l = 60000L;
        continue;
        if (this.fix)
        {
          stopGPS();
          this.state = State.START;
          l = 14400000L;
        }
        else if (this.state == State.PEEK1)
        {
          if (this.numSatellites == 0)
          {
            stopGPS();
            this.state = State.START;
            l = 7200000L;
          }
          else
          {
            this.state = State.PEEK2;
            l = 60000L;
          }
        }
        else if (this.state == State.PEEK2)
        {
          if (this.numSatellites < 2)
          {
            stopGPS();
            this.state = State.START;
            l = 7200000L;
          }
          else
          {
            this.state = State.PEEK4;
            l = 120000L;
          }
        }
        else
        {
          stopGPS();
          this.state = State.START;
          l = 7200000L;
        }
      }
    case 6:
    }
    stopGPS();
  }

  private void scheduleNextTask(long paramLong)
  {
    PendingIntent localPendingIntent = nextTask();
    AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.set(2, nextWakeupTime(paramLong), localPendingIntent);
  }

  private void startGPS()
  {
    Log.d(TAG, "Start GPS");
    if (this.wakeLock.isHeld())
      Log.w(TAG, "wake lock already held: may be released too soon");
    while (true)
    {
      this.fix = false;
      this.numSatellites = 0;
      this.locationManager.addGpsStatusListener(this.statusListener);
      this.locationManager.requestLocationUpdates("gps", 0L, 0.0F, this.locationListener);
      return;
      this.wakeLock.acquire(300000L);
    }
  }

  private void stopGPS()
  {
    Log.d(TAG, "Stop GPS");
    this.locationManager.removeUpdates(this.locationListener);
    this.locationManager.removeGpsStatusListener(this.statusListener);
    this.fix = false;
    this.numSatellites = 0;
    if (this.wakeLock.isHeld())
    {
      this.wakeLock.release();
      return;
    }
    Log.w(TAG, "wake lock no longer held");
  }

  @VisibleForTesting
  Iterable<GpsSatellite> getSatellites(GpsStatus paramGpsStatus)
  {
    return paramGpsStatus.getSatellites();
  }

  @VisibleForTesting
  PendingIntent nextTask()
  {
    return PendingIntent.getService(this, 0, new Intent(this, GpsBackgroundService.class).putExtra("expected_state", this.state.ordinal()), 134217728);
  }

  @VisibleForTesting
  long nextWakeupTime(long paramLong)
  {
    return paramLong + SystemClock.elapsedRealtime();
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    Log.d(TAG, "Creating GPS background service");
    init();
  }

  public void onDestroy()
  {
    Log.d(TAG, "Destroying GPS background service");
    this.state = State.TERMINATED;
    stopGPS();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    State localState = expectedState(paramIntent.getExtras());
    if (this.state != localState)
    {
      Log.d(TAG, "Unexpected state: " + this.state + " vs. " + localState);
      init();
    }
    nextState();
    return 1;
  }

  @VisibleForTesting
  static enum State
  {
    static
    {
      START = new State("START", 1);
      PEEK1 = new State("PEEK1", 2);
      PEEK2 = new State("PEEK2", 3);
      PEEK4 = new State("PEEK4", 4);
      TERMINATED = new State("TERMINATED", 5);
      State[] arrayOfState = new State[6];
      arrayOfState[0] = UNSTARTED;
      arrayOfState[1] = START;
      arrayOfState[2] = PEEK1;
      arrayOfState[3] = PEEK2;
      arrayOfState[4] = PEEK4;
      arrayOfState[5] = TERMINATED;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.GpsBackgroundService
 * JD-Core Version:    0.6.2
 */