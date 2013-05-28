package com.google.glass.home.sync;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.glass.entity.EntityHelper;
import com.google.glass.entity.EntityProvider;
import com.google.glass.home.HomeApplication;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponseHandler;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.EntitySyncRequest;
import com.google.googlex.glass.common.proto.EntitySyncRequest.Builder;
import com.google.googlex.glass.common.proto.EntitySyncResponse;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class EntitySyncHandler extends BackOffSyncHandler
  implements ProtoResponseHandler<EntitySyncResponse>
{
  private static final String TAG = EntitySyncHandler.class.getSimpleName();
  private static final String WHERE = "(_id=? AND source=?)";
  private HomeApplication application;

  public EntitySyncHandler(HomeApplication paramHomeApplication)
  {
    this.application = paramHomeApplication;
  }

  @VisibleForTesting
  static UniqueEntityId getUniqueId(Entity paramEntity)
  {
    return new UniqueEntityId(paramEntity.getSource(), paramEntity.getId());
  }

  private ContentProviderOperation newDeleteOperation(Entity paramEntity)
  {
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newDelete(EntityProvider.URI);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramEntity.getId();
    arrayOfString[1] = paramEntity.getSource();
    return localBuilder.withSelection("(_id=? AND source=?)", arrayOfString).build();
  }

  private ContentProviderOperation newInsertOperation(Entity paramEntity)
  {
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(EntityProvider.URI);
    Iterator localIterator = EntityHelper.toContentValues(paramEntity).valueSet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.withValue((String)localEntry.getKey(), localEntry.getValue());
    }
    return localBuilder.build();
  }

  private ContentProviderOperation newUpdateOperation(Entity paramEntity)
  {
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newUpdate(EntityProvider.URI);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramEntity.getId();
    arrayOfString[1] = paramEntity.getSource();
    ContentProviderOperation.Builder localBuilder2 = localBuilder1.withSelection("(_id=? AND source=?)", arrayOfString);
    Iterator localIterator = EntityHelper.toContentValues(paramEntity).valueSet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder2.withValue((String)localEntry.getKey(), localEntry.getValue());
    }
    return localBuilder2.build();
  }

  private void updateEntityProvider(List<Entity> paramList)
  {
    HashMap localHashMap1 = Maps.newHashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Entity localEntity2 = (Entity)localIterator.next();
      localHashMap1.put(getUniqueId(localEntity2), localEntity2);
    }
    HashMap localHashMap2 = Maps.newHashMap();
    ContentResolver localContentResolver = this.application.getContentResolver();
    Cursor localCursor = null;
    try
    {
      localCursor = localContentResolver.query(EntityProvider.URI, null, null, null, null);
      while (localCursor.moveToNext())
      {
        Entity localEntity1 = EntityHelper.fromCursor(localCursor);
        localHashMap2.put(getUniqueId(localEntity1), localEntity1);
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
    if (localCursor != null)
      localCursor.close();
    if (updateEntityProviderHelper(localHashMap1, localHashMap2, localContentResolver))
    {
      EntityHelper.getSharedInstance().broadcastSyncChanged(this.application);
      return;
    }
    Log.d(TAG, "No changes made to entities, not sending broadcast.");
  }

  public void fetchEntities()
  {
    EntitySyncRequest.Builder localBuilder = EntitySyncRequest.newBuilder();
    if (Labs.isEnabled(Labs.Feature.AUTO_SHARE_TARGETS))
      localBuilder.setAllShareTargets(true);
    EntitySyncRequest localEntitySyncRequest = localBuilder.build();
    ProtoRequestDispatcher localProtoRequestDispatcher = this.application.getRequestDispatcher();
    if (localProtoRequestDispatcher != null)
      localProtoRequestDispatcher.blockingDispatch(ServerConstants.Action.ENTITY_SYNC, localEntitySyncRequest, EntitySyncResponse.PARSER, this);
  }

  protected String getTag()
  {
    return TAG;
  }

  public void onCancel()
  {
    Log.w(TAG, "Entity sync cancelled");
  }

  public void onError(ResponseWrapper.ErrorCode paramErrorCode)
  {
    Log.w(TAG, "Entity sync error: " + paramErrorCode);
    handleFail();
  }

  public void onSuccess(EntitySyncResponse paramEntitySyncResponse)
  {
    Log.v(TAG, "Received " + paramEntitySyncResponse.getEntitiesCount() + " entities");
    updateEntityProvider(paramEntitySyncResponse.getEntitiesList());
    handleSuccess();
  }

  @VisibleForTesting
  boolean updateEntityProviderHelper(Map<UniqueEntityId, Entity> paramMap1, Map<UniqueEntityId, Entity> paramMap2, ContentResolver paramContentResolver)
  {
    ArrayList localArrayList = Lists.newArrayList();
    int i = 0;
    int j = 0;
    Iterator localIterator1 = paramMap1.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Entity localEntity1 = (Entity)localEntry.getValue();
      Entity localEntity2 = (Entity)paramMap2.get(localEntry.getKey());
      if (localEntity2 == null)
      {
        localArrayList.add(newInsertOperation(localEntity1));
        i++;
      }
      else
      {
        if (!localEntity2.equals(localEntity1))
        {
          localArrayList.add(newUpdateOperation(localEntity1));
          j++;
        }
        paramMap2.remove(localEntry.getKey());
      }
    }
    Iterator localIterator2 = paramMap2.values().iterator();
    while (localIterator2.hasNext())
      localArrayList.add(newDeleteOperation((Entity)localIterator2.next()));
    if (!localArrayList.isEmpty())
      try
      {
        paramContentResolver.applyBatch("com.google.glass.entity", localArrayList);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Updating entities: ");
        localStringBuilder.append(i).append(" inserts, ");
        localStringBuilder.append(j).append(" updates, ");
        localStringBuilder.append(paramMap2.size()).append(" deletes.");
        Log.d(TAG, localStringBuilder.toString());
        return true;
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        while (true)
          Log.w(TAG, "Batch db update failed.", localOperationApplicationException);
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          Log.e(TAG, "Unexpected RemoteException, batch db update failed.", localRemoteException);
      }
    return false;
  }

  @VisibleForTesting
  static class UniqueEntityId extends Pair<String, String>
  {
    UniqueEntityId(String paramString1, String paramString2)
    {
      super(paramString2);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.EntitySyncHandler
 * JD-Core Version:    0.6.2
 */