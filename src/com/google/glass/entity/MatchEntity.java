package com.google.glass.entity;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import java.util.Iterator;
import java.util.List;

public abstract class MatchEntity extends AsyncTask<Void, Void, Entity>
{
  private static final String TAG = MatchEntity.class.getSimpleName();
  private final EntityHelper entityHelper;
  private Entity.Builder targetBuilder = Entity.newBuilder();

  public MatchEntity()
  {
    this(EntityHelper.getSharedInstance());
  }

  @VisibleForTesting
  protected MatchEntity(EntityHelper paramEntityHelper)
  {
    this.entityHelper = paramEntityHelper;
  }

  public MatchEntity addPhoneNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      Log.w(TAG, "Phone number was null or empty, not setting.");
      return this;
    }
    if (!this.targetBuilder.hasPhoneNumber())
    {
      this.targetBuilder.setPhoneNumber(paramString);
      return this;
    }
    this.targetBuilder.addSecondaryPhoneNumber(paramString);
    return this;
  }

  public void byPartialEntity(Entity paramEntity)
  {
    this.targetBuilder = Entity.newBuilder(paramEntity);
    execute(new Void[0]);
  }

  protected Entity doInBackground(Void[] paramArrayOfVoid)
  {
    Entity localEntity1 = this.targetBuilder.build();
    if (localEntity1.hasPhoneNumber())
    {
      Log.d(TAG, "Searching for entity via phone number.");
      Entity localEntity4 = this.entityHelper.getFirstEntityForPhoneNumber(localEntity1.getPhoneNumber());
      if (localEntity4 != null)
      {
        Log.d(TAG, "Entity found via phone number.");
        return localEntity4;
      }
      Log.d(TAG, "Entity not found via phone number.");
      if (localEntity1.getSecondaryPhoneNumberCount() > 0)
      {
        Log.d(TAG, "Secondary phone numbers found, searching for each of those.");
        Iterator localIterator = localEntity1.getSecondaryPhoneNumberList().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          Entity localEntity5 = this.entityHelper.getFirstEntityForPhoneNumber(str);
          if (localEntity5 != null)
          {
            Log.d(TAG, "Entity found via secondary phone number.");
            return localEntity5;
          }
        }
        Log.d(TAG, "Entity found via secondary phone number.");
      }
    }
    if (localEntity1.hasId())
    {
      Log.d(TAG, "Searching for entity via id.");
      Entity localEntity3 = this.entityHelper.getFirstEntityForEmail(localEntity1.getId());
      if (localEntity3 != null)
      {
        Log.d(TAG, "Entity found via id.");
        return localEntity3;
      }
      Log.d(TAG, "Entity not found via id.");
    }
    if (localEntity1.hasEmail())
    {
      Log.d(TAG, "Searching for entity via email address.");
      Entity localEntity2 = this.entityHelper.getFirstEntityForEmail(localEntity1.getEmail());
      if (localEntity2 != null)
      {
        Log.d(TAG, "Entity found via email address.");
        return localEntity2;
      }
      Log.d(TAG, "Entity not found via email address.");
    }
    return null;
  }

  public abstract void onEntityMatched(Entity paramEntity);

  public abstract void onNoMatchFound();

  protected void onPostExecute(Entity paramEntity)
  {
    if (paramEntity == null)
    {
      Log.d(TAG, "No entity found, sending to onNoMatchFound().");
      onNoMatchFound();
      return;
    }
    Log.d(TAG, "Entity found, sending to onEntityMatched().");
    onEntityMatched(paramEntity);
  }

  public MatchEntity setEmailAddress(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      Log.w(TAG, "Email address was null or empty, not setting.");
      return this;
    }
    this.targetBuilder.setEmail(paramString);
    return this;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.MatchEntity
 * JD-Core Version:    0.6.2
 */