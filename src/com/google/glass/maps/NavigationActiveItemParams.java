package com.google.glass.maps;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

public final class NavigationActiveItemParams
{
  private static final String KEY_DESTINATION_NAME = "destination_name";
  private static final String KEY_ICON_URI = "icon_uri";
  private static final String KEY_MESSAGE = "message";
  private static final String KEY_TIME_REMAINING = "time_remaining";
  private final Bundle bundle;

  public NavigationActiveItemParams()
  {
    this(new Bundle());
  }

  private NavigationActiveItemParams(Bundle paramBundle)
  {
    this.bundle = paramBundle;
  }

  private boolean areEqual(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static NavigationActiveItemParams fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null);
    while (true)
    {
      return new NavigationActiveItemParams(paramBundle);
      paramBundle = new Bundle();
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    NavigationActiveItemParams localNavigationActiveItemParams;
    String str;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return true;
        if (!(paramObject instanceof NavigationActiveItemParams))
          return false;
        localNavigationActiveItemParams = (NavigationActiveItemParams)paramObject;
        if (!localNavigationActiveItemParams.bundle.keySet().equals(this.bundle.keySet()))
          return false;
        localIterator = this.bundle.keySet().iterator();
      }
      str = (String)localIterator.next();
    }
    while (areEqual(localNavigationActiveItemParams.bundle.get(str), this.bundle.get(str)));
    return false;
  }

  public String getDestinationName()
  {
    return this.bundle.getString("destination_name");
  }

  public String getIconUri()
  {
    return this.bundle.getString("icon_uri");
  }

  public String getMessage()
  {
    return this.bundle.getString("message");
  }

  public String getTimeRemaining()
  {
    return this.bundle.getString("time_remaining");
  }

  public int hashCode()
  {
    int i = 1;
    Iterator localIterator = this.bundle.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = this.bundle.get(str);
      int j = 31 * (i * 31 + str.hashCode());
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        i = j + k;
        break;
      }
    }
    return i;
  }

  public void setDestinationName(String paramString)
  {
    this.bundle.putString("destination_name", paramString);
  }

  public void setIconUri(String paramString)
  {
    this.bundle.putString("icon_uri", paramString);
  }

  public void setMessage(String paramString)
  {
    this.bundle.putString("message", paramString);
  }

  public void setTimeRemaining(String paramString)
  {
    this.bundle.putString("time_remaining", paramString);
  }

  public Bundle toBundle()
  {
    return this.bundle;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.NavigationActiveItemParams
 * JD-Core Version:    0.6.2
 */