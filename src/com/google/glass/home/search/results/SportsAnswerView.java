package com.google.glass.home.search.results;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.ImageProxyBitmapLoadingTask.SimpleImageProxyBitmapLoadingTask;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.majel.proto.EcoutezStructuredResponse.Logo;
import com.google.majel.proto.EcoutezStructuredResponse.Match;
import com.google.majel.proto.EcoutezStructuredResponse.Period;
import com.google.majel.proto.EcoutezStructuredResponse.SportsResult;

public class SportsAnswerView extends HorizontalScrollLinearLayout
{
  private static final String TAG = SportsAnswerView.class.getSimpleName();
  private ImageView leftLogo;
  private DynamicSizeTextView leftName;
  private TextView leftScore;
  private ImageView rightLogo;
  private DynamicSizeTextView rightName;
  private TextView rightScore;
  private TypophileTextView status;

  public SportsAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SportsAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public SportsAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private String formatPeriodNum(int paramInt)
  {
    if (paramInt == 1)
    {
      Context localContext4 = getContext();
      int m = R.string.voice_search_sports_first;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(paramInt);
      return localContext4.getString(m, arrayOfObject4);
    }
    if (paramInt == 2)
    {
      Context localContext3 = getContext();
      int k = R.string.voice_search_sports_second;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      return localContext3.getString(k, arrayOfObject3);
    }
    if (paramInt == 3)
    {
      Context localContext2 = getContext();
      int j = R.string.voice_search_sports_third;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      return localContext2.getString(j, arrayOfObject2);
    }
    Context localContext1 = getContext();
    int i = R.string.voice_search_sports_general_count;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    return localContext1.getString(i, arrayOfObject1);
  }

  private int getCurrentPeriodLabel(EcoutezStructuredResponse.SportsResult paramSportsResult, EcoutezStructuredResponse.Match paramMatch)
  {
    int i = -1 + paramMatch.getCurrentPeriodNum();
    if ((i >= 0) && (i < paramMatch.getPeriodCount()));
    switch (paramMatch.getPeriod(i).getType())
    {
    default:
      return getRegularPeriodLabel(paramSportsResult);
    case 0:
      return getRegularPeriodLabel(paramSportsResult);
    case 1:
      return R.string.voice_search_sports_overtime;
    case 2:
      return R.string.voice_search_sports_shootouts;
    case 3:
    }
    return R.string.voice_search_sports_next_score_wins;
  }

  private int getRegularPeriodLabel(EcoutezStructuredResponse.SportsResult paramSportsResult)
  {
    switch (paramSportsResult.getSportType())
    {
    case 2:
    default:
      return R.string.voice_search_sports_current_period;
    case 1:
      return R.string.voice_search_sports_current_inning;
    case 3:
    case 5:
      return R.string.voice_search_sports_current_quarter;
    case 4:
    }
    return R.string.voice_search_sports_current_half;
  }

  private static int goneIfEmpty(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return 8;
    return 0;
  }

  private void init()
  {
    setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    setOrientation(1);
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_sports_answer, this);
    this.status = ((TypophileTextView)findViewById(R.id.status));
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(R.id.left_contestant);
    this.leftLogo = ((ImageView)localLinearLayout1.findViewById(R.id.logo));
    this.leftScore = ((TypophileTextView)localLinearLayout1.findViewById(R.id.score));
    this.leftName = ((DynamicSizeTextView)localLinearLayout1.findViewById(R.id.name));
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(R.id.right_contestant);
    this.rightLogo = ((ImageView)localLinearLayout2.findViewById(R.id.logo));
    this.rightScore = ((TypophileTextView)localLinearLayout2.findViewById(R.id.score));
    this.rightName = ((DynamicSizeTextView)localLinearLayout2.findViewById(R.id.name));
  }

  private void setStatus(EcoutezStructuredResponse.SportsResult paramSportsResult, EcoutezStructuredResponse.Match paramMatch)
  {
    Object localObject = "";
    switch (paramMatch.getStatus())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        this.status.setVisibility(8);
        return;
        if (!paramMatch.hasStartTimestamp())
          continue;
        localObject = DateFormat.format("h:mmaa(zz) MMM dd", 1000L * paramMatch.getStartTimestamp()).toString();
        continue;
        if ((!paramMatch.hasCurrentPeriodNum()) || (paramMatch.getCurrentPeriodNum() <= 0))
          continue;
        int i = -1 + paramMatch.getCurrentPeriodNum();
        if ((i < 0) || (i >= paramMatch.getPeriodCount()))
          continue;
        EcoutezStructuredResponse.Period localPeriod = paramMatch.getPeriod(i);
        try
        {
          boolean bool1 = localPeriod.hasMinutes();
          int k = 0;
          if (bool1)
            k = Integer.parseInt(localPeriod.getMinutes());
          boolean bool2 = localPeriod.hasSeconds();
          int m = 0;
          if (bool2)
            m = Integer.parseInt(localPeriod.getSeconds());
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(k);
          arrayOfObject2[1] = Integer.valueOf(m);
          String str = String.format("%d:%02d", arrayOfObject2);
          localObject = str;
          int j = getCurrentPeriodLabel(paramSportsResult, paramMatch);
          StringBuilder localStringBuilder = new StringBuilder().append((String)localObject).append(" ");
          Context localContext = getContext();
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = formatPeriodNum(localPeriod.getNumber());
          localObject = localContext.getString(j, arrayOfObject1);
        }
        catch (NumberFormatException localNumberFormatException)
        {
          while (true)
            Log.w(TAG, "Failed to parse elapsed time");
        }
      }
    this.status.setText((CharSequence)localObject);
  }

  public void setSportsResult(EcoutezStructuredResponse.SportsResult paramSportsResult, EcoutezStructuredResponse.Match paramMatch)
  {
    setStatus(paramSportsResult, paramMatch);
    this.leftName.setText(paramMatch.getFirstTeamShortName());
    if (paramMatch.hasFirstTeamLogo())
    {
      EcoutezStructuredResponse.Logo localLogo2 = paramMatch.getFirstTeamLogo();
      DeferredContentLoader.load(new ImageProxyBitmapLoadingTask.SimpleImageProxyBitmapLoadingTask(this.leftLogo, getContext(), localLogo2.getUrl(), localLogo2.getWidth(), localLogo2.getHeight(), ImageDownloadRequest.CropType.SMART_CROP));
    }
    this.leftScore.setText(paramMatch.getFirstScore());
    this.leftScore.setVisibility(goneIfEmpty(paramMatch.getFirstScore()));
    this.rightName.setText(paramMatch.getSecondTeamShortName());
    if (paramMatch.hasSecondTeamLogo())
    {
      EcoutezStructuredResponse.Logo localLogo1 = paramMatch.getSecondTeamLogo();
      DeferredContentLoader.load(new ImageProxyBitmapLoadingTask.SimpleImageProxyBitmapLoadingTask(this.rightLogo, getContext(), localLogo1.getUrl(), localLogo1.getWidth(), localLogo1.getHeight(), ImageDownloadRequest.CropType.SMART_CROP));
    }
    this.rightScore.setText(paramMatch.getSecondScore());
    this.rightScore.setVisibility(goneIfEmpty(paramMatch.getSecondScore()));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.SportsAnswerView
 * JD-Core Version:    0.6.2
 */