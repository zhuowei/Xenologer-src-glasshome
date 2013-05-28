package com.google.glass.timeline;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Patterns;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableList.Builder;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassApplication;
import com.google.glass.companion.CompanionUtils;
import com.google.glass.location.LocationHelper;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sync.SyncHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.NotificationConfig;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SourceType;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.googlex.glass.common.proto.UserAction.Type;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TimelineHelper
{
  public static final String ACTION_GO_TO_BUNDLE = "com.google.glass.ACTION_GO_TO_BUNDLE";
  public static final String ACTION_NOTIFICATION_RECEIVED = "com.google.glass.ACTION_NOTIFICATION_RECEIVED";
  public static final String EXTRA_IS_NOTIFICATION = "is_notification";
  public static final String EXTRA_READ_MORE = "read_more";
  public static final String EXTRA_TIMELINE_BUNDLE_ITEM_ID = "bundle_item_id";
  public static final String EXTRA_TIMELINE_CREATOR = "creator";
  public static final String EXTRA_TIMELINE_ITEM_ID = "item_id";
  public static final String EXTRA_TIMELINE_MENU_ITEM_ID = "menu_item_id";
  public static final String EXTRA_TIMELINE_SHARE_TARGET_COUNT = "share_target_count";
  public static final String EXTRA_TIMELINE_SHARE_TARGET_PREFIX = "share_target";
  private static final String IGNORE_INDEX = "+";
  private static final int MAX_DISPLAY_ITEMS = 200;
  static final long MAX_LOCATION_AGE_FOR_TIMELINE_MS = 1800000L;
  public static final String NON_DATABASE_ITEM_ID_PREFIX = "com.google.glass.non-database-item-id-prefix";
  public static final String SEARCH_PROTO_MIME_TYPE = "proto/search";
  private static final String SOURCE_REDACTED = "***";
  private static final Pattern SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN = Pattern.compile("$DISPLAY_TIME", 16);
  private static final int SPEAKABLE_TEXT_MAX_LENGTH = 3999;
  private static final SimpleDateFormat SPEAKABLE_TEXT_TIME_FORMAT = new SimpleDateFormat("h:mm a");
  public static final String STREAM_URL_CONTENT_TYPE = "video/vnd.google-glass.stream-url";
  public static final String[] SUPPORTED_IMAGE_MIME_TYPES = { "image/jpeg", "image/png" };
  public static final String[] SUPPORTED_VIDEO_MIME_TYPES = { "video/mp4", "video/vnd.google-glass.stream-url" };
  private static final String TAG = TimelineHelper.class.getSimpleName();
  private static final Object UPDATE_LOCK = new Object();

  public static void atomicUpdateTimelineItem(Update paramUpdate)
  {
    synchronized (UPDATE_LOCK)
    {
      paramUpdate.execute();
      return;
    }
  }

  public static void atomicUpdateTimelineItemAsync(Update paramUpdate)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineHelper.atomicUpdateTimelineItem(this.val$update);
      }
    });
  }

  public static int binarySearch(String paramString, long paramLong, Cursor paramCursor, boolean paramBoolean, int[] paramArrayOfInt)
  {
    int i;
    if ((paramString == null) || (paramCursor == null))
    {
      Log.d(TAG, "Cannot search for target: " + paramString + ", cursor: " + paramCursor);
      i = -1;
    }
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i3;
    int i5;
    do
    {
      return i;
      j = 0;
      k = -1 + paramCursor.getCount();
      m = paramCursor.getColumnIndex("_id");
      n = paramCursor.getColumnIndex("display_time");
      i1 = paramCursor.getColumnIndex("is_deleted");
      int i2 = paramArrayOfInt.length;
      i3 = 0;
      if (i3 >= i2)
        break label250;
      i = paramArrayOfInt[i3];
      if ((i < 0) || (i >= paramCursor.getCount()))
        break label219;
      paramCursor.moveToPosition(i);
      i5 = compare(paramString, paramLong, paramCursor.getString(m), paramCursor.getLong(n));
      if (!paramBoolean)
        i5 = -i5;
      if (i5 != 0)
        break;
    }
    while (paramCursor.getInt(i1) == 0);
    Log.d(TAG, "Found item, but it is deleted. Ignoring the item.");
    return -1;
    if (i5 < 0)
    {
      int i6 = i + 1;
      j = Math.max(j, i6);
    }
    while (true)
    {
      label219: i3++;
      break;
      k = Math.min(k, i - 1);
    }
    label239: int i4;
    if (i4 < 0)
      j = i + 1;
    while (true)
    {
      label250: if (j > k)
        break label344;
      i = j + k >> 1;
      paramCursor.moveToPosition(i);
      i4 = compare(paramString, paramLong, paramCursor.getString(m), paramCursor.getLong(n));
      if (!paramBoolean)
        i4 = -i4;
      if (i4 != 0)
        break label239;
      if (paramCursor.getInt(i1) == 0)
        break;
      Log.d(TAG, "Found item, but it is deleted. Ignoring the item.");
      return -1;
      k = i - 1;
    }
    label344: return -1;
  }

  public static boolean canSyncToCompanion(TimelineItem paramTimelineItem)
  {
    return (paramTimelineItem != null) && (paramTimelineItem.hasCompanionSyncProtocol()) && (paramTimelineItem.getCompanionSyncProtocol() == TimelineItem.SyncProtocol.ALWAYS);
  }

  private static int compare(String paramString1, long paramLong1, String paramString2, long paramLong2)
  {
    int i = paramString1.compareTo(paramString2);
    if (i == 0)
      i = 0;
    do
    {
      return i;
      if (paramLong1 < paramLong2)
        return -1;
    }
    while (paramLong1 <= paramLong2);
    return 1;
  }

  public static CursorLoader createItemLoaderForBundleTimeline(Context paramContext, String paramString1, String paramString2, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = String.valueOf(paramLong);
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("+is_deleted=0");
    localStringBuilder1.append(" AND ");
    StringBuilder localStringBuilder2 = new StringBuilder().append("pin_time");
    String str2;
    String[] arrayOfString;
    label131: StringBuilder localStringBuilder3;
    if (paramBoolean2)
    {
      str2 = "<>";
      localStringBuilder1.append(str2 + -1L);
      localStringBuilder1.append(" AND ");
      localStringBuilder1.append("bundle_cover_status!=1");
      localStringBuilder1.append(" AND ");
      if (!TextUtils.isEmpty(paramString2))
        break label287;
      localStringBuilder1.append("_id==?");
      arrayOfString = new String[] { paramString1, str1 };
      localStringBuilder1.append(" AND ");
      localStringBuilder1.append("+delivery_time<=?");
      String str3 = "";
      if (paramBoolean2)
      {
        String str6 = str3 + "pin_score DESC, ";
        str3 = str6 + "pin_time, ";
      }
      localStringBuilder3 = new StringBuilder().append(str3).append("display_time");
      if (!paramBoolean1)
        break label360;
    }
    label287: label360: for (String str4 = " DESC "; ; str4 = " ")
    {
      String str5 = str4 + "LIMIT " + 200;
      return new CursorLoader(paramContext, TimelineProvider.TIMELINE_URI, null, localStringBuilder1.toString(), arrayOfString, str5);
      str2 = "==";
      break;
      localStringBuilder1.append("(");
      localStringBuilder1.append("_id==?");
      localStringBuilder1.append(" OR ");
      localStringBuilder1.append("+bundle_id==?");
      localStringBuilder1.append(")");
      arrayOfString = new String[3];
      arrayOfString[0] = paramString1;
      arrayOfString[1] = DatabaseUtils.sqlEscapeString(paramString2);
      arrayOfString[2] = str1;
      break label131;
    }
  }

  public static CursorLoader createItemLoaderForGuestTimeline(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, long paramLong)
  {
    String str1 = getLocalTimelineItemSource(new SettingsSecure(paramContext.getContentResolver()));
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("is_deleted=0");
    localStringBuilder1.append(" AND ");
    StringBuilder localStringBuilder2 = new StringBuilder().append("pin_time");
    String str2;
    String[] arrayOfString;
    StringBuilder localStringBuilder3;
    if (paramBoolean1)
    {
      str2 = "<>";
      localStringBuilder1.append(str2 + -1L);
      localStringBuilder1.append(" AND ");
      localStringBuilder1.append("creation_time>=?");
      localStringBuilder1.append(" AND ");
      localStringBuilder1.append("source=?");
      localStringBuilder1.append(" AND (");
      localStringBuilder1.append("bundle_cover_status!=0");
      localStringBuilder1.append(" OR ");
      localStringBuilder1.append("bundle_id=\"\"");
      localStringBuilder1.append(")");
      arrayOfString = new String[2];
      arrayOfString[0] = Long.toString(paramLong);
      arrayOfString[1] = str1;
      localStringBuilder3 = new StringBuilder().append("display_time");
      if (!paramBoolean2)
        break label262;
    }
    label262: for (String str3 = " DESC "; ; str3 = " ")
    {
      String str4 = str3 + "LIMIT " + 200;
      return new CursorLoader(paramContext, TimelineProvider.TIMELINE_URI, null, localStringBuilder1.toString(), arrayOfString, str4);
      str2 = "=";
      break;
    }
  }

  public static CursorLoader createItemLoaderForTimeline(Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("+is_deleted=0");
    localStringBuilder1.append(" AND ");
    StringBuilder localStringBuilder2 = new StringBuilder().append("+pin_time");
    String str1;
    StringBuilder localStringBuilder3;
    if (paramBoolean1)
    {
      str1 = "<>";
      localStringBuilder1.append(str1 + -1L);
      localStringBuilder1.append(" AND ");
      localStringBuilder1.append("+delivery_time<=?");
      localStringBuilder1.append(" AND (");
      localStringBuilder1.append("bundle_cover_status!=0");
      localStringBuilder1.append(" OR ");
      localStringBuilder1.append("bundle_id=\"\"");
      localStringBuilder1.append(")");
      String str2 = "";
      if (paramBoolean1)
      {
        String str5 = str2 + "pin_score, ";
        str2 = str5 + "pin_time, ";
      }
      localStringBuilder3 = new StringBuilder().append(str2).append("display_time");
      if (!paramBoolean2)
        break label272;
    }
    label272: for (String str3 = " DESC "; ; str3 = " ")
    {
      String str4 = str3 + "LIMIT " + 200;
      return new CursorLoader(paramContext, TimelineProvider.TIMELINE_URI, null, localStringBuilder1.toString(), getItemLoaderSelectArgs(paramLong), str4);
      str1 = "=";
      break;
    }
  }

  public static String createShareTargetExtraKey(int paramInt)
  {
    return "share_target" + paramInt;
  }

  public static TimelineItem.Builder createTimelineItemBuilder(Context paramContext, TimelineItem.SourceType paramSourceType, String paramString, SettingsSecure paramSettingsSecure)
  {
    String str1 = paramSettingsSecure.getString("android_id");
    String str2 = paramString + str1;
    long l = System.currentTimeMillis();
    TimelineItem.Builder localBuilder = TimelineItem.newBuilder();
    populateLocation(paramContext, str2, localBuilder);
    return localBuilder.setId(generateUniqueId(paramSettingsSecure)).setSource(str2).setSourceType(paramSourceType).setCreationTime(l).setModifiedTime(l).setDisplayTime(l);
  }

  @VisibleForTesting
  public static int deleteAll(ContentResolver paramContentResolver)
  {
    Assert.assertNotUiThread();
    return paramContentResolver.delete(TimelineProvider.TIMELINE_URI, null, null);
  }

  public static boolean failedToSyncToCompanion(TimelineItem paramTimelineItem)
  {
    return (canSyncToCompanion(paramTimelineItem)) && (paramTimelineItem.getCompanionSyncStatus() == TimelineItem.SyncStatus.SYNC_FAILED);
  }

  public static String formatSpeakableText(TimelineItem paramTimelineItem)
  {
    String str1;
    if (paramTimelineItem.hasSpeakableText())
      str1 = Html.fromHtml(paramTimelineItem.getSpeakableText()).toString();
    while (str1 == null)
    {
      return null;
      boolean bool = paramTimelineItem.hasText();
      str1 = null;
      if (bool)
        str1 = Html.fromHtml(paramTimelineItem.getText()).toString();
    }
    Matcher localMatcher1 = SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN.matcher(str1);
    if (localMatcher1.find())
      str1 = localMatcher1.replaceAll(SPEAKABLE_TEXT_TIME_FORMAT.format(new Date(paramTimelineItem.getDisplayTime())));
    String str2 = str1.replaceAll("[\\[\\]]", "").replaceAll("\\(Play voice recording\\)", "").replaceAll("Sent from my Glass", "");
    Matcher localMatcher2 = Patterns.WEB_URL.matcher(str2);
    if (localMatcher2.find())
      str2 = localMatcher2.replaceAll(" - web link - ");
    String str3 = str2.replaceAll("throughglass", "through glass");
    if (str3.length() > 3999)
      return str3.substring(0, 3999);
    return str3;
  }

  public static TimelineItem fromContentValues(ContentValues paramContentValues)
  {
    byte[] arrayOfByte = paramContentValues.getAsByteArray("protobuf_blob");
    if (arrayOfByte == null)
      return null;
    return fromProtoByteArray(arrayOfByte);
  }

  public static TimelineItem fromCursor(Cursor paramCursor)
  {
    return fromProtoByteArray(getProtobufBlob(paramCursor));
  }

  private static TimelineItem fromProtoByteArray(byte[] paramArrayOfByte)
  {
    try
    {
      TimelineItem localTimelineItem = TimelineItem.parseFrom(paramArrayOfByte);
      return localTimelineItem;
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
    {
      Log.e(TAG, "Error deserializing protobuf", localInvalidProtocolBufferException);
    }
    return null;
  }

  private static String generateUniqueId(SettingsSecure paramSettingsSecure)
  {
    return UUID.randomUUID().toString();
  }

  public static Attachment getAttachmentOfType(TimelineItem paramTimelineItem, String paramString)
  {
    Iterator localIterator = paramTimelineItem.getAttachmentList().iterator();
    while (localIterator.hasNext())
    {
      Attachment localAttachment = (Attachment)localIterator.next();
      if (paramString.equals(localAttachment.getContentType()))
        return localAttachment;
    }
    return null;
  }

  public static List<Attachment> getAttachmentsOfTypes(TimelineItem paramTimelineItem, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = paramTimelineItem.getAttachmentCount();
    while (i < j)
    {
      Attachment localAttachment = paramTimelineItem.getAttachment(i);
      int k = 0;
      int m = paramArrayOfString.length;
      while (k < m)
      {
        if (paramArrayOfString[k].equals(localAttachment.getContentType()))
          localArrayList.add(localAttachment);
        k++;
      }
      i++;
    }
    return localArrayList;
  }

  public static Pair<TimelineItem, Integer> getBundleCover(ContentResolver paramContentResolver, String paramString)
  {
    Assert.assertNotUiThread();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("is_deleted==0");
    localStringBuilder.append(" AND ");
    localStringBuilder.append("bundle_id==?");
    localStringBuilder.append(" AND ");
    localStringBuilder.append("bundle_cover_status!=0");
    String[] arrayOfString = new String[1];
    arrayOfString[0] = DatabaseUtils.sqlEscapeString(paramString);
    Cursor localCursor = null;
    try
    {
      localCursor = paramContentResolver.query(TimelineProvider.TIMELINE_URI, null, localStringBuilder.toString(), arrayOfString, "display_time DESC");
      if ((localCursor != null) && (localCursor.moveToNext()))
      {
        TimelineItem localTimelineItem = fromCursor(localCursor);
        Integer localInteger = Integer.valueOf(localCursor.getInt(localCursor.getColumnIndex("bundle_cover_status")));
        if ((localTimelineItem == null) || (localInteger == null))
        {
          if (localCursor != null)
            localCursor.close();
          localObject2 = null;
          return localObject2;
        }
        Pair localPair = Pair.create(localTimelineItem, localInteger);
        Object localObject2 = localPair;
        return localObject2;
      }
      return null;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static int getBundleCoverStatus(Cursor paramCursor)
  {
    return paramCursor.getInt(paramCursor.getColumnIndex("bundle_cover_status"));
  }

  public static long getDeliveryTime(TimelineItem paramTimelineItem)
  {
    if (!paramTimelineItem.hasNotification());
    while (!paramTimelineItem.getNotification().hasDeliveryTime())
      return 0L;
    return paramTimelineItem.getNotification().getDeliveryTime();
  }

  public static long getDisplayTime(TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem == null)
      return 0L;
    if (paramTimelineItem.hasDisplayTime())
      return paramTimelineItem.getDisplayTime();
    return paramTimelineItem.getModifiedTime();
  }

  public static String[] getItemLoaderSelectArgs(long paramLong)
  {
    return new String[] { String.valueOf(paramLong) };
  }

  public static String getLocalTimelineItemSource(SettingsSecure paramSettingsSecure)
  {
    String str = paramSettingsSecure.getString("android_id");
    return "device:" + str;
  }

  private static long getPinTime(TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem.getIsPinned())
      return paramTimelineItem.getPinTime();
    return -1L;
  }

  public static byte[] getProtobufBlob(Cursor paramCursor)
  {
    return paramCursor.getBlob(paramCursor.getColumnIndex("protobuf_blob"));
  }

  public static String getRedactedSource(String paramString)
  {
    if (paramString == null)
      paramString = null;
    do
    {
      return paramString;
      if (paramString.startsWith("device:"))
        return "device:***";
    }
    while (!paramString.startsWith("companion:"));
    return "companion:***";
  }

  public static String getThumbnailFilename(Attachment paramAttachment)
  {
    if (paramAttachment.hasId())
      return paramAttachment.getId();
    if (paramAttachment.hasClientCachePath())
      return paramAttachment.getClientCachePath().replace(File.separatorChar, '_');
    return null;
  }

  @VisibleForTesting
  public static int getTimelineItemCount(ContentResolver paramContentResolver)
  {
    Assert.assertNotUiThread();
    Cursor localCursor = null;
    try
    {
      localCursor = paramContentResolver.query(TimelineProvider.TIMELINE_URI, null, null, null, null);
      int i = localCursor.getCount();
      return i;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static void goToBundle(Context paramContext, TimelineItemId paramTimelineItemId, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_GO_TO_BUNDLE");
    localIntent.addFlags(268435456);
    localIntent.putExtra("item_id", paramTimelineItemId);
    localIntent.putExtra("is_notification", paramBoolean);
    paramContext.startActivity(localIntent);
  }

  public static void goToTimeline(Context paramContext, TimelineItemId paramTimelineItemId)
  {
    Bundle localBundle = new Bundle();
    if (paramTimelineItemId != null)
      localBundle.putSerializable("item_id", paramTimelineItemId);
    goToTimelineWithExtras(paramContext, localBundle);
  }

  public static void goToTimelineHome(Context paramContext)
  {
    goToTimeline(paramContext, null);
  }

  public static void goToTimelineWithExtras(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.addFlags(268435456);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    paramContext.startActivity(localIntent);
  }

  public static boolean hasAttachmentOfTypes(TimelineItem paramTimelineItem, String[] paramArrayOfString)
  {
    int i = 0;
    int j = paramTimelineItem.getAttachmentCount();
    while (i < j)
    {
      if (isSupportedType(paramTimelineItem.getAttachment(i).getContentType(), paramArrayOfString))
        return true;
      i++;
    }
    return false;
  }

  private static boolean hasBundleId(TimelineItem paramTimelineItem)
  {
    return (paramTimelineItem != null) && (paramTimelineItem.hasBundleId()) && (!TextUtils.isEmpty(paramTimelineItem.getBundleId()));
  }

  public static boolean hasMenuItemActionOfTypes(TimelineItem paramTimelineItem, MenuItem.Action[] paramArrayOfAction)
  {
    int i = 0;
    int j = paramTimelineItem.getMenuItemCount();
    while (i < j)
    {
      MenuItem localMenuItem = paramTimelineItem.getMenuItem(i);
      int k = 0;
      int m = paramArrayOfAction.length;
      while (k < m)
      {
        if (paramArrayOfAction[k].equals(localMenuItem.getAction()))
          return true;
        k++;
      }
      i++;
    }
    return false;
  }

  public static boolean hasMenuItemBroadcastActions(TimelineItem paramTimelineItem, String[] paramArrayOfString)
  {
    int i = 0;
    int j = paramTimelineItem.getMenuItemCount();
    while (i < j)
    {
      MenuItem localMenuItem = paramTimelineItem.getMenuItem(i);
      int k = 0;
      int m = paramArrayOfString.length;
      while (k < m)
      {
        if (paramArrayOfString[k].equals(localMenuItem.getBroadcastAction()))
          return true;
        k++;
      }
      i++;
    }
    return false;
  }

  public static boolean isCompanionSms(TimelineItem paramTimelineItem)
  {
    String str2;
    if ((paramTimelineItem != null) && (paramTimelineItem.hasCreator()))
    {
      String str1 = paramTimelineItem.getCreator().getSource();
      if (str1 != null)
      {
        str2 = CompanionUtils.getComponentFromSource(str1);
        if (!TextUtils.isEmpty(str2))
          break label37;
      }
    }
    label37: 
    while ((!str2.startsWith("com.google.android.apps.googlevoice")) && (!str2.startsWith("com.android.mms")) && (!str2.startsWith("com.google.glass.companion.sms")))
      return false;
    return true;
  }

  private static boolean isRunningOnCompanion(Context paramContext)
  {
    return paramContext.getPackageName().equals("com.google.glass.companion");
  }

  public static boolean isSupportedType(String paramString, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfString[j].equals(paramString))
        return true;
    return false;
  }

  public static boolean isSyncingToCloud(TimelineItem paramTimelineItem)
  {
    return (paramTimelineItem.getCloudSyncStatus() == TimelineItem.SyncStatus.NOT_SYNCED) && (paramTimelineItem.getCloudSyncProtocol() != TimelineItem.SyncProtocol.NEVER);
  }

  public static boolean isSyncingToCompanion(TimelineItem paramTimelineItem)
  {
    return (paramTimelineItem != null) && (paramTimelineItem.getCompanionSyncProtocol() != TimelineItem.SyncProtocol.NEVER) && (paramTimelineItem.getCompanionSyncStatus() == TimelineItem.SyncStatus.NOT_SYNCED);
  }

  public static boolean isVideo(Attachment paramAttachment)
  {
    return "video/mp4".equals(paramAttachment.getContentType());
  }

  public static int linearSearch(String paramString, Cursor paramCursor, int paramInt)
  {
    if ((paramString == null) || (paramCursor == null))
    {
      Log.d(TAG, "Cannot search for target: " + paramString + ", cursor: " + paramCursor);
      i = -1;
      return i;
    }
    if (!paramCursor.moveToFirst())
    {
      Log.d(TAG, "Cannot search for " + paramString + "; no items.");
      return -1;
    }
    int j = paramCursor.getColumnIndex("_id");
    int k = paramCursor.getColumnIndex("is_deleted");
    for (int i = 0; ; i++)
    {
      if (i < paramInt)
      {
        if (paramString.equals(paramCursor.getString(j)))
        {
          if (paramCursor.getInt(k) == 0)
            break;
          Log.d(TAG, "Found item, but it is deleted. Ignoring the item.");
          return -1;
        }
        if (paramCursor.moveToNext())
          continue;
      }
      return -1;
    }
  }

  @VisibleForTesting
  static int pickBundleCover(List<TimelineItem> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      i = -1;
      return i;
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramList.size())
        break label51;
      if (((TimelineItem)paramList.get(i)).getIsBundleCover())
        break;
    }
    label51: return 0;
  }

  @VisibleForTesting
  static void populateLocation(Context paramContext, String paramString, TimelineItem.Builder paramBuilder)
  {
    if (isRunningOnCompanion(paramContext))
      Log.v(TAG, "Not populating location on Companion");
    Location localLocation;
    long l;
    do
    {
      return;
      localLocation = LocationHelper.getLastKnownLocation();
      l = System.currentTimeMillis();
    }
    while ((localLocation == null) || (l - localLocation.getTime() > 1800000L));
    paramBuilder.setLocation(LocationHelper.toLocationProto(localLocation, paramString));
  }

  public static Cursor queryItemsByDeliveryTime(Context paramContext, long paramLong)
  {
    Assert.assertNotUiThread();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = TimelineProvider.TIMELINE_URI;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localContentResolver.query(localUri, null, "delivery_time>=?", arrayOfString, "delivery_time ASC");
  }

  public static Cursor queryPinnedItems(Context paramContext)
  {
    Assert.assertNotUiThread();
    return paramContext.getContentResolver().query(TimelineProvider.TIMELINE_URI, null, "pin_time<>-1", null, null);
  }

  public static void readMore(Context paramContext, TimelineItemId paramTimelineItemId)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_GO_TO_BUNDLE");
    localIntent.addFlags(268435456);
    localIntent.putExtra("item_id", paramTimelineItemId);
    localIntent.putExtra("read_more", true);
    paramContext.startActivity(localIntent);
  }

  private static void removeFileFromMediaStore(Context paramContext, Attachment paramAttachment)
  {
    if (!paramAttachment.hasClientCachePath());
    Cursor localCursor;
    do
    {
      return;
      if ("image/jpeg".equals(paramAttachment.getContentType()));
      for (Uri localUri1 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI; ; localUri1 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI)
      {
        String[] arrayOfString1 = { "_id", "_data" };
        localCursor = null;
        try
        {
          ContentResolver localContentResolver = paramContext.getContentResolver();
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = paramAttachment.getClientCachePath();
          localCursor = localContentResolver.query(localUri1, arrayOfString1, "_data=?", arrayOfString2, null);
          localCursor.moveToFirst();
          while (!localCursor.isAfterLast())
          {
            Uri localUri2 = ContentUris.withAppendedId(localUri1, localCursor.getInt(localCursor.getColumnIndex("_id")));
            paramContext.getContentResolver().delete(localUri2, null, null);
            localCursor.moveToNext();
          }
        }
        finally
        {
          if (localCursor != null)
            localCursor.close();
        }
        if (!"video/mp4".equals(paramAttachment.getContentType()))
          break;
      }
    }
    while (localCursor == null);
    localCursor.close();
  }

  @VisibleForTesting
  static boolean requiresBundleOrPinUpdate(TimelineItem paramTimelineItem, int paramInt1, int paramInt2, boolean paramBoolean, long paramLong)
  {
    boolean bool2;
    if (paramInt1 != paramInt2)
      bool2 = true;
    label41: boolean bool1;
    do
    {
      boolean bool3;
      do
      {
        return bool2;
        if (!paramBoolean)
          break label41;
        if (!paramTimelineItem.getIsPinned())
          break;
        bool3 = getPinTime(paramTimelineItem) < paramLong;
        bool2 = false;
      }
      while (!bool3);
      return true;
      if (paramTimelineItem.getIsPinned())
        break;
      bool1 = paramTimelineItem.hasPinTime();
      bool2 = false;
    }
    while (!bool1);
    return true;
  }

  private static void startSuppressNotifyChange(TimelineProvider paramTimelineProvider)
  {
    if (paramTimelineProvider != null)
      paramTimelineProvider.startSuppressNotifyChange();
  }

  private static void stopSuppressNotifyChange(TimelineProvider paramTimelineProvider)
  {
    if (paramTimelineProvider != null)
      paramTimelineProvider.stopSuppressNotifyChange();
  }

  public static ContentValues toContentValues(TimelineItem paramTimelineItem)
  {
    int i = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", paramTimelineItem.getId());
    localContentValues.put("creation_time", Long.valueOf(paramTimelineItem.getCreationTime()));
    localContentValues.put("modified_time", Long.valueOf(paramTimelineItem.getModifiedTime()));
    localContentValues.put("display_time", Long.valueOf(getDisplayTime(paramTimelineItem)));
    localContentValues.put("delivery_time", Long.valueOf(getDeliveryTime(paramTimelineItem)));
    localContentValues.put("pin_time", Long.valueOf(getPinTime(paramTimelineItem)));
    int j;
    int k;
    label121: String str1;
    if (paramTimelineItem.hasPinScore())
    {
      j = paramTimelineItem.getPinScore();
      localContentValues.put("pin_score", Integer.valueOf(j));
      if (!paramTimelineItem.getIsDeleted())
        break label251;
      k = i;
      localContentValues.put("is_deleted", Integer.valueOf(k));
      localContentValues.put("sync_status", Integer.valueOf(paramTimelineItem.getCloudSyncStatus().getNumber()));
      localContentValues.put("sync_protocol", Integer.valueOf(paramTimelineItem.getCloudSyncProtocol().getNumber()));
      if (!hasBundleId(paramTimelineItem))
        break label257;
      str1 = DatabaseUtils.sqlEscapeString(paramTimelineItem.getBundleId());
      label182: localContentValues.put("bundle_id", str1);
      if (!paramTimelineItem.getIsBundleCover())
        break label265;
      label198: localContentValues.put("bundle_cover_status", Integer.valueOf(i));
      if (!paramTimelineItem.hasSource())
        break label270;
    }
    label257: label265: label270: for (String str2 = paramTimelineItem.getSource(); ; str2 = "")
    {
      localContentValues.put("source", str2);
      localContentValues.put("protobuf_blob", paramTimelineItem.toByteArray());
      return localContentValues;
      j = 2147483647;
      break;
      label251: k = 0;
      break label121;
      str1 = "";
      break label182;
      i = 0;
      break label198;
    }
  }

  private static ContentValues toContentValues(UserAction paramUserAction, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("action_type", Integer.valueOf(paramUserAction.getType().getNumber()));
    localContentValues.put("timeline_id", paramString);
    if (paramUserAction.hasPayload())
      localContentValues.put("payload", paramUserAction.getPayload());
    return localContentValues;
  }

  @VisibleForTesting
  static void updateBundle(ContentResolver paramContentResolver, String paramString, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    if (TextUtils.isEmpty(paramString))
    {
      Log.d(TAG, "Cannot bundle items with empty bundle ID.");
      return;
    }
    Log.d(TAG, "Updating bundle: " + paramString);
    StringBuilder localStringBuilder;
    String[] arrayOfString;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    boolean bool1;
    long l;
    Cursor localCursor;
    synchronized (UPDATE_LOCK)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("+is_deleted==0");
      localStringBuilder.append(" AND ");
      localStringBuilder.append("bundle_id==?");
      arrayOfString = new String[1];
      arrayOfString[0] = DatabaseUtils.sqlEscapeString(paramString);
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      bool1 = false;
      l = -1L;
      localCursor = null;
    }
    try
    {
      localCursor = paramContentResolver.query(TimelineProvider.TIMELINE_URI, null, localStringBuilder.toString(), arrayOfString, "display_time DESC");
      if ((localCursor == null) || (!localCursor.moveToNext()))
      {
        Log.d(TAG, "Found no items in bundle: " + paramString + "; cannot update.");
        if (localCursor != null)
          localCursor.close();
        return;
        localObject2 = finally;
        throw localObject2;
      }
      int i = localCursor.getColumnIndex("bundle_cover_status");
      boolean bool2;
      do
      {
        TimelineItem localTimelineItem = fromCursor(localCursor);
        localArrayList1.add(localTimelineItem);
        localArrayList2.add(Integer.valueOf(localCursor.getInt(i)));
        if (!paramBoolean)
        {
          bool1 |= localTimelineItem.getIsPinned();
          l = Math.max(l, getPinTime(localTimelineItem));
        }
        bool2 = localCursor.moveToNext();
      }
      while (bool2);
      if (localCursor != null)
        localCursor.close();
      updateBundleCoverStatusAndPin(paramContentResolver, localArrayList1, localArrayList2, pickBundleCover(localArrayList1), bool1, l);
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  @VisibleForTesting
  static void updateBundleCoverStatusAndPin(ContentResolver paramContentResolver, TimelineItem paramTimelineItem, int paramInt, boolean paramBoolean, long paramLong)
  {
    if (paramBoolean)
      if ((paramTimelineItem.getIsPinned()) && (getPinTime(paramTimelineItem) == paramLong));
    for (paramTimelineItem = TimelineItem.newBuilder(paramTimelineItem).setIsPinned(true).setPinTime(paramLong).build(); ; paramTimelineItem = TimelineItem.newBuilder(paramTimelineItem).setIsPinned(false).clearPinTime().build())
      do
      {
        ContentValues localContentValues = toContentValues(paramTimelineItem);
        localContentValues.put("bundle_cover_status", Integer.valueOf(paramInt));
        paramContentResolver.update(Uri.withAppendedPath(TimelineProvider.TIMELINE_URI, paramTimelineItem.getId()), localContentValues, null, null);
        return;
      }
      while ((!paramTimelineItem.getIsPinned()) && (!paramTimelineItem.hasPinTime()));
  }

  @VisibleForTesting
  static void updateBundleCoverStatusAndPin(ContentResolver paramContentResolver, List<TimelineItem> paramList, List<Integer> paramList1, int paramInt, boolean paramBoolean, long paramLong)
  {
    if (paramList.size() == paramList1.size());
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (paramList.size() != 1)
        break;
      TimelineItem localTimelineItem2 = (TimelineItem)paramList.get(0);
      if (requiresBundleOrPinUpdate(localTimelineItem2, ((Integer)paramList1.get(0)).intValue(), 3, paramBoolean, paramLong))
        updateBundleCoverStatusAndPin(paramContentResolver, localTimelineItem2, 3, paramBoolean, paramLong);
      return;
    }
    int i = 0;
    label92: TimelineItem localTimelineItem1;
    int j;
    if (i < paramList.size())
    {
      localTimelineItem1 = (TimelineItem)paramList.get(i);
      j = ((Integer)paramList1.get(i)).intValue();
      if (i != paramInt)
        break label207;
      if (!localTimelineItem1.getIsBundleCover())
        break label178;
      if (requiresBundleOrPinUpdate(localTimelineItem1, j, 1, paramBoolean, paramLong))
        updateBundleCoverStatusAndPin(paramContentResolver, localTimelineItem1, 1, paramBoolean, paramLong);
    }
    while (true)
    {
      i++;
      break label92;
      break;
      label178: if (requiresBundleOrPinUpdate(localTimelineItem1, j, 2, paramBoolean, paramLong))
      {
        updateBundleCoverStatusAndPin(paramContentResolver, localTimelineItem1, 2, paramBoolean, paramLong);
        continue;
        label207: if (localTimelineItem1.getIsBundleCover())
        {
          if (requiresBundleOrPinUpdate(localTimelineItem1, j, 1, paramBoolean, paramLong))
            updateBundleCoverStatusAndPin(paramContentResolver, localTimelineItem1, 1, paramBoolean, paramLong);
        }
        else if (requiresBundleOrPinUpdate(localTimelineItem1, j, 0, paramBoolean, paramLong))
          updateBundleCoverStatusAndPin(paramContentResolver, localTimelineItem1, 0, paramBoolean, paramLong);
      }
    }
  }

  public int bulkInsertTimelineItem(Context paramContext, List<TimelineItem> paramList)
  {
    Assert.assertNotUiThread();
    if (paramList.isEmpty())
      return 0;
    HashSet localHashSet = new HashSet();
    ContentValues[] arrayOfContentValues = new ContentValues[paramList.size()];
    for (int i = 0; i < paramList.size(); i++)
    {
      TimelineItem localTimelineItem = (TimelineItem)paramList.get(i);
      Log.v(TAG, "Preparing to insert timeline item with ID " + localTimelineItem.getId());
      arrayOfContentValues[i] = toContentValues(localTimelineItem);
      if (hasBundleId(localTimelineItem))
        localHashSet.add(localTimelineItem.getBundleId());
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    TimelineProvider localTimelineProvider = (TimelineProvider)localContentResolver.acquireContentProviderClient("com.google.glass.timeline").getLocalContentProvider();
    startSuppressNotifyChange(localTimelineProvider);
    int j;
    try
    {
      j = localContentResolver.bulkInsert(TimelineProvider.TIMELINE_URI, arrayOfContentValues);
      Iterator localIterator = localHashSet.iterator();
      while (localIterator.hasNext())
        updateBundle(localContentResolver, (String)localIterator.next(), false);
    }
    finally
    {
      stopSuppressNotifyChange(localTimelineProvider);
    }
    stopSuppressNotifyChange(localTimelineProvider);
    return j;
  }

  public TimelineItem.Builder createTimelineItemBuilder(Context paramContext, SettingsSecure paramSettingsSecure)
  {
    return createTimelineItemBuilder(paramContext, TimelineItem.SourceType.GLASS_DEVICE, "device:", paramSettingsSecure);
  }

  public void deletePendingActions(Context paramContext, String paramString, long paramLong)
  {
    Assert.assertNotUiThread();
    if (paramLong > 0L)
    {
      ContentResolver localContentResolver = paramContext.getContentResolver();
      Uri localUri = TimelineProvider.getPendingActionUri(paramString);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      int i = localContentResolver.delete(localUri, "_id<=?", arrayOfString);
      Log.d(TAG, "Deleted " + i + " pending actions with maxRowId " + paramLong + " for " + paramString);
    }
  }

  public void deleteTimelineItem(final Context paramContext, TimelineItem paramTimelineItem)
  {
    Assert.assertNotUiThread();
    if (paramTimelineItem.getIsDeleted())
      Log.w(TAG, "Item " + paramTimelineItem.getId() + " is already deleted.");
    while (true)
    {
      return;
      Log.d(TAG, "Deleting item: " + paramTimelineItem.getId());
      atomicUpdateTimelineItem(new Update()
      {
        public TimelineItem onExecute()
        {
          UserAction localUserAction = UserAction.newBuilder().setType(UserAction.Type.DELETE).build();
          return TimelineHelper.this.updateTimelineItem(paramContext, this.val$tombstone, localUserAction, false, false);
        }
      });
      Iterator localIterator = paramTimelineItem.getAttachmentList().iterator();
      while (localIterator.hasNext())
      {
        Attachment localAttachment = (Attachment)localIterator.next();
        if (localAttachment.hasClientCachePath())
        {
          String str = localAttachment.getClientCachePath();
          if (!str.startsWith(GlassApplication.CACHED_FILES_DIRECTORY))
          {
            Log.d(TAG, "Deleting attached file: " + str);
            if (!new File(str).delete())
              Log.w(TAG, "Failed to delete file: " + str);
            else
              removeFileFromMediaStore(paramContext, localAttachment);
          }
        }
      }
    }
  }

  public void deleteTimelineItemAsync(final Context paramContext, final TimelineItem paramTimelineItem)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineHelper.this.deleteTimelineItem(paramContext, paramTimelineItem);
      }
    });
  }

  public void deleteTimelineItemAsync(final Context paramContext, final String paramString)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineItem localTimelineItem = TimelineHelper.this.queryTimelineItem(paramContext.getContentResolver(), paramString);
        if (localTimelineItem != null)
        {
          TimelineHelper.this.deleteTimelineItem(paramContext, localTimelineItem);
          return;
        }
        Log.w(TimelineHelper.TAG, "Could not find item " + paramString + " for deletion.");
      }
    });
  }

  public GetPendingActionsResponse getPendingActions(Context paramContext, String paramString)
  {
    Assert.assertNotUiThread();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Cursor localCursor = null;
    try
    {
      ImmutableList.Builder localBuilder = ImmutableList.builder();
      long l = 0L;
      localCursor = localContentResolver.query(TimelineProvider.getPendingActionUri(paramString), null, null, null, "_id");
      while (localCursor.moveToNext())
      {
        UserAction.Type localType = UserAction.Type.valueOf(localCursor.getInt(localCursor.getColumnIndex("action_type")));
        if (localType != null)
        {
          UserAction.Builder localBuilder1 = UserAction.newBuilder().setType(localType);
          String str = localCursor.getString(localCursor.getColumnIndex("payload"));
          if (str != null)
            localBuilder1.setPayload(str);
          localBuilder.add(localBuilder1.build());
        }
        l = localCursor.getLong(localCursor.getColumnIndex("_id"));
      }
      GetPendingActionsResponse localGetPendingActionsResponse = new GetPendingActionsResponse(localBuilder.build(), l, null);
      Log.d(TAG, "Returning " + localGetPendingActionsResponse.actions.size() + " pending actions for " + paramString);
      return localGetPendingActionsResponse;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public Queue<TimelineItem> getUnsyncedItems(ContentResolver paramContentResolver, List<TimelineItem.SyncProtocol> paramList, boolean paramBoolean)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    if ((paramList == null) || (paramList.isEmpty()))
      Log.w(TAG, "No sync protocol(s) specified.");
    Cursor localCursor;
    do
    {
      return localLinkedList;
      Log.v(TAG, "Getting items with sync protocols: " + TextUtils.join(", ", paramList));
      localCursor = null;
      while (true)
      {
        TimelineItem localTimelineItem;
        try
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("sync_status=0");
          localStringBuilder.append(" AND ");
          localStringBuilder.append("sync_protocol IN (");
          int i = 0;
          if (i < paramList.size())
          {
            if (i > 0)
              localStringBuilder.append(", ");
            localStringBuilder.append(((TimelineItem.SyncProtocol)paramList.get(i)).getNumber());
            i++;
            continue;
          }
          localStringBuilder.append(")");
          localCursor = paramContentResolver.query(TimelineProvider.TIMELINE_URI, null, localStringBuilder.toString(), null, "creation_time ASC");
          if (!localCursor.moveToNext())
            break;
          localTimelineItem = fromCursor(localCursor);
          if ((paramBoolean) && (localTimelineItem.getShareTargetCount() > 0))
          {
            Log.d(TAG, "Prioritizing " + localTimelineItem.getId() + " due to shareCount=" + localTimelineItem.getShareTargetCount());
            localLinkedList.add(0, localTimelineItem);
            continue;
          }
        }
        finally
        {
          if (localCursor != null)
            localCursor.close();
        }
        localLinkedList.add(localTimelineItem);
      }
    }
    while (localCursor == null);
    localCursor.close();
    return localLinkedList;
  }

  public Uri insertTimelineItem(Context paramContext, TimelineItem paramTimelineItem, UserEventAction.TimelineItemInserted paramTimelineItemInserted, UserAction paramUserAction)
  {
    Assert.assertNotUiThread();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    TimelineProvider localTimelineProvider = (TimelineProvider)localContentResolver.acquireContentProviderClient("com.google.glass.timeline").getLocalContentProvider();
    startSuppressNotifyChange(localTimelineProvider);
    try
    {
      Uri localUri = localContentResolver.insert(TimelineProvider.TIMELINE_URI, toContentValues(paramTimelineItem));
      String str1 = TAG;
      StringBuilder localStringBuilder = new StringBuilder().append("Inserted timeline item [id=").append(paramTimelineItem.getId());
      if (paramUserAction == null);
      String str2;
      for (Object localObject2 = ""; ; localObject2 = str2)
      {
        Log.v(str1, (String)localObject2 + ", itemType=" + paramTimelineItemInserted + "].");
        if (paramUserAction != null)
          localContentResolver.insert(TimelineProvider.getPendingActionUri(paramTimelineItem.getId()), toContentValues(paramUserAction, paramTimelineItem.getId()));
        if (hasBundleId(paramTimelineItem))
          updateBundle(localContentResolver, paramTimelineItem.getBundleId(), false);
        stopSuppressNotifyChange(localTimelineProvider);
        if ((paramTimelineItem.getCloudSyncProtocol() != TimelineItem.SyncProtocol.NEVER) && (paramTimelineItem.getCloudSyncStatus() != TimelineItem.SyncStatus.SYNCED))
          SyncHelper.triggerSync(paramContext, "com.google.glass.timeline");
        new UserEventHelper(paramContext).log(UserEventAction.TIMELINE_ITEM_INSERTED, paramTimelineItemInserted.getData());
        return localUri;
        str2 = ", action=" + paramUserAction.getType();
      }
    }
    finally
    {
      stopSuppressNotifyChange(localTimelineProvider);
    }
  }

  public void insertTimelineItemAsync(final Context paramContext, final TimelineItem paramTimelineItem, final UserEventAction.TimelineItemInserted paramTimelineItemInserted, final UserAction paramUserAction)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineHelper.this.insertTimelineItem(paramContext, paramTimelineItem, paramTimelineItemInserted, paramUserAction);
      }
    });
  }

  public TimelineItem queryTimelineItem(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject1 = null;
    try
    {
      Cursor localCursor = paramContentResolver.query(paramUri, null, null, null, null);
      localObject1 = localCursor;
      if (localObject1 == null)
      {
        if (localObject1 != null)
          localObject1.close();
        localObject3 = null;
        return localObject3;
      }
      boolean bool = localObject1.moveToFirst();
      if (!bool)
        return null;
      TimelineItem localTimelineItem = fromCursor(localObject1);
      Object localObject3 = localTimelineItem;
      return localObject3;
    }
    finally
    {
      if (localObject1 != null)
        localObject1.close();
    }
  }

  public TimelineItem queryTimelineItem(ContentResolver paramContentResolver, String paramString)
  {
    Assert.assertNotUiThread();
    Cursor localCursor = null;
    try
    {
      localCursor = paramContentResolver.query(TimelineProvider.TIMELINE_URI, null, "_id=?", new String[] { paramString }, null);
      boolean bool = localCursor.moveToNext();
      Object localObject2 = null;
      if (bool)
      {
        TimelineItem localTimelineItem = fromCursor(localCursor);
        localObject2 = localTimelineItem;
      }
      return localObject2;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public TimelineItem updateTimelineItem(Context paramContext, TimelineItem paramTimelineItem, UserAction paramUserAction, boolean paramBoolean1, boolean paramBoolean2)
  {
    Log.v(TAG, "updateTimelineItem " + paramTimelineItem.getId() + " with markAsSynced = " + paramBoolean1 + ", with number of attachments = " + paramTimelineItem.getAttachmentCount());
    Assert.assertNotUiThread();
    if (!Thread.holdsLock(UPDATE_LOCK))
      throw new IllegalStateException("Cannot update without holding the UPDATE_LOCK");
    ContentResolver localContentResolver = paramContext.getContentResolver();
    TimelineItem localTimelineItem1 = queryTimelineItem(paramContext.getContentResolver(), paramTimelineItem.getId());
    if ((localTimelineItem1 != null) && (localTimelineItem1.getIsDeleted()) && (!paramTimelineItem.getIsDeleted()))
    {
      Log.w(TAG, "Cannot un-delete item: " + paramTimelineItem.getId() + "; update has been canceled.");
      return null;
    }
    HashSet localHashSet = new HashSet();
    if (hasBundleId(localTimelineItem1))
      localHashSet.add(localTimelineItem1.getBundleId());
    TimelineItem.Builder localBuilder = TimelineItem.newBuilder(paramTimelineItem);
    if (paramBoolean1);
    TimelineItem localTimelineItem2;
    TimelineProvider localTimelineProvider;
    for (TimelineItem.SyncStatus localSyncStatus = TimelineItem.SyncStatus.SYNCED; ; localSyncStatus = TimelineItem.SyncStatus.NOT_SYNCED)
    {
      localTimelineItem2 = localBuilder.setCloudSyncStatus(localSyncStatus).build();
      localTimelineProvider = (TimelineProvider)localContentResolver.acquireContentProviderClient("com.google.glass.timeline").getLocalContentProvider();
      startSuppressNotifyChange(localTimelineProvider);
      try
      {
        localContentResolver.update(Uri.withAppendedPath(TimelineProvider.TIMELINE_URI, localTimelineItem2.getId()), toContentValues(localTimelineItem2), null, null);
        if (paramUserAction != null)
          localContentResolver.insert(TimelineProvider.getPendingActionUri(localTimelineItem2.getId()), toContentValues(paramUserAction, localTimelineItem2.getId()));
        if (hasBundleId(localTimelineItem2))
          localHashSet.add(localTimelineItem2.getBundleId());
        Iterator localIterator = localHashSet.iterator();
        while (localIterator.hasNext())
          updateBundle(localContentResolver, (String)localIterator.next(), paramBoolean2);
      }
      finally
      {
        stopSuppressNotifyChange(localTimelineProvider);
      }
    }
    stopSuppressNotifyChange(localTimelineProvider);
    if ((!paramBoolean1) && (localTimelineItem2.getCloudSyncProtocol() != TimelineItem.SyncProtocol.NEVER))
      SyncHelper.triggerSync(paramContext, "com.google.glass.timeline");
    return localTimelineItem2;
  }

  public static class GetPendingActionsResponse
  {
    public final List<UserAction> actions;
    public final long maxRowId;

    private GetPendingActionsResponse(List<UserAction> paramList, long paramLong)
    {
      this.actions = paramList;
      this.maxRowId = paramLong;
    }
  }

  public static abstract class Update
  {
    private TimelineItem updatedItem;

    private void execute()
    {
      this.updatedItem = onExecute();
    }

    public TimelineItem getItem()
    {
      return this.updatedItem;
    }

    public abstract TimelineItem onExecute();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineHelper
 * JD-Core Version:    0.6.2
 */