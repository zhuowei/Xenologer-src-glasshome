package com.google.glass.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.util.HashMap;

public class RobotoTypefaces
{
  private static final String ASSETS_DIRECTORY = "fonts/";
  private static final String FONTS_DIRECTORY = "/system/glass_fonts";
  private static final String TAG = RobotoTypefaces.class.getSimpleName();
  public static final int WEIGHT_BLACK = 5;
  public static final int WEIGHT_BOLD = 4;
  public static final int WEIGHT_LIGHT = 2;
  public static final int WEIGHT_MEDIUM = 3;
  public static final int WEIGHT_REGULAR = 0;
  public static final int WEIGHT_THIN = 1;
  private static final HashMap<TypefaceKey, Typeface> typefaces = new HashMap();

  private static String getTtfFileName(TypefaceKey paramTypefaceKey)
  {
    if ((paramTypefaceKey.condensed) && (paramTypefaceKey.weight != 0) && (paramTypefaceKey.weight != 4))
      throw new IllegalArgumentException("Only regular (default) or bold can be combined with condensed.");
    switch (paramTypefaceKey.weight)
    {
    default:
      if (paramTypefaceKey.condensed)
      {
        if (paramTypefaceKey.italic)
          return "Roboto-CondensedItalic.ttf";
        return "Roboto-Condensed.ttf";
      }
      if (paramTypefaceKey.italic)
        return "Roboto-Italic.ttf";
      return "Roboto-Regular.ttf";
    case 1:
      if (paramTypefaceKey.italic)
        return "Roboto-ThinItalic.ttf";
      return "Roboto-Thin.ttf";
    case 2:
      if (paramTypefaceKey.italic)
        return "Roboto-LightItalic.ttf";
      return "Roboto-Light.ttf";
    case 3:
      if (paramTypefaceKey.italic)
        return "Roboto-MediumItalic.ttf";
      return "Roboto-Medium.ttf";
    case 4:
      if (paramTypefaceKey.condensed)
      {
        if (paramTypefaceKey.italic)
          return "Roboto-BoldCondensedItalic.ttf";
        return "Roboto-BoldCondensed.ttf";
      }
      if (paramTypefaceKey.italic)
        return "Roboto-BoldItalic.ttf";
      return "Roboto-Bold.ttf";
    case 5:
    }
    if (paramTypefaceKey.italic)
      return "Roboto-BlackItalic.ttf";
    return "Roboto-Black.ttf";
  }

  public static Typeface getTypeface(Context paramContext, int paramInt)
  {
    return getTypeface(paramContext, paramInt, false, false);
  }

  public static Typeface getTypeface(Context paramContext, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    TypefaceKey localTypefaceKey = new TypefaceKey(paramInt, paramBoolean1, paramBoolean2);
    synchronized (typefaces)
    {
      Typeface localTypeface = (Typeface)typefaces.get(localTypefaceKey);
      if (localTypeface == null)
        localTypeface = loadTypeface(paramContext, localTypefaceKey);
      return localTypeface;
    }
  }

  private static Typeface loadTypeface(Context paramContext, TypefaceKey paramTypefaceKey)
  {
    long l = SystemClock.uptimeMillis();
    String str = getTtfFileName(paramTypefaceKey);
    File localFile = new File("/system/glass_fonts", str);
    Typeface localTypeface;
    if (localFile.exists())
    {
      Log.d(TAG, "Font was loaded from system.");
      localTypeface = Typeface.createFromFile(localFile);
    }
    while (localTypeface != null)
    {
      typefaces.put(paramTypefaceKey, localTypeface);
      Log.d(TAG, "Loaded " + localFile + " in " + (SystemClock.uptimeMillis() - l) + "ms");
      return localTypeface;
      localTypeface = null;
      if (paramContext != null)
      {
        Log.d(TAG, "Font wasn't in system, checking in assets.");
        localTypeface = Typeface.createFromAsset(paramContext.getAssets(), "fonts/" + str);
      }
    }
    Log.d(TAG, "Failed to load font, returning null.");
    return localTypeface;
  }

  private static final class TypefaceKey
  {
    final boolean condensed;
    final boolean italic;
    final int weight;

    TypefaceKey(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.weight = paramInt;
      this.italic = paramBoolean1;
      this.condensed = paramBoolean2;
    }

    public boolean equals(Object paramObject)
    {
      if (this == paramObject);
      TypefaceKey localTypefaceKey;
      do
      {
        return true;
        if (!(paramObject instanceof TypefaceKey))
          return false;
        localTypefaceKey = (TypefaceKey)paramObject;
      }
      while ((this.condensed == localTypefaceKey.condensed) && (this.italic == localTypefaceKey.italic) && (this.weight == localTypefaceKey.weight));
      return false;
    }

    public int hashCode()
    {
      int i = 1231;
      int j;
      int k;
      if (this.condensed)
      {
        j = i;
        k = 31 * (j + 31);
        if (!this.italic)
          break label47;
      }
      while (true)
      {
        return 31 * (k + i) + this.weight;
        j = 1237;
        break;
        label47: i = 1237;
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.RobotoTypefaces
 * JD-Core Version:    0.6.2
 */