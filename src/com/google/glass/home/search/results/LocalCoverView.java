package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.maps.MapHelper;
import com.google.glass.maps.MapHelper.SimpleOnMapRenderedListener;
import com.google.glass.proto.LatLng;
import com.google.glass.proto.LatLng.Builder;
import com.google.glass.proto.MapRenderRequest;
import com.google.glass.proto.MapRenderRequest.Builder;
import com.google.glass.proto.Marker;
import com.google.glass.proto.Marker.Builder;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.majel.proto.EcoutezStructuredResponse.EcoutezLocalResult;
import com.google.majel.proto.EcoutezStructuredResponse.EcoutezLocalResults;
import java.util.ArrayList;
import java.util.List;

public class LocalCoverView extends HorizontalScrollLinearLayout
{
  private ImageView mapImageView;
  private LinearLayout queryCover;
  private LinearLayout queryOverlay;
  private DynamicSizeTextView recognitionResult;

  public LocalCoverView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public LocalCoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public LocalCoverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private static void fadeIn(View paramView)
  {
    paramView.setAlpha(0.0F);
    paramView.animate().setStartDelay(0L).setDuration(400).alpha(1.0F);
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_local_cover, this);
    this.mapImageView = ((ImageView)findViewById(R.id.map));
    this.queryCover = ((LinearLayout)findViewById(R.id.query_cover));
    this.queryOverlay = ((LinearLayout)findViewById(R.id.query_overlay));
    this.recognitionResult = ((DynamicSizeTextView)findViewById(R.id.recognition_result));
  }

  public void setLocalResults(EcoutezStructuredResponse.EcoutezLocalResults paramEcoutezLocalResults)
  {
    ArrayList localArrayList = new ArrayList(paramEcoutezLocalResults.getLocalResultCount());
    for (int i = 0; i < paramEcoutezLocalResults.getLocalResultCount(); i++)
    {
      EcoutezStructuredResponse.EcoutezLocalResult localEcoutezLocalResult = paramEcoutezLocalResults.getLocalResult(i);
      localArrayList.add(Marker.newBuilder().setLocation(LatLng.newBuilder().setLat(localEcoutezLocalResult.getLatDegrees()).setLng(localEcoutezLocalResult.getLngDegrees())).build());
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    MapHelper.getInstance(getContext()).renderMap(MapRenderRequest.newBuilder().setWidth(localDisplayMetrics.widthPixels).setHeight(localDisplayMetrics.heightPixels).addAllMarker(localArrayList).build(), new MapHelper.SimpleOnMapRenderedListener()
    {
      public void onMapRendered(Bitmap paramAnonymousBitmap)
      {
        LocalCoverView.this.mapImageView.setImageBitmap(paramAnonymousBitmap);
        LocalCoverView.fadeIn(LocalCoverView.this.mapImageView);
      }
    });
  }

  public void setQuery(String paramString)
  {
    this.queryCover.setVisibility(0);
    this.queryOverlay.setVisibility(0);
    this.recognitionResult.setText(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.LocalCoverView
 * JD-Core Version:    0.6.2
 */