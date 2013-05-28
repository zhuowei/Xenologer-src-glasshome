package com.google.glass.home.timeline.active;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.maps.NavigationActiveItemParams;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.active.ActiveItemView;

public class NavigationItemView extends ActiveItemView
{
  private static final String TAG = NavigationItemView.class.getSimpleName();
  private TextView destinationNameView;
  private IconLoader iconLoader;
  private ImageView iconView;
  private TextView messageView;
  private TextView timeRemainingView;

  public NavigationItemView(Context paramContext)
  {
    super(paramContext, OngoingActivityManager.ActivityType.NAVIGATION);
  }

  private void setTextOrHide(TextView paramTextView, String paramString)
  {
    if (paramString != null)
    {
      paramTextView.setVisibility(0);
      paramTextView.setText(paramString);
      return;
    }
    paramTextView.setVisibility(8);
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    NavigationLauncher.bringNavigationToForeground(getContext());
    return true;
  }

  public void onLoad()
  {
    onParametersChanged(getParameters());
  }

  protected void onParametersChanged(Bundle paramBundle)
  {
    NavigationActiveItemParams localNavigationActiveItemParams = NavigationActiveItemParams.fromBundle(paramBundle);
    if (this.iconLoader != null)
      this.iconLoader.cancel(true);
    if (localNavigationActiveItemParams.getIconUri() != null)
    {
      this.iconLoader = new IconLoader(this.iconView);
      IconLoader localIconLoader = this.iconLoader;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = localNavigationActiveItemParams.getIconUri();
      localIconLoader.execute(arrayOfString);
    }
    while (true)
    {
      setTextOrHide(this.messageView, localNavigationActiveItemParams.getMessage());
      setTextOrHide(this.destinationNameView, localNavigationActiveItemParams.getDestinationName());
      setTextOrHide(this.timeRemainingView, localNavigationActiveItemParams.getTimeRemaining());
      return;
      this.iconView.setVisibility(8);
    }
  }

  protected void onViewInflated()
  {
    this.iconView = ((ImageView)findViewById(R.id.turn_icon));
    this.messageView = ((TextView)findViewById(R.id.message));
    this.destinationNameView = ((TextView)findViewById(R.id.destination_name));
    this.timeRemainingView = ((TextView)findViewById(R.id.time_remaining));
  }

  protected int provideContentView()
  {
    return R.layout.navigation_item;
  }

  private static class IconLoader extends AsyncTask<String, Void, Bitmap>
  {
    ImageView target;

    IconLoader(ImageView paramImageView)
    {
      this.target = paramImageView;
    }

    // ERROR //
    protected Bitmap doInBackground(String[] paramArrayOfString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_0
      //   3: getfield 14	com/google/glass/home/timeline/active/NavigationItemView$IconLoader:target	Landroid/widget/ImageView;
      //   6: invokevirtual 24	android/widget/ImageView:getContext	()Landroid/content/Context;
      //   9: invokevirtual 30	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   12: aload_1
      //   13: iconst_0
      //   14: aaload
      //   15: invokestatic 36	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   18: invokevirtual 42	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
      //   21: astore_2
      //   22: aload_2
      //   23: invokestatic 48	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
      //   26: astore 9
      //   28: aload 9
      //   30: astore 7
      //   32: aload_2
      //   33: ifnull +7 -> 40
      //   36: aload_2
      //   37: invokevirtual 53	java/io/InputStream:close	()V
      //   40: aload 7
      //   42: areturn
      //   43: astore 5
      //   45: invokestatic 59	com/google/glass/home/timeline/active/NavigationItemView:access$000	()Ljava/lang/String;
      //   48: ldc 61
      //   50: aload 5
      //   52: invokestatic 67	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   55: pop
      //   56: aconst_null
      //   57: astore 7
      //   59: aload_2
      //   60: ifnull -20 -> 40
      //   63: aload_2
      //   64: invokevirtual 53	java/io/InputStream:close	()V
      //   67: aconst_null
      //   68: areturn
      //   69: astore 8
      //   71: aconst_null
      //   72: areturn
      //   73: astore_3
      //   74: aload_2
      //   75: ifnull +7 -> 82
      //   78: aload_2
      //   79: invokevirtual 53	java/io/InputStream:close	()V
      //   82: aload_3
      //   83: athrow
      //   84: astore 10
      //   86: aload 7
      //   88: areturn
      //   89: astore 4
      //   91: goto -9 -> 82
      //
      // Exception table:
      //   from	to	target	type
      //   2	28	43	java/io/IOException
      //   63	67	69	java/io/IOException
      //   2	28	73	finally
      //   45	56	73	finally
      //   36	40	84	java/io/IOException
      //   78	82	89	java/io/IOException
    }

    protected void onPostExecute(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        this.target.setVisibility(0);
        this.target.setImageBitmap(paramBitmap);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.NavigationItemView
 * JD-Core Version:    0.6.2
 */