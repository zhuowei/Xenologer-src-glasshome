package com.google.glass.timeline;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.SelectionBuilder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class TimelineProvider extends ContentProvider
{
  public static final String AUTHORITY = "com.google.glass.timeline";
  private static final Uri BASE_URI;
  public static final int BUNDLE_COVER_EXPLICIT = 1;
  public static final int BUNDLE_COVER_NONE = 0;
  public static final int BUNDLE_COVER_SINGLE = 3;
  public static final int BUNDLE_COVER_STANDIN = 2;
  private static final String DATABASE_NAME = "timeline.db";
  private static final int DATABASE_UPGRADE_BATCH_SIZE = 100;
  private static final int DATABASE_VERSION = 21;
  static final int DEFAULT_PIN_SCORE = 2147483647;
  private static final int MATCH_PENDING_ACTIONS_BY_TIMELINE_ID = 3;
  private static final int MATCH_TIMELINE = 1;
  private static final int MATCH_TIMELINE_BY_ID = 2;
  private static final int MAX_SYNCED_ITEM_MIGRATION = 1000;
  private static final String PENDING_ACTION_DELETE_TIMELINE_ID_TRIGGER = "t_pending_actions_delete_timeline_id";
  private static final String PENDING_ACTION_TABLE = "pending_actions";
  private static final String PENDING_ACTION_TIMELINE_ID_INDEX = "ix_pending_actions_timeline_id";
  private static final String PENDING_ACTION_TYPE = "vnd.com.google.glass.timeline.pending_action";
  private static final String TAG = TimelineProvider.class.getSimpleName();
  private static final String TIMELINE_BUNDLE_COVER_STATUS_INDEX = "ix_timeline_bundle_cover_status";
  private static final String TIMELINE_BUNDLE_ID_INDEX = "ix_timeline_bundle_id";
  private static final String TIMELINE_CLOUD_SYNC_STATUS_SYNC_PROTOCOL_INDEX = "ix_timeline_sync_status_sync_protocol";
  private static final String TIMELINE_DELIVERY_TIME_INDEX = "ix_timeline_delivery_time";
  private static final String TIMELINE_DISPLAY_TIME_INDEX = "ix_timeline_display_time";
  private static final String TIMELINE_IS_DELETED_INDEX = "ix_timeline_is_deleted";
  private static final String TIMELINE_PIN_SCORE_INDEX = "ix_timeline_pin_score";
  private static final String TIMELINE_PIN_TIME_INDEX = "ix_timeline_pin_time";
  private static final String TIMELINE_SOURCE_INDEX = "ix_timeline_source";
  private static final String TIMELINE_TABLE = "timeline";
  private static final String TIMELINE_TYPE = "vnd.com.google.glass.timeline";
  public static final Uri TIMELINE_URI;
  static final long UNPINNED_ITEM_PIN_TIME = -1L;
  private static final UriMatcher uriMatcher;
  private DatabaseHelper dbHelper;
  private int suppressCount;
  private Uri suppressedNotifyUri;

  static
  {
    BASE_URI = new Uri.Builder().scheme("content").authority("com.google.glass.timeline").build();
    TIMELINE_URI = BASE_URI.buildUpon().appendPath("timeline").build();
    uriMatcher = new UriMatcher(-1);
    uriMatcher.addURI("com.google.glass.timeline", "timeline", 1);
    uriMatcher.addURI("com.google.glass.timeline", "timeline/*", 2);
    uriMatcher.addURI("com.google.glass.timeline", "timeline/*/pending_actions", 3);
  }

  private boolean deleteSomeOldestItems()
  {
    Cursor localCursor = null;
    try
    {
      localCursor = query(TIMELINE_URI, null, null, null, "display_time ASC");
      int i = localCursor.getCount();
      int j = i / 10;
      if (localCursor.moveToPosition(j))
      {
        long l = localCursor.getLong(localCursor.getColumnIndex("display_time"));
        Uri localUri = TIMELINE_URI;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = String.valueOf(l);
        int k = delete(localUri, "display_time<=?", arrayOfString);
        Log.i(TAG, "Deleted " + k + "/" + (j + 1) + " from " + i);
        if (k > 0);
        for (boolean bool = true; ; bool = false)
          return bool;
      }
      return false;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static Uri getPendingActionUri(String paramString)
  {
    return TIMELINE_URI.buildUpon().appendPath(paramString).appendPath("pending_actions").build();
  }

  private Uri insertInternal(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    switch (uriMatcher.match(paramUri))
    {
    case 2:
    default:
      throw new IllegalArgumentException("Unable to insert into URI: " + paramUri);
    case 1:
      return insertTimelineItem(paramSQLiteDatabase, paramUri, paramContentValues);
    case 3:
    }
    return insertPendingAction(paramUri, paramContentValues);
  }

  private Uri insertPendingAction(Uri paramUri, ContentValues paramContentValues)
  {
    Assert.assertEquals(Integer.valueOf(3), Integer.valueOf(paramUri.getPathSegments().size()));
    Assert.assertTrue(paramContentValues.containsKey("action_type"));
    String str = (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size());
    paramContentValues.put("timeline_id", str);
    try
    {
      Log.d(TAG, "Inserting pending action " + paramContentValues.getAsInteger("action_type") + " for " + str);
      long l = this.dbHelper.getWritableDatabase().insertOrThrow("pending_actions", null, paramContentValues);
      Uri localUri = paramUri.buildUpon().appendPath(String.valueOf(l)).build();
      return localUri;
    }
    catch (SQLException localSQLException)
    {
      logAndThrow(localSQLException, paramUri, paramContentValues);
    }
    return null;
  }

  private Uri insertTimelineItem(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      l = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 2);
      Log.i(TAG, "Inserted new timeline item " + paramContentValues.getAsString("_id"));
      if (l > 0L)
        return TIMELINE_URI.buildUpon().appendPath(paramContentValues.getAsString("_id")).build();
    }
    catch (SQLiteConstraintException localSQLiteConstraintException)
    {
      while (true)
        long l = overwriteTimelineItemIfNeeded(paramSQLiteDatabase, paramUri, paramContentValues);
    }
    throw new SQLException("Row not inserted for URI: " + paramUri);
  }

  private long insertTimelineItemWithConflictAlgorithm(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues, int paramInt)
  {
    long l1 = 0L;
    try
    {
      long l2 = paramSQLiteDatabase.insertWithOnConflict("timeline", null, paramContentValues, paramInt);
      l1 = l2;
      return l1;
    }
    catch (SQLiteFullException localSQLiteFullException)
    {
      if (!deleteSomeOldestItems())
        logAndThrow(localSQLiteFullException, paramUri, paramContentValues);
      return insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, paramInt);
    }
    catch (SQLException localSQLException)
    {
      while (true)
        logAndThrow(localSQLException, paramUri, paramContentValues);
    }
  }

  private void logAndThrow(SQLException paramSQLException, Uri paramUri, ContentValues paramContentValues)
  {
    Log.e(TAG, "Exception inserting: " + paramSQLException);
    Log.e(TAG, "URI: " + paramUri);
    Log.e(TAG, "Values: " + paramContentValues);
    throw paramSQLException;
  }

  private int mutate(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString, paramArrayOfString);
    String str;
    SQLiteDatabase localSQLiteDatabase;
    int j;
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to update or delete URI: " + paramUri);
    case 1:
      str = "timeline";
      localSQLiteDatabase = this.dbHelper.getWritableDatabase();
      if (paramBoolean)
        j = localSQLiteDatabase.delete(str, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
      break;
    case 2:
    case 3:
    }
    while (true)
    {
      if (j > 0)
        notifyChange(paramUri);
      return j;
      str = "timeline";
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
      break;
      str = "pending_actions";
      localSelectionBuilder.addSelection("timeline_id=?", (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size()));
      break;
      try
      {
        int i = localSQLiteDatabase.update(str, paramContentValues, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
        j = i;
      }
      catch (SQLiteFullException localSQLiteFullException)
      {
        if (!deleteSomeOldestItems())
          throw localSQLiteFullException;
      }
    }
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, paramBoolean);
  }

  private long overwriteTimelineItemIfNeeded(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    long l1 = 0L;
    Uri localUri = Uri.withAppendedPath(TIMELINE_URI, paramContentValues.getAsString("_id"));
    Cursor localCursor = null;
    try
    {
      localCursor = query(localUri, new String[] { "modified_time", "is_deleted" }, null, null, null);
      long l2;
      Long localLong;
      if (localCursor.moveToNext())
      {
        if (localCursor.getInt(localCursor.getColumnIndex("is_deleted")) > 0)
        {
          Log.i(TAG, "Insert ignored for timeline item " + paramContentValues.getAsString("_id") + " because it is already deleted");
          return 1L;
        }
        Integer localInteger = paramContentValues.getAsInteger("is_deleted");
        if ((localInteger != null) && (localInteger.intValue() > 0))
        {
          long l3 = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 5);
          Log.i(TAG, "Overwrote timeline item " + paramContentValues.getAsString("_id") + " because it is now deleted");
          return l3;
        }
        l2 = localCursor.getLong(localCursor.getColumnIndex("modified_time"));
        localLong = paramContentValues.getAsLong("modified_time");
        if ((localLong == null) || (localLong.longValue() <= l2))
          break label347;
        l1 = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 5);
        Log.i(TAG, "Overwrote timeline item " + paramContentValues.getAsString("_id") + " because existing modified time (" + l2 + ") < new modified time (" + localLong + ")");
      }
      while (true)
      {
        return l1;
        label347: Log.i(TAG, "Insert ignored for timeline item " + paramContentValues.getAsString("_id") + " because existing modified time (" + l2 + ") >= new modified time (" + localLong + ")");
        l1 = 1L;
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    int i = 0;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    int j = 0;
    try
    {
      while (true)
      {
        int k = paramArrayOfContentValues.length;
        if (j < k)
          try
          {
            insertInternal(localSQLiteDatabase, paramUri, paramArrayOfContentValues[j]);
            i++;
            j++;
          }
          catch (SQLException localSQLException)
          {
            while (true)
              Log.e(TAG, "Failed to insert item " + paramArrayOfContentValues[j].get("_id"), localSQLException);
          }
      }
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
    localSQLiteDatabase.setTransactionSuccessful();
    localSQLiteDatabase.endTransaction();
    notifyChange(paramUri);
    return i;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, null, paramString, paramArrayOfString, true);
  }

  public String getType(Uri paramUri)
  {
    switch (uriMatcher.match(paramUri))
    {
    default:
      return null;
    case 1:
      return "vnd.android.cursor.dir/vnd.com.google.glass.timeline";
    case 2:
      return "vnd.android.cursor.item/vnd.com.google.glass.timeline";
    case 3:
    }
    return "vnd.android.cursor.dir/vnd.com.google.glass.timeline.pending_action";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    Uri localUri = insertInternal(this.dbHelper.getWritableDatabase(), paramUri, paramContentValues);
    notifyChange(paramUri);
    return localUri;
  }

  @VisibleForTesting
  void notifyChange(Uri paramUri)
  {
    if (this.suppressCount > 0)
    {
      if (this.suppressedNotifyUri == null)
        this.suppressedNotifyUri = paramUri;
      while (this.suppressedNotifyUri.equals(paramUri))
        return;
      this.suppressedNotifyUri = TIMELINE_URI;
      return;
    }
    notifyChangeInternal(paramUri);
  }

  @VisibleForTesting
  void notifyChangeInternal(Uri paramUri)
  {
    getContext().getContentResolver().notifyChange(paramUri, null);
    getContext().getContentResolver().notifyChange(Uri.parse("com.google.glass.timeline"), null, true);
  }

  public boolean onCreate()
  {
    this.dbHelper = new DatabaseHelper(getContext());
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString1, paramArrayOfString2);
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to query URI: " + paramUri);
    case 1:
      localSQLiteQueryBuilder.setTables("timeline");
    case 2:
    case 3:
    }
    while (true)
    {
      Cursor localCursor = localSQLiteQueryBuilder.query(this.dbHelper.getReadableDatabase(), paramArrayOfString1, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), null, null, paramString2);
      localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
      return localCursor;
      localSQLiteQueryBuilder.setTables("timeline");
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
      continue;
      localSQLiteQueryBuilder.setTables("pending_actions");
      localSelectionBuilder.addSelection("timeline_id=?", (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size()));
    }
  }

  public void startSuppressNotifyChange()
  {
    this.suppressCount = (1 + this.suppressCount);
  }

  public void stopSuppressNotifyChange()
  {
    this.suppressCount = (-1 + this.suppressCount);
    if (this.suppressCount >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if ((this.suppressCount == 0) && (this.suppressedNotifyUri != null))
      {
        Uri localUri = this.suppressedNotifyUri;
        this.suppressedNotifyUri = null;
        notifyChangeInternal(localUri);
      }
      return;
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, false);
  }

  private static class DatabaseHelper extends SQLiteOpenHelper
  {
    final Context context;

    DatabaseHelper(Context paramContext)
    {
      super("timeline.db", null, 21);
      this.context = paramContext;
    }

    private void createPendingActionsTable(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS pending_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeline_id TEXT NOT NULL,action_type INTEGER NOT NULL,payload TEXT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS ix_pending_actions_timeline_id ON pending_actions(timeline_id);");
      paramSQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS t_pending_actions_delete_timeline_id DELETE ON timeline BEGIN DELETE FROM pending_actions WHERE timeline_id=old._id; END");
    }

    private void createTimelineTable(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE timeline (_id TEXT PRIMARY KEY,creation_time INTEGER,modified_time INTEGER,display_time INTEGER,delivery_time INTEGER,pin_time INTEGER DEFAULT -1,pin_score INTEGER DEFAULT 2147483647,is_deleted INTEGER DEFAULT 0,sync_status INTEGER DEFAULT 0,sync_protocol INTEGER DEFAULT 0,bundle_id TEXT DEFAULT \"\",bundle_cover_status INTEGER DEFAULT 0,source TEXT DEFAULT \"\",protobuf_blob BLOB);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_display_time ON timeline(display_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_delivery_time ON timeline(delivery_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_pin_time ON timeline(pin_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_pin_score ON timeline(pin_score);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_is_deleted ON timeline(is_deleted);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_sync_status_sync_protocol ON timeline(sync_status, sync_protocol);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_bundle_id ON timeline(bundle_id);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_bundle_cover_status ON timeline(bundle_cover_status);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_source ON timeline(source);");
    }

    private void dropPendingActionsTable(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS pending_actions");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_pending_actions_timeline_id");
      paramSQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS t_pending_actions_delete_timeline_id");
    }

    private void dropTimelineTable(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS timeline");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_display_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_delivery_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_pin_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_pin_score");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_is_deleted");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_sync_status_sync_protocol");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_bundle_id");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_bundle_cover_status");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_source");
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      createTimelineTable(paramSQLiteDatabase);
      createPendingActionsTable(paramSQLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      Log.w(TimelineProvider.TAG, "Downgrading database from version " + paramInt1 + " to " + paramInt2);
      dropTimelineTable(paramSQLiteDatabase);
      dropPendingActionsTable(paramSQLiteDatabase);
      onCreate(paramSQLiteDatabase);
    }

    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      super.onOpen(paramSQLiteDatabase);
      paramSQLiteDatabase.enableWriteAheadLogging();
    }

    public void onUpgrade(final SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      Log.w(TimelineProvider.TAG, "Upgrading database from version " + paramInt1 + " to " + paramInt2);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_timeline");
      paramSQLiteDatabase.execSQL("ALTER TABLE timeline RENAME TO temp_timeline;");
      dropTimelineTable(paramSQLiteDatabase);
      createTimelineTable(paramSQLiteDatabase);
      createPendingActionsTable(paramSQLiteDatabase);
      AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
      {
        private void migrate(SQLiteDatabase paramAnonymousSQLiteDatabase, String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3)
        {
          Log.d(TimelineProvider.TAG, "Migrating selection: " + paramAnonymousString2);
          Cursor localCursor = paramAnonymousSQLiteDatabase.query(paramAnonymousString1, null, paramAnonymousString2, null, null, null, paramAnonymousString3);
          if (localCursor == null)
            Log.d(TimelineProvider.TAG, "Migration query returned null cursor.");
          do
          {
            return;
            TimelineHelper localTimelineHelper;
            ArrayList localArrayList;
            try
            {
              localTimelineHelper = new TimelineHelper();
              localArrayList = new ArrayList();
              int i = 0;
              int j = localCursor.getCount();
              while (localCursor.moveToNext())
              {
                localArrayList.add(TimelineHelper.fromCursor(localCursor));
                i++;
                if (localArrayList.size() >= 100)
                {
                  localTimelineHelper.bulkInsertTimelineItem(TimelineProvider.DatabaseHelper.this.context, localArrayList);
                  localArrayList.clear();
                  Log.d(TimelineProvider.TAG, "Have migrated " + i + " of " + j + " items.");
                }
              }
            }
            finally
            {
              if (localCursor != null)
                localCursor.close();
            }
            localTimelineHelper.bulkInsertTimelineItem(TimelineProvider.DatabaseHelper.this.context, localArrayList);
            localArrayList.clear();
            Log.d(TimelineProvider.TAG, "Have migrated all items.");
          }
          while (localCursor == null);
          localCursor.close();
        }

        public void run()
        {
          try
          {
            migrate(paramSQLiteDatabase, "temp_timeline", "sync_status!=1", null);
            migrate(paramSQLiteDatabase, "temp_timeline", "sync_status=1", "display_time DESC LIMIT 1000");
            return;
          }
          finally
          {
            paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_timeline");
          }
        }
      });
    }
  }

  static final class PendingActionColumns
    implements BaseColumns
  {
    public static final String ACTION_TYPE = "action_type";
    public static final String PAYLOAD = "payload";
    public static final String TIMELINE_ID = "timeline_id";
  }

  static final class TimelineColumns
    implements BaseColumns
  {
    public static final String BUNDLE_COVER_STATUS = "bundle_cover_status";
    public static final String BUNDLE_ID = "bundle_id";
    public static final String CLOUD_SYNC_PROTOCOL = "sync_protocol";
    public static final String CLOUD_SYNC_STATUS = "sync_status";
    public static final String CREATION_TIME = "creation_time";
    public static final String DELIVERY_TIME = "delivery_time";
    public static final String DISPLAY_TIME = "display_time";
    public static final String IS_DELETED = "is_deleted";
    public static final String MODIFIED_TIME = "modified_time";
    public static final String PIN_SCORE = "pin_score";
    public static final String PIN_TIME = "pin_time";
    public static final String PROTOBUF_BLOB = "protobuf_blob";
    public static final String SOURCE = "source";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineProvider
 * JD-Core Version:    0.6.2
 */