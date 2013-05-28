package com.google.android.glass.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class VoiceTriggerManager
{
  private static final String ACTION_VOICE_TRIGGER = "com.google.android.glass.action.VOICE_TRIGGER";
  private static final String KEY_TRIGGER_TEXT = "com.google.android.glass.voice_trigger";
  private static final String TAG = "VoiceTriggers";
  private final Context mContext;

  public VoiceTriggerManager(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public List<Trigger> load()
  {
    Log.i("VoiceTriggers", "Loading voice triggers");
    ArrayList localArrayList = new ArrayList();
    PackageManager localPackageManager = this.mContext.getPackageManager();
    Iterator localIterator = localPackageManager.queryIntentActivities(new Intent("com.google.android.glass.action.VOICE_TRIGGER"), 128).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      try
      {
        Trigger localTrigger = new Trigger(localPackageManager, localResolveInfo, null);
        localArrayList.add(localTrigger);
        Log.d("VoiceTriggers", " - " + localTrigger);
      }
      catch (TriggerBuildingException localTriggerBuildingException)
      {
        Log.e("VoiceTriggers", "Unable to build voice trigger for " + localResolveInfo, localTriggerBuildingException);
      }
    }
    return localArrayList;
  }

  public static enum Constraint
  {
    private final String mKey;

    static
    {
      CAMERA = new Constraint("CAMERA", 1, "camera");
      MICROPHONE = new Constraint("MICROPHONE", 2, "microphone");
      Constraint[] arrayOfConstraint = new Constraint[3];
      arrayOfConstraint[0] = NETWORK;
      arrayOfConstraint[1] = CAMERA;
      arrayOfConstraint[2] = MICROPHONE;
    }

    private Constraint(String paramString)
    {
      this.mKey = paramString;
    }

    String getKey()
    {
      return "com.google.android.glass.require_" + this.mKey;
    }
  }

  public static final class Trigger
  {
    private final ComponentName mComponent;
    private final Set<VoiceTriggerManager.Constraint> mConstraints;
    private final String mKeyword;

    private Trigger(PackageManager paramPackageManager, ResolveInfo paramResolveInfo)
      throws VoiceTriggerManager.TriggerBuildingException
    {
      this.mComponent = new ComponentName(paramResolveInfo.activityInfo.packageName, paramResolveInfo.activityInfo.name);
      Bundle localBundle = paramResolveInfo.activityInfo.metaData;
      if ((localBundle == null) || (!localBundle.containsKey("com.google.android.glass.voice_trigger")))
        throw new VoiceTriggerManager.TriggerBuildingException("No text defined for voice trigger.");
      int i = localBundle.getInt("com.google.android.glass.voice_trigger");
      try
      {
        this.mKeyword = paramPackageManager.getResourcesForApplication(paramResolveInfo.activityInfo.packageName).getString(i);
        this.mConstraints = new HashSet();
        for (VoiceTriggerManager.Constraint localConstraint : VoiceTriggerManager.Constraint.values())
          if (localBundle.getBoolean(localConstraint.getKey(), false))
            this.mConstraints.add(localConstraint);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new VoiceTriggerManager.TriggerBuildingException(localNameNotFoundException);
      }
    }

    public ComponentName getComponent()
    {
      return this.mComponent;
    }

    public String getKeyword()
    {
      return this.mKeyword;
    }

    public boolean hasConstraint(VoiceTriggerManager.Constraint paramConstraint)
    {
      return this.mConstraints.contains(paramConstraint);
    }

    public String toString()
    {
      return this.mComponent.toString();
    }
  }

  private static final class TriggerBuildingException extends Exception
  {
    TriggerBuildingException(String paramString)
    {
      super();
    }

    public TriggerBuildingException(Throwable paramThrowable)
    {
      super();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.app.VoiceTriggerManager
 * JD-Core Version:    0.6.2
 */