package com.google.glass.entity;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.util.Clock;
import com.google.glass.util.Clock.Impl;
import com.google.glass.util.SelectionBuilder;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class EntityProvider extends ContentProvider
{
  public static final String AUTHORITY = "com.google.glass.entity";
  private static final Uri BASE_URI;
  private static final String DATABASE_NAME = "entity.db";
  private static final int DATABASE_VERSION = 7;
  private static final String ENTITY_EMAIL_INDEX = "ix_entity_email";
  private static final String ENTITY_IS_COMMUNICATION_TARGET_INDEX = "ix_entity_is_communication_target";
  private static final String ENTITY_IS_SHARE_TARGET_INDEX = "ix_entity_is_share_target";
  private static final String ENTITY_PHONE_NUMBER_INDEX = "ix_entity_phone_number";

  @Deprecated
  private static final String ENTITY_SHOULD_SYNC_INDEX = "ix_entity_should_sync";
  private static final String ENTITY_SOURCE_INDEX = "ix_entity_source";
  private static final String ENTITY_TABLE = "entity";
  private static final String ENTITY_TYPE = "vnd.com.google.glass.entity";
  private static final boolean LOG_QUERY = false;
  private static final int MATCH_ENTITY = 1;
  private static final int MATCH_ENTITY_BY_ID = 2;
  private static final int MATCH_PLUS_SHARE_ENTITIES = 3;
  private static final String PLUS_SHARES_PATH = "plusshares";
  public static final long RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF = 0L;
  private static final String TAG = EntityProvider.class.getSimpleName();
  public static final Uri URI;
  private static final String URI_PARAM_LIMIT = "limit";
  private static final String URI_PARAM_MOST_SHARED = "mostShared";
  private static final String URI_PARAM_RECENT_SHARES = "recentShares";
  private static final String URI_PARAM_SOURCE_RESTRICT = "sourceRestrict";
  private static final UriMatcher uriMatcher;
  private Clock clock;
  private DatabaseHelper dbHelper;

  static
  {
    BASE_URI = new Uri.Builder().scheme("content").authority("com.google.glass.entity").build();
    URI = BASE_URI.buildUpon().appendPath("entity").build();
    uriMatcher = new UriMatcher(-1);
    uriMatcher.addURI("com.google.glass.entity", "entity", 1);
    uriMatcher.addURI("com.google.glass.entity", "entity/*", 2);
    uriMatcher.addURI("com.google.glass.entity", "plusshares", 3);
  }

  private Cursor executeQuery(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return this.dbHelper.getReadableDatabase().query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
  }

  private static void getAndAppendIds(Cursor paramCursor, ArrayList<String> paramArrayList)
  {
    int i = paramCursor.getColumnIndexOrThrow("_id");
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext())
      paramArrayList.add(Long.toString(paramCursor.getLong(i)));
    paramCursor.moveToPosition(-1);
  }

  @VisibleForTesting
  protected static SelectionBuilder getExcludeIdsSelection(ArrayList<String> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      return new SelectionBuilder();
    int i = paramArrayList.size();
    StringBuilder localStringBuilder = new StringBuilder("_id NOT IN (");
    for (int j = 0; j < i; j++)
    {
      localStringBuilder.append("?");
      if (j < i - 1)
        localStringBuilder.append(",");
    }
    localStringBuilder.append(")");
    return new SelectionBuilder(localStringBuilder.toString(), (String[])paramArrayList.toArray(new String[paramArrayList.size()]));
  }

  private Cursor getShareContacts(Uri paramUri, String[] paramArrayOfString)
  {
    this.dbHelper.getReadableDatabase();
    ArrayList localArrayList1 = Lists.newArrayList();
    String str1 = paramUri.getQueryParameter("sourceRestrict");
    String str2 = paramUri.getQueryParameter("recentShares");
    String str3 = paramUri.getQueryParameter("mostShared");
    String str4 = paramUri.getQueryParameter("limit");
    int i;
    int j;
    label69: int k;
    label81: int m;
    Cursor localCursor3;
    label141: Cursor localCursor2;
    label217: Cursor localCursor1;
    if (str2 != null)
    {
      i = Integer.parseInt(str2);
      if (str3 == null)
        break label292;
      j = Integer.parseInt(str3);
      if (str4 == null)
        break label298;
      k = Integer.parseInt(str4);
      ArrayList localArrayList2 = Lists.newArrayList();
      m = 0;
      if (i > 0)
      {
        localCursor3 = getRecentlySharedEntities(paramArrayOfString, str1, i);
        if (localCursor3.getCount() <= 0)
          break label304;
        m = 0 + localCursor3.getCount();
        localArrayList1.add(localCursor3);
        getAndAppendIds(localCursor3, localArrayList2);
      }
      if (j > 0)
      {
        int n = j;
        if (k > 0)
          n = Math.min(j, k - m);
        localCursor2 = getMostSharedEntities(paramArrayOfString, str1, localArrayList2, n);
        if (localCursor2.getCount() <= 0)
          break label317;
        m += localCursor2.getCount();
        localArrayList1.add(localCursor2);
        getAndAppendIds(localCursor2, localArrayList2);
      }
      if ((k < 0) || ((k > 0) && (m < k)))
      {
        localCursor1 = getAllShareEntities(paramArrayOfString, str1, localArrayList2, k - m);
        if (localCursor1.getCount() <= 0)
          break label327;
        localArrayList1.add(localCursor1);
      }
    }
    while (true)
    {
      if (localArrayList1.size() != 0)
        break label337;
      return new MatrixCursor(paramArrayOfString, 0);
      i = -1;
      break;
      label292: j = -1;
      break label69;
      label298: k = -1;
      break label81;
      label304: localCursor3.close();
      m = 0;
      break label141;
      label317: localCursor2.close();
      break label217;
      label327: localCursor1.close();
    }
    label337: MergeCursor localMergeCursor = new MergeCursor((Cursor[])localArrayList1.toArray(new Cursor[localArrayList1.size()]));
    return localMergeCursor;
  }

  public static Uri getShareContactsUri(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    Uri.Builder localBuilder = BASE_URI.buildUpon();
    localBuilder.appendPath("plusshares");
    if (paramString != null)
      localBuilder.appendQueryParameter("sourceRestrict", paramString);
    localBuilder.appendQueryParameter("recentShares", Integer.toString(paramInt1));
    localBuilder.appendQueryParameter("mostShared", Integer.toString(paramInt2));
    localBuilder.appendQueryParameter("limit", Integer.toString(paramInt3));
    return localBuilder.build();
  }

  private int mutate(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString, paramArrayOfString);
    String str;
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to update URI: " + paramUri);
    case 1:
      str = "entity";
    case 2:
    }
    SQLiteDatabase localSQLiteDatabase;
    while (true)
    {
      localSQLiteDatabase = this.dbHelper.getWritableDatabase();
      if (!paramBoolean)
        break;
      return localSQLiteDatabase.delete(str, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
      str = "entity";
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
    }
    return localSQLiteDatabase.update(str, paramContentValues, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
  }

  public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> paramArrayList)
    throws OperationApplicationException
  {
    Object localObject = null;
    int i = 0;
    int j = paramArrayList.size();
    ContentProviderResult[] arrayOfContentProviderResult = new ContentProviderResult[j];
    int k = 0;
    while (true)
      if (k < j)
        try
        {
          arrayOfContentProviderResult[k] = ((ContentProviderOperation)paramArrayList.get(k)).apply(this, arrayOfContentProviderResult, k);
          k++;
        }
        catch (OperationApplicationException localOperationApplicationException)
        {
          while (true)
          {
            i++;
            if (localObject == null)
              localObject = localOperationApplicationException;
          }
        }
    if (localObject != null)
    {
      Log.d(TAG, "applyBatch() failed on " + i + " out of " + j + " total operations.");
      throw localObject;
    }
    return arrayOfContentProviderResult;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, null, paramString, paramArrayOfString, true);
  }

  @VisibleForTesting
  protected Cursor getAllShareEntities(String[] paramArrayOfString, String paramString, ArrayList<String> paramArrayList, int paramInt)
  {
    SelectionBuilder localSelectionBuilder = getExcludeIdsSelection(paramArrayList);
    if (paramString != null)
      localSelectionBuilder.addSelection("source=?", paramString);
    String str1 = localSelectionBuilder.getSelection();
    String[] arrayOfString = localSelectionBuilder.getArguments();
    if (paramInt > 0);
    for (String str2 = Integer.toString(paramInt); ; str2 = null)
      return executeQuery("entity", paramArrayOfString, str1, arrayOfString, null, null, "display_name", str2);
  }

  @VisibleForTesting
  protected Cursor getMostSharedEntities(String[] paramArrayOfString, String paramString, ArrayList<String> paramArrayList, int paramInt)
  {
    SelectionBuilder localSelectionBuilder = getExcludeIdsSelection(paramArrayList);
    if (paramString != null)
      localSelectionBuilder.addSelection("source=?", paramString);
    localSelectionBuilder.addSelection("share_count!= ?", "0");
    return executeQuery("entity", paramArrayOfString, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), null, null, "share_count DESC", Integer.toString(paramInt));
  }

  @VisibleForTesting
  protected Cursor getRecentlySharedEntities(String[] paramArrayOfString, String paramString, int paramInt)
  {
    SelectionBuilder localSelectionBuilder = new SelectionBuilder();
    if (paramString != null)
      localSelectionBuilder.addSelection("source=?", paramString);
    localSelectionBuilder.addSelection("share_time>?", Long.toString(this.clock.currentTimeMillis() - RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF));
    return executeQuery("entity", paramArrayOfString, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), null, null, "share_time DESC", Integer.toString(paramInt));
  }

  public String getType(Uri paramUri)
  {
    switch (uriMatcher.match(paramUri))
    {
    default:
      return null;
    case 1:
    case 3:
      return "vnd.android.cursor.dir/vnd.com.google.glass.entity";
    case 2:
    }
    return "vnd.android.cursor.item/vnd.com.google.glass.entity";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to insert into URI: " + paramUri);
    case 1:
    }
    try
    {
      long l = this.dbHelper.getWritableDatabase().insertWithOnConflict("entity", null, paramContentValues, 5);
      if (l > 0L)
      {
        getContext().getContentResolver().notifyChange(paramUri, null);
        getContext().getContentResolver().notifyChange(Uri.parse("com.google.glass.entity"), null, true);
        return URI.buildUpon().appendPath((String)paramContentValues.get("_id")).build();
      }
    }
    catch (SQLException localSQLException)
    {
      Log.e(TAG, "Exception inserting into entity DB", localSQLException);
      return null;
    }
    throw new SQLException("Row not inserted for URI: " + paramUri);
  }

  public boolean onCreate()
  {
    this.dbHelper = new DatabaseHelper(getContext());
    this.clock = new Clock.Impl();
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
      localSQLiteQueryBuilder.setTables("entity");
    case 2:
      while (true)
      {
        Cursor localCursor = localSQLiteQueryBuilder.query(this.dbHelper.getReadableDatabase(), paramArrayOfString1, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), null, null, paramString2);
        localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
        return localCursor;
        localSQLiteQueryBuilder.setTables("entity");
        localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
      }
    case 3:
    }
    return getShareContacts(paramUri, paramArrayOfString1);
  }

  @VisibleForTesting
  protected void setClock(Clock paramClock)
  {
    this.clock = paramClock;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, false);
  }

  public static final class Columns
    implements BaseColumns
  {
    public static final String DISPLAY_NAME = "display_name";
    public static final String EMAIL = "email";
    public static final String IS_COMMUNICATION_TARGET = "is_communication_target";
    public static final String IS_SHARE_TARGET = "is_share_target";
    public static final String PHONE_NUMBER = "phone_number";
    public static final String PRIORITY = "share_priority";
    public static final String PROTOBUF_BLOB = "protobuf_blob";
    public static final String SECONDARY_PHONE_NUMBERS = "secondary_phone_numbers";
    public static final String SHARE_COUNT = "share_count";
    public static final String SHARE_TIME = "share_time";
    public static final String SOURCE = "source";
  }

  private static class DatabaseHelper extends SQLiteOpenHelper
  {
    DatabaseHelper(Context paramContext)
    {
      super("entity.db", null, 7);
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE entity (_id TEXT,source TEXT,is_share_target INTEGER DEFAULT 0,is_communication_target INTEGER DEFAULT 0,share_priority INTEGER,share_count INTEGER DEFAULT 0,share_time INTEGER DEFAULT 0,phone_number TEXT,secondary_phone_numbers TEXT,email TEXT,display_name TEXT,protobuf_blob BLOB,PRIMARY KEY (_id,source));");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_source ON entity(source);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_is_share_target ON entity(is_share_target);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_is_communication_target ON entity(is_communication_target);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_phone_number ON entity(phone_number);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_email ON entity(email);");
    }

    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
    }

    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      super.onOpen(paramSQLiteDatabase);
      paramSQLiteDatabase.enableWriteAheadLogging();
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      Log.w(EntityProvider.TAG, "Upgrading database from version " + paramInt1 + " to " + paramInt2);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS entity");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_source");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_is_share_target");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_is_communication_target");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_phone_number");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_email");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_should_sync");
      onCreate(paramSQLiteDatabase);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityProvider
 * JD-Core Version:    0.6.2
 */