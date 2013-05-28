package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import com.google.common.base.Joiner;
import com.google.glass.common.R.style;
import com.google.glass.home.R.dimen;
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
import com.google.glass.util.DateHelper;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.majel.proto.EcoutezStructuredResponse.Hours;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class LocalSingleAnswerView extends HorizontalScrollLinearLayout
{
  public static final double SPAN_NOT_SET = -1.0D;
  public static final float ZOOM_NOT_SET = -1.0F;
  private DynamicSizeTextView details;
  private ImageView mapImageView;
  private MapRenderRequest renderRequest;

  public LocalSingleAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public LocalSingleAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public LocalSingleAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private static void fadeIn(View paramView)
  {
    paramView.setAlpha(0.0F);
    paramView.animate().setStartDelay(0L).setDuration(400).alpha(1.0F);
  }

  private void handleAddingAMap()
  {
    if (this.renderRequest != null)
    {
      MapHelper.getInstance(getContext()).renderMap(this.renderRequest, new MapHelper.SimpleOnMapRenderedListener()
      {
        public void onMapRendered(Bitmap paramAnonymousBitmap)
        {
          LocalSingleAnswerView.this.mapImageView.setImageBitmap(paramAnonymousBitmap);
          LocalSingleAnswerView.fadeIn(LocalSingleAnswerView.this.mapImageView);
        }
      });
      this.renderRequest = null;
    }
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_local_single_answer, this);
    this.mapImageView = ((ImageView)findViewById(R.id.map));
    this.details = ((DynamicSizeTextView)findViewById(R.id.details));
  }

  private boolean isOpenNow(EcoutezStructuredResponse.Hours paramHours)
  {
    Date localDate = new Date();
    Iterator localIterator = paramHours.getIntervalList().iterator();
    while (localIterator.hasNext())
      if (DateHelper.isTimeInInterval(localDate, (String)localIterator.next(), "–"))
        return true;
    return false;
  }

  public void onLoad()
  {
    super.onLoad();
    handleAddingAMap();
  }

  public void setLocalResult(String paramString1, String paramString2, EcoutezStructuredResponse.Hours paramHours, double paramDouble1, double paramDouble2, float paramFloat, double paramDouble3, double paramDouble4)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString1);
    if (!TextUtils.isEmpty(paramString2))
    {
      localSpannableStringBuilder.append("\n");
      localSpannableStringBuilder.append(paramString2);
    }
    SpannableString localSpannableString;
    if ((paramHours != null) && (paramHours.getIntervalCount() > 0))
    {
      String str = Joiner.on(", ").skipNulls().join(paramHours.getIntervalList());
      boolean bool = isOpenNow(paramHours);
      localSpannableString = new SpannableString(MajelProcessor.formatOpenHours(str));
      if (!bool)
        break label279;
    }
    label279: for (int i = R.style.OverlayGreenText; ; i = R.style.OverlayRedText)
    {
      localSpannableString.setSpan(new TextAppearanceSpan(getContext(), i), 0, localSpannableString.length(), 17);
      localSpannableStringBuilder.append("\n");
      localSpannableStringBuilder.append(localSpannableString);
      this.details.setText(localSpannableStringBuilder);
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      MapRenderRequest.Builder localBuilder = MapRenderRequest.newBuilder().setWidth(getResources().getDimensionPixelSize(R.dimen.lhs_width)).setHeight(localDisplayMetrics.heightPixels).setCenter(LatLng.newBuilder().setLat(paramDouble1).setLng(paramDouble2)).addMarker(Marker.newBuilder().setLocation(LatLng.newBuilder().setLat(paramDouble1).setLng(paramDouble2)));
      if (paramFloat != -1.0F)
        localBuilder.setZoom(paramFloat);
      if (paramDouble3 != -1.0D)
        localBuilder.setLatSpan(paramDouble3);
      if (paramDouble4 != -1.0D)
        localBuilder.setLngSpan(paramDouble4);
      this.renderRequest = localBuilder.build();
      handleAddingAMap();
      return;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.LocalSingleAnswerView
 * JD-Core Version:    0.6.2
 */