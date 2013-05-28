package com.google.glass.home.sync;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.google.common.collect.Lists;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class TimelineSyncWindowHelper extends SQLiteOpenHelper
{
  private static final String DATABASE_NAME = "sync_window.db";
  private static final int DATABASE_VERSION = 2;
  private static final int MAX_HISTORY_DAYS = 7;
  private static final String MAX_WRITE_TIMESTAMP_ID = "max_write_timestamp";
  private static final String SYNC_WINDOW_TABLE = "sync_window";
  private static final String TAG = TimelineSyncWindowHelper.class.getSimpleName();
  private static final String WRITE_TIMESTAMP_TABLE = "write_timestamp";

  TimelineSyncWindowHelper(Context paramContext)
  {
    super(paramContext, "sync_window.db", null, 2);
  }

  private void insert(TimelineSyncWindow paramTimelineSyncWindow)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("start_time", Long.valueOf(paramTimelineSyncWindow.getStartTime()));
    localContentValues.put("continuation_token", paramTimelineSyncWindow.getContinuationToken());
    if (getWritableDatabase().insert("sync_window", null, localContentValues) == -1L)
    {
      Log.e(TAG, "Error inserting timeline sync window: " + paramTimelineSyncWindow);
      return;
    }
    Log.v(TAG, "Inserted new timeline sync window: " + paramTimelineSyncWindow);
  }

  int delete(TimelineSyncWindow paramTimelineSyncWindow)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramTimelineSyncWindow.getStartTime());
    int i = localSQLiteDatabase.delete("sync_window", "start_time=?", arrayOfString);
    if (i != 1)
    {
      Log.e(TAG, "Error deleting timeline sync window: expect 1 row deleted, actual " + i + " rows deleted: " + paramTimelineSyncWindow);
      return i;
    }
    Log.v(TAG, "Deleted timeline sync window: " + paramTimelineSyncWindow);
    return i;
  }

  long getMaxWriteTimestamp()
  {
    Cursor localCursor = null;
    try
    {
      localCursor = getReadableDatabase().query("write_timestamp", new String[] { "timestamp" }, "id=?", new String[] { "max_write_timestamp" }, null, null, null);
      localCursor.moveToNext();
      long l = localCursor.getLong(localCursor.getColumnIndex("timestamp"));
      return l;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  List<TimelineSyncWindow> list()
  {
    Cursor localCursor = null;
    LinkedList localLinkedList;
    try
    {
      localCursor = getReadableDatabase().query("sync_window", new String[] { "start_time", "continuation_token" }, null, null, null, null, "start_time DESC");
      localLinkedList = Lists.newLinkedList();
      while (localCursor.moveToNext())
        localLinkedList.add(new TimelineSyncWindow(localCursor.getLong(localCursor.getColumnIndex("start_time")), localCursor.getBlob(localCursor.getColumnIndex("continuation_token"))));
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
    Log.v(TAG, "Retrieved " + localLinkedList.size() + " sync windows");
    if (localCursor != null)
      localCursor.close();
    long l = getMaxWriteTimestamp();
    Log.v(TAG, "Max write timestamp is " + l);
    if ((localLinkedList.isEmpty()) || (((TimelineSyncWindow)localLinkedList.get(0)).getStartTime() < l))
    {
      Log.v(TAG, "Creating a new sync window with start time " + l);
      TimelineSyncWindow localTimelineSyncWindow = new TimelineSyncWindow(l);
      insert(localTimelineSyncWindow);
      localLinkedList.add(0, localTimelineSyncWindow);
    }
    Log.v(TAG, "Total of " + localLinkedList.size() + " sync windows");
    return localLinkedList;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE sync_window (start_time INTEGER PRIMARY KEY,continuation_token BLOB);");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(5, -7);
    long l = TimeUnit.MILLISECONDS.toMicros(localCalendar.getTimeInMillis());
    paramSQLiteDatabase.execSQL("INSERT INTO sync_window VALUES(" + l + ", null)");
    Log.v(TAG, "Inserted initial sync window with start time " + l);
    paramSQLiteDatabase.execSQL("CREATE TABLE write_timestamp (id TEXT PRIMARY KEY,timestamp INTEGER);");
    paramSQLiteDatabase.execSQL("INSERT INTO write_timestamp VALUES('max_write_timestamp', 0)");
    Log.v(TAG, "Inserted initial max write timestamp of 0");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.w(TAG, "Upgrading database from version " + paramInt1 + " to " + paramInt2);
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS sync_window");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS write_timestamp");
    onCreate(paramSQLiteDatabase);
  }

  int update(TimelineSyncWindow paramTimelineSyncWindow)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("continuation_token", paramTimelineSyncWindow.getContinuationToken());
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramTimelineSyncWindow.getStartTime());
    int i = localSQLiteDatabase.update("sync_window", localContentValues, "start_time=?", arrayOfString);
    if (i != 1)
    {
      Log.e(TAG, "Error updating timeline sync window: expect 1 row updated, actual " + i + " rows updated: " + paramTimelineSyncWindow);
      return i;
    }
    Log.v(TAG, "Updated timeline sync window: " + paramTimelineSyncWindow);
    return i;
  }

  void updateMaxWriteTimestamp(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramLong);
    arrayOfObject[1] = Long.valueOf(paramLong);
    localSQLiteDatabase.execSQL("UPDATE write_timestamp SET timestamp = ? WHERE id = 'max_write_timestamp' AND timestamp < ?", arrayOfObject);
  }

  static final class SyncWindowColumns
  {
    public static final String CONTINUATION_TOKEN = "continuation_token";
    public static final String START_TIME = "start_time";
  }

  static final class WriteTimestampColumns
  {
    public static final String ID = "id";
    public static final String TIMESTAMP = "timestamp";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.TimelineSyncWindowHelper
 * JD-Core Version:    0.6.2
 */